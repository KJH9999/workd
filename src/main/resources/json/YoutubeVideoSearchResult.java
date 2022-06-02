package json;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

public class YoutubeVideoSearchResult {
	static public class VideoItem {
		static public class Id {
			private String kind;
			private String videoId;

			public String getKind() {
				return kind;
			}

			public void setKind(String kind) {
				this.kind = kind;
			}

			public String getVideoId() {
				return videoId;
			}

			public void setVideoId(String videoId) {
				this.videoId = videoId;
			}
		}

		static public class Snippet {
			static public class Thumbnails {
				static public class ThumbnailsType {
					private String url;
					private String width;
					private String height;

					public String getUrl() {
						return url;
					}

					public void setUrl(String url) {
						this.url = url;
					}

					public String getWidth() {
						return width;
					}

					public void setWidth(String width) {
						this.width = width;
					}

					public String getHeight() {
						return height;
					}

					public void setHeight(String height) {
						this.height = height;
					}
				}

				private ThumbnailsType high;

				public ThumbnailsType getHigh() {
					return high;
				}

				public void setHigh(ThumbnailsType high) {
					this.high = high;
				}
			}

			private String publishedAt;
			private String title;
			private String description;
			private Thumbnails thumbnails;
			private String channelTitle;

			public String getPublishedAt() {
				return publishedAt;
			}

			public void setPublishedAt(String publishedAt) {
				this.publishedAt = publishedAt;
			}

			public String getTitle() {
				return title;
			}

			public void setTitle(String title) {
				this.title = title;
			}

			public String getDescription() {
				return description;
			}

			public void setDescription(String description) {
				this.description = description;
			}

			public Thumbnails getThumnails() {
				return thumbnails;
			}

			public void setThumbnails(Thumbnails thumbnails) {
				this.thumbnails = thumbnails;
			}

			public String getChannelTitle() {
				return channelTitle;
			}

			public void setChannelTitle(String channelTitle) {
				this.channelTitle = channelTitle;
			}
		}

		private Id id;
		private Snippet snippet;

		public Id getId() {
			return id;
		}

		public void setId(Id id) {
			this.id = id;
		}

		public Snippet getSnippet() {
			return snippet;
		}

		public void setSnippet(Snippet snippet) {
			this.snippet = snippet;
		}
	}

	static public class PageInfo {
		private String TotalResults;
		private String resultPerPage;

		public String getTotalResults() {
			return TotalResults;
		}

		public void setTotalResults(String totalResults) {
			TotalResults = totalResults;
		}

		public String getResultPerPage() {
			return resultPerPage;
		}

		public void setResultPerPage(String resultPerPage) {
			this.resultPerPage = resultPerPage;
		}
	}

	@JsonInclude(JsonInclude.Include.ALWAYS)
	private String nextPageToken;
	private PageInfo pageInfo;
	private List<VideoItem> items;

	public String getNextPageToken() {
		return nextPageToken;
	}

	public void setNextPageToken(String nextPageToken) {
		this.nextPageToken = nextPageToken;
	}

	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<VideoItem> getItems() {
		return items;
	}

	public void setItems(List<VideoItem> items) {
		this.items = items;
	}
}