package com.spring.ex.service;

import java.util.List;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.spring.ex.dao.YoutubeDAO;
import com.spring.ex.dto.YoutubeDTO;

import json.YoutubeVideoSearchResult;

@Service
public class YoutubeServiceImp implements YoutubeService {

	@Inject
	YoutubeDAO youtubeDAO;

	private String youtubeApiKey = "AIzaSyDFqBSxfLDX7azMUmORrhMjFQlBg-9cXcI";
	private String baseUrl = "https://www.googleapis.com/youtube/v3/search";
	private String channelId = "UC3hRpIQ4x5niJDwjajQSVPg";

	@Override
	public int getRemoteYoutubeVideosNum() {
		Integer remoteYoutubeVideoNum = null;
		String getVideosNumberByArgs = "?key=" + youtubeApiKey
				+ "&part=snippet&channelId=UC3hRpIQ4x5niJDwjajQSVPg&maxResults=";
		String getVideosNumber = baseUrl + getVideosNumberByArgs + "0";
		try {
			URL url = new URL(getVideosNumber);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();

			conn.setRequestMethod("GET");
			conn.connect();

			BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String inputLine;
			StringBuffer content = new StringBuffer();
			while ((inputLine = in.readLine()) != null) {
				content.append(inputLine);
			}
			in.close();

			String jsonString = content.toString();
			Pattern pattern = Pattern.compile("\"totalResults\": ([^d$,]+)");
			Matcher matcher = pattern.matcher(jsonString);
			if (matcher.find()) {
				remoteYoutubeVideoNum = Integer.parseInt(matcher.group(1));
			} else {
				remoteYoutubeVideoNum = 0;
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		;
		return remoteYoutubeVideoNum;
	}

	@Override
	public int getOriginYoutubeVideosNum() {
		return youtubeDAO.youtubeListNum();
	}

	@Override
	public void getRemoteAndSaveYoutubeList(int videoNum) {
		ObjectMapper mapper = new ObjectMapper().configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		String getRemoteVideos = baseUrl + "?key=" + youtubeApiKey + "&channelId=" + channelId +  "&order=date&part=snippet&maxResults=50&type=video&videoEmbeddable=true";
		String nextPageToken = "";
		String publishedAt = "";
		System.out.println(getRemoteVideos);			
		try {
			do {
				String getRemoteVidoesByPublishedAt = getRemoteVideos + "&publishedBefore=" + publishedAt;
				URL url = new URL(nextPageToken == "" ? getRemoteVideos : getRemoteVidoesByPublishedAt);
				YoutubeVideoSearchResult videoResult = mapper.readValue(url, YoutubeVideoSearchResult.class);
				nextPageToken = videoResult.getNextPageToken();
				List<YoutubeVideoSearchResult.VideoItem> videoItems = videoResult.getItems();
				
				for(YoutubeVideoSearchResult.VideoItem videoItem : videoItems) {
					YoutubeVideoSearchResult.VideoItem.Id id = videoItem.getId();
					YoutubeVideoSearchResult.VideoItem.Snippet snippet = videoItem.getSnippet();
					
					HashMap<String ,String> hashMap = new HashMap<String, String>();
					hashMap.put("title", snippet.getTitle());
					
					String videoUrl = id.getVideoId();
					if(videoUrl == null) continue;
					
					hashMap.put("videoUrl", id.getVideoId());
					hashMap.put("thumbnailUrl", snippet.getThumnails().getHigh().getUrl());
					hashMap.put("description", snippet.getDescription());
							
					publishedAt = snippet.getPublishedAt();
					String parsedPublishedAt = ZonedDateTime.parse(publishedAt)
							.format(DateTimeFormatter
							.ofPattern("yyyy-MM-dd hh:mm:ss"));
					hashMap.put("publishedAt", parsedPublishedAt);
					youtubeDAO.insertYoutubeList(hashMap);
				}
				
			} while(nextPageToken != null);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
		
	}

	@Override
	public JSONArray getYoutubeList(Integer start, Integer bound) {
		JSONArray jsonArray = new JSONArray();
		List<YoutubeDTO> youtubeList = youtubeDAO.youtubeList(start, bound);

		for (YoutubeDTO youtubeInfo : youtubeList) {
			HashMap<String, String> saveYoutubeInfo = new HashMap<String, String>();

			saveYoutubeInfo.put("title", youtubeInfo.getTitle());
			saveYoutubeInfo.put("videoUrl", youtubeInfo.getVideoUrl());
			saveYoutubeInfo.put("thumbnailUrl", youtubeInfo.getThumbnailUrl());
			saveYoutubeInfo.put("description", youtubeInfo.getDescription());
			saveYoutubeInfo.put("publishedAt", youtubeInfo.getPublishedAt());
			jsonArray.add(saveYoutubeInfo);
		}

		return jsonArray;
	}
}
