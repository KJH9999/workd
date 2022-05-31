package com.spring.ex.dto;

import java.util.HashMap;

import org.json.simple.JSONObject;


public class YoutubeDTO {
	private String title;
	private String videoUrl;
	private String thumnailUrl;
	private String description;
	private String publishedAt;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getVideoUrl() {
		return videoUrl;
	}

	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}

	public String getThumnailUrl() {
		return thumnailUrl;
	}
	
	public void setThumnailUrl(String thumnailUrl) {
		this.thumnailUrl = thumnailUrl;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getPublishedAt() {
		return publishedAt;
	}
	
	public void setPublishedAt(String publishedAt) {
		this.publishedAt = publishedAt;
	}

	
	public JSONObject toJSONObject() {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("title", title);
		map.put("videoUrl", videoUrl);
		map.put("thumnailUrl", thumnailUrl);
		map.put("description", description);
		map.put("publishedAt", publishedAt);
		
		return new JSONObject(map);
	}
	
	@Override
	public String toString() {
		return "YoutubeDTO [title=" + title
				+ ", videoUrl=" + videoUrl
				+ ", thumnailUrl=" + thumnailUrl
				+ ", description=" + description 
				+ ", publishedAt=" + publishedAt 
				+ "]";
	}

}
