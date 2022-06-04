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
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
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

	public String getLocalDateTimeToUTCString(String localDateTime) {
		DateTimeFormatter formatter = DateTimeFormatter
				.ofPattern("" + "[yyyy-MM-dd HH:mm:ss.S]" + "[yyyy-MM-dd HH:mm:ss]");

		return LocalDateTime.parse(localDateTime, formatter).atOffset(ZoneOffset.UTC)
				.format(DateTimeFormatter.ofPattern("yyyy-MM-dd'T'hh:mm:ss'Z'")).toString();
	}

	public String getUTCToLocalDateTimeString(String utc) {
		return ZonedDateTime.parse(utc, DateTimeFormatter.ISO_DATE_TIME).toLocalDateTime()
				.format(DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss")).toString();
	}

	@Override
	public void saveRemoteYoutebeList() {
		ObjectMapper mapper = new ObjectMapper().configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		String remoteGetVideosUrl = baseUrl + "?key=" + youtubeApiKey + "&channelId=" + channelId + "&order=date"
				+ "&part=snippet" + "&maxResults=50" + "&type=video" + "&videoEmbeddable=true";
		String publishedAtBefore = null;
		String publishedAtAfter = null;
		String publishedAt = null;
		String resultsPerPage = "";

		List<YoutubeDTO> youtubeList = youtubeDAO.youtubeList(0, 1);
		if (youtubeList.isEmpty()) {
			publishedAtBefore = getLocalDateTimeToUTCString(
				LocalDateTime
				.now()
				.format(DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss"))
				.toString()
			);
		} else {
			publishedAtAfter = getLocalDateTimeToUTCString(youtubeList.get(0).getPublishedAt());
		}
		try {
			do {
				String remoteGetVideosUrlByPublishedAt = remoteGetVideosUrl
						+ (publishedAtBefore != null ? "&publishedBefore=" + publishedAtBefore
								: "&publishedAfter=" + publishedAtAfter);
				URL url = new URL(remoteGetVideosUrlByPublishedAt);
				YoutubeVideoSearchResult videoResult = mapper.readValue(url, YoutubeVideoSearchResult.class);
				YoutubeVideoSearchResult.PageInfo pageInfo = videoResult.getPageInfo();
				List<YoutubeVideoSearchResult.VideoItem> videoItems = videoResult.getItems();

				for (YoutubeVideoSearchResult.VideoItem videoItem : videoItems) {
					YoutubeVideoSearchResult.VideoItem.Id id = videoItem.getId();
					YoutubeVideoSearchResult.VideoItem.Snippet snippet = videoItem.getSnippet();

					HashMap<String, String> hashMap = new HashMap<String, String>();
					hashMap.put("title", snippet.getTitle());
					hashMap.put("videoUrl", id.getVideoId());
					hashMap.put("thumbnailUrl", snippet.getThumnails().getHigh().getUrl());
					hashMap.put("description", snippet.getDescription());
					publishedAt = snippet.getPublishedAt();
					String parsedPublishedAt = getUTCToLocalDateTimeString(publishedAt);
					hashMap.put("publishedAt", parsedPublishedAt);
					youtubeDAO.insertYoutubeList(hashMap);
				}
				if (publishedAtBefore != null)
					publishedAtBefore = publishedAt;
				else
					publishedAtAfter = publishedAt;

				resultsPerPage = pageInfo.getResultsPerPage();
			} while (resultsPerPage.equals("50"));
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
		}
		;
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
