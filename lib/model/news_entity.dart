import 'package:flutter_app/generated/json/base/json_convert_content.dart';
import 'package:flutter_app/generated/json/base/json_filed.dart';

class NewsEntity with JsonConvert<NewsEntity> {
	@JSONField(name: "T1348649580692")
	List<NewsT1348649580692> t1348649580692;
}

class NewsT1348649580692 with JsonConvert<NewsT1348649580692> {
	String sourceId;
	String template;
	String lmodify;
	String source;
	String postid;
	String title;
	String mtime;
	int hasImg;
	@JSONField(name: "topic_background")
	String topicBackground;
	String digest;
	String boardid;
	String alias;
	int hasAD;
	String imgsrc;
	String ptime;
	String daynum;
	int hasHead;
	int order;
	@JSONField(name: "wap_pluginfo")
	List<NewsT1348649580692WapPluginfo> wapPluginfo;
	int votecount;
	bool hasCover;
	String docid;
	String tname;
	@JSONField(name: "url_3w")
	String url3w;
	int priority;
	String url;
	int quality;
	int commentStatus;
	List<NewsT1348649580692Ad> ads;
	String ename;
	int replyCount;
	String ltitle;
	bool hasIcon;
	String subtitle;
	String cid;
	List<dynamic> editor;
	int imgType;
	List<NewsT1348649580692Imgextra> imgextra;
	String skipID;
	String specialID;
	List<NewsT1348649580692TagList> tagList;
	String skipType;
	NewsT1348649580692VideoTopic videoTopic;
	NewsT1348649580692Videoinfo videoinfo;
	int length;
	String videosource;
	String videoID;
	String category;
	@JSONField(name: "TAGS")
	String tAGS;
}

class NewsT1348649580692WapPluginfo with JsonConvert<NewsT1348649580692WapPluginfo> {
	String subtitle;
	String title;
	String imgsrc;
	@JSONField(name: "animation_icon")
	String animationIcon;
	String url;
}

class NewsT1348649580692Ad with JsonConvert<NewsT1348649580692Ad> {
	String docid;
	String subtitle;
	String skipType;
	String skipID;
	String tag;
	String title;
	String imgsrc;
	String url;
}

class NewsT1348649580692Imgextra with JsonConvert<NewsT1348649580692Imgextra> {
	String imgsrc;
}

class NewsT1348649580692TagList with JsonConvert<NewsT1348649580692TagList> {
	int level;
	String text;
	String type;
}

class NewsT1348649580692VideoTopic with JsonConvert<NewsT1348649580692VideoTopic> {
	String ename;
	String tname;
	String alias;
	@JSONField(name: "topic_icons")
	String topicIcons;
	String tid;
}

class NewsT1348649580692Videoinfo with JsonConvert<NewsT1348649580692Videoinfo> {
	double videoRatio;
	@JSONField(name: "video_data")
	NewsT1348649580692VideoinfoVideoData videoData;
	int length;
	@JSONField(name: "mp4Hd_url")
	String mp4hdUrl;
	String description;
	String videosource;
	String title;
	@JSONField(name: "m3u8Hd_url")
	String m3u8hdUrl;
	@JSONField(name: "mp4_url")
	String mp4Url;
	String vid;
	String cover;
	int playCount;
	int replyCount;
	String replyBoard;
	int playersize;
	String replyid;
	String sectiontitle;
	String ptime;
	@JSONField(name: "m3u8_url")
	String m3u8Url;
}

class NewsT1348649580692VideoinfoVideoData with JsonConvert<NewsT1348649580692VideoinfoVideoData> {
	@JSONField(name: "sd_preload_size")
	int sdPreloadSize;
	@JSONField(name: "sd_url")
	String sdUrl;
	@JSONField(name: "hd_url")
	String hdUrl;
	@JSONField(name: "play_info")
	List<NewsT1348649580692VideoinfoVideoDataPlayInfo> playInfo;
	@JSONField(name: "shd_url")
	String shdUrl;
	@JSONField(name: "sd_size")
	int sdSize;
	@JSONField(name: "shd_preload_size")
	int shdPreloadSize;
	int duration;
	@JSONField(name: "hevc_url")
	String hevcUrl;
	@JSONField(name: "hevc_size")
	int hevcSize;
	@JSONField(name: "shd_size")
	int shdSize;
	@JSONField(name: "hd_size")
	int hdSize;
	@JSONField(name: "hd_preload_size")
	int hdPreloadSize;
	@JSONField(name: "hevc_preload_size")
	int hevcPreloadSize;
	double ratio;
}

class NewsT1348649580692VideoinfoVideoDataPlayInfo with JsonConvert<NewsT1348649580692VideoinfoVideoDataPlayInfo> {
	@JSONField(name: "encode_format")
	String encodeFormat;
	int size;
	@JSONField(name: "quality_desc")
	String qualityDesc;
	String label;
	String url;
	@JSONField(name: "quality_index")
	int qualityIndex;
}
