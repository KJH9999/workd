package com.spring.ex.dto;

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
