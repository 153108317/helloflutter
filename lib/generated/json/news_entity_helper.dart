import 'package:flutter_app/model/news_entity.dart';

newsEntityFromJson(NewsEntity data, Map<String, dynamic> json) {
	if (json['T1348649580692'] != null) {
		data.t1348649580692 = new List<NewsT1348649580692>();
		(json['T1348649580692'] as List).forEach((v) {
			data.t1348649580692.add(new NewsT1348649580692().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> newsEntityToJson(NewsEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.t1348649580692 != null) {
		data['T1348649580692'] =  entity.t1348649580692.map((v) => v.toJson()).toList();
	}
	return data;
}

newsT1348649580692FromJson(NewsT1348649580692 data, Map<String, dynamic> json) {
	if (json['sourceId'] != null) {
		data.sourceId = json['sourceId']?.toString();
	}
	if (json['template'] != null) {
		data.template = json['template']?.toString();
	}
	if (json['lmodify'] != null) {
		data.lmodify = json['lmodify']?.toString();
	}
	if (json['source'] != null) {
		data.source = json['source']?.toString();
	}
	if (json['postid'] != null) {
		data.postid = json['postid']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['mtime'] != null) {
		data.mtime = json['mtime']?.toString();
	}
	if (json['hasImg'] != null) {
		data.hasImg = json['hasImg']?.toInt();
	}
	if (json['topic_background'] != null) {
		data.topicBackground = json['topic_background']?.toString();
	}
	if (json['digest'] != null) {
		data.digest = json['digest']?.toString();
	}
	if (json['boardid'] != null) {
		data.boardid = json['boardid']?.toString();
	}
	if (json['alias'] != null) {
		data.alias = json['alias']?.toString();
	}
	if (json['hasAD'] != null) {
		data.hasAD = json['hasAD']?.toInt();
	}
	if (json['imgsrc'] != null) {
		data.imgsrc = json['imgsrc']?.toString();
	}
	if (json['ptime'] != null) {
		data.ptime = json['ptime']?.toString();
	}
	if (json['daynum'] != null) {
		data.daynum = json['daynum']?.toString();
	}
	if (json['hasHead'] != null) {
		data.hasHead = json['hasHead']?.toInt();
	}
	if (json['order'] != null) {
		data.order = json['order']?.toInt();
	}
	if (json['wap_pluginfo'] != null) {
		data.wapPluginfo = new List<NewsT1348649580692WapPluginfo>();
		(json['wap_pluginfo'] as List).forEach((v) {
			data.wapPluginfo.add(new NewsT1348649580692WapPluginfo().fromJson(v));
		});
	}
	if (json['votecount'] != null) {
		data.votecount = json['votecount']?.toInt();
	}
	if (json['hasCover'] != null) {
		data.hasCover = json['hasCover'];
	}
	if (json['docid'] != null) {
		data.docid = json['docid']?.toString();
	}
	if (json['tname'] != null) {
		data.tname = json['tname']?.toString();
	}
	if (json['url_3w'] != null) {
		data.url3w = json['url_3w']?.toString();
	}
	if (json['priority'] != null) {
		data.priority = json['priority']?.toInt();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['quality'] != null) {
		data.quality = json['quality']?.toInt();
	}
	if (json['commentStatus'] != null) {
		data.commentStatus = json['commentStatus']?.toInt();
	}
	if (json['ads'] != null) {
		data.ads = new List<NewsT1348649580692Ad>();
		(json['ads'] as List).forEach((v) {
			data.ads.add(new NewsT1348649580692Ad().fromJson(v));
		});
	}
	if (json['ename'] != null) {
		data.ename = json['ename']?.toString();
	}
	if (json['replyCount'] != null) {
		data.replyCount = json['replyCount']?.toInt();
	}
	if (json['ltitle'] != null) {
		data.ltitle = json['ltitle']?.toString();
	}
	if (json['hasIcon'] != null) {
		data.hasIcon = json['hasIcon'];
	}
	if (json['subtitle'] != null) {
		data.subtitle = json['subtitle']?.toString();
	}
	if (json['cid'] != null) {
		data.cid = json['cid']?.toString();
	}
	if (json['editor'] != null) {
		data.editor = new List<dynamic>();
		data.editor.addAll(json['editor']);
	}
	if (json['imgType'] != null) {
		data.imgType = json['imgType']?.toInt();
	}
	if (json['imgextra'] != null) {
		data.imgextra = new List<NewsT1348649580692Imgextra>();
		(json['imgextra'] as List).forEach((v) {
			data.imgextra.add(new NewsT1348649580692Imgextra().fromJson(v));
		});
	}
	if (json['skipID'] != null) {
		data.skipID = json['skipID']?.toString();
	}
	if (json['specialID'] != null) {
		data.specialID = json['specialID']?.toString();
	}
	if (json['tagList'] != null) {
		data.tagList = new List<NewsT1348649580692TagList>();
		(json['tagList'] as List).forEach((v) {
			data.tagList.add(new NewsT1348649580692TagList().fromJson(v));
		});
	}
	if (json['skipType'] != null) {
		data.skipType = json['skipType']?.toString();
	}
	if (json['videoTopic'] != null) {
		data.videoTopic = new NewsT1348649580692VideoTopic().fromJson(json['videoTopic']);
	}
	if (json['videoinfo'] != null) {
		data.videoinfo = new NewsT1348649580692Videoinfo().fromJson(json['videoinfo']);
	}
	if (json['length'] != null) {
		data.length = json['length']?.toInt();
	}
	if (json['videosource'] != null) {
		data.videosource = json['videosource']?.toString();
	}
	if (json['videoID'] != null) {
		data.videoID = json['videoID']?.toString();
	}
	if (json['category'] != null) {
		data.category = json['category']?.toString();
	}
	if (json['TAGS'] != null) {
		data.tAGS = json['TAGS']?.toString();
	}
	return data;
}

Map<String, dynamic> newsT1348649580692ToJson(NewsT1348649580692 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['sourceId'] = entity.sourceId;
	data['template'] = entity.template;
	data['lmodify'] = entity.lmodify;
	data['source'] = entity.source;
	data['postid'] = entity.postid;
	data['title'] = entity.title;
	data['mtime'] = entity.mtime;
	data['hasImg'] = entity.hasImg;
	data['topic_background'] = entity.topicBackground;
	data['digest'] = entity.digest;
	data['boardid'] = entity.boardid;
	data['alias'] = entity.alias;
	data['hasAD'] = entity.hasAD;
	data['imgsrc'] = entity.imgsrc;
	data['ptime'] = entity.ptime;
	data['daynum'] = entity.daynum;
	data['hasHead'] = entity.hasHead;
	data['order'] = entity.order;
	if (entity.wapPluginfo != null) {
		data['wap_pluginfo'] =  entity.wapPluginfo.map((v) => v.toJson()).toList();
	}
	data['votecount'] = entity.votecount;
	data['hasCover'] = entity.hasCover;
	data['docid'] = entity.docid;
	data['tname'] = entity.tname;
	data['url_3w'] = entity.url3w;
	data['priority'] = entity.priority;
	data['url'] = entity.url;
	data['quality'] = entity.quality;
	data['commentStatus'] = entity.commentStatus;
	if (entity.ads != null) {
		data['ads'] =  entity.ads.map((v) => v.toJson()).toList();
	}
	data['ename'] = entity.ename;
	data['replyCount'] = entity.replyCount;
	data['ltitle'] = entity.ltitle;
	data['hasIcon'] = entity.hasIcon;
	data['subtitle'] = entity.subtitle;
	data['cid'] = entity.cid;
	if (entity.editor != null) {
		data['editor'] =  [];
	}
	data['imgType'] = entity.imgType;
	if (entity.imgextra != null) {
		data['imgextra'] =  entity.imgextra.map((v) => v.toJson()).toList();
	}
	data['skipID'] = entity.skipID;
	data['specialID'] = entity.specialID;
	if (entity.tagList != null) {
		data['tagList'] =  entity.tagList.map((v) => v.toJson()).toList();
	}
	data['skipType'] = entity.skipType;
	if (entity.videoTopic != null) {
		data['videoTopic'] = entity.videoTopic.toJson();
	}
	if (entity.videoinfo != null) {
		data['videoinfo'] = entity.videoinfo.toJson();
	}
	data['length'] = entity.length;
	data['videosource'] = entity.videosource;
	data['videoID'] = entity.videoID;
	data['category'] = entity.category;
	data['TAGS'] = entity.tAGS;
	return data;
}

newsT1348649580692WapPluginfoFromJson(NewsT1348649580692WapPluginfo data, Map<String, dynamic> json) {
	if (json['subtitle'] != null) {
		data.subtitle = json['subtitle']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['imgsrc'] != null) {
		data.imgsrc = json['imgsrc']?.toString();
	}
	if (json['animation_icon'] != null) {
		data.animationIcon = json['animation_icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	return data;
}

Map<String, dynamic> newsT1348649580692WapPluginfoToJson(NewsT1348649580692WapPluginfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['subtitle'] = entity.subtitle;
	data['title'] = entity.title;
	data['imgsrc'] = entity.imgsrc;
	data['animation_icon'] = entity.animationIcon;
	data['url'] = entity.url;
	return data;
}

newsT1348649580692AdFromJson(NewsT1348649580692Ad data, Map<String, dynamic> json) {
	if (json['docid'] != null) {
		data.docid = json['docid']?.toString();
	}
	if (json['subtitle'] != null) {
		data.subtitle = json['subtitle']?.toString();
	}
	if (json['skipType'] != null) {
		data.skipType = json['skipType']?.toString();
	}
	if (json['skipID'] != null) {
		data.skipID = json['skipID']?.toString();
	}
	if (json['tag'] != null) {
		data.tag = json['tag']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['imgsrc'] != null) {
		data.imgsrc = json['imgsrc']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	return data;
}

Map<String, dynamic> newsT1348649580692AdToJson(NewsT1348649580692Ad entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['docid'] = entity.docid;
	data['subtitle'] = entity.subtitle;
	data['skipType'] = entity.skipType;
	data['skipID'] = entity.skipID;
	data['tag'] = entity.tag;
	data['title'] = entity.title;
	data['imgsrc'] = entity.imgsrc;
	data['url'] = entity.url;
	return data;
}

newsT1348649580692ImgextraFromJson(NewsT1348649580692Imgextra data, Map<String, dynamic> json) {
	if (json['imgsrc'] != null) {
		data.imgsrc = json['imgsrc']?.toString();
	}
	return data;
}

Map<String, dynamic> newsT1348649580692ImgextraToJson(NewsT1348649580692Imgextra entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['imgsrc'] = entity.imgsrc;
	return data;
}

newsT1348649580692TagListFromJson(NewsT1348649580692TagList data, Map<String, dynamic> json) {
	if (json['level'] != null) {
		data.level = json['level']?.toInt();
	}
	if (json['text'] != null) {
		data.text = json['text']?.toString();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	return data;
}

Map<String, dynamic> newsT1348649580692TagListToJson(NewsT1348649580692TagList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['level'] = entity.level;
	data['text'] = entity.text;
	data['type'] = entity.type;
	return data;
}

newsT1348649580692VideoTopicFromJson(NewsT1348649580692VideoTopic data, Map<String, dynamic> json) {
	if (json['ename'] != null) {
		data.ename = json['ename']?.toString();
	}
	if (json['tname'] != null) {
		data.tname = json['tname']?.toString();
	}
	if (json['alias'] != null) {
		data.alias = json['alias']?.toString();
	}
	if (json['topic_icons'] != null) {
		data.topicIcons = json['topic_icons']?.toString();
	}
	if (json['tid'] != null) {
		data.tid = json['tid']?.toString();
	}
	return data;
}

Map<String, dynamic> newsT1348649580692VideoTopicToJson(NewsT1348649580692VideoTopic entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['ename'] = entity.ename;
	data['tname'] = entity.tname;
	data['alias'] = entity.alias;
	data['topic_icons'] = entity.topicIcons;
	data['tid'] = entity.tid;
	return data;
}

newsT1348649580692VideoinfoFromJson(NewsT1348649580692Videoinfo data, Map<String, dynamic> json) {
	if (json['videoRatio'] != null) {
		data.videoRatio = json['videoRatio']?.toDouble();
	}
	if (json['video_data'] != null) {
		data.videoData = new NewsT1348649580692VideoinfoVideoData().fromJson(json['video_data']);
	}
	if (json['length'] != null) {
		data.length = json['length']?.toInt();
	}
	if (json['mp4Hd_url'] != null) {
		data.mp4hdUrl = json['mp4Hd_url']?.toString();
	}
	if (json['description'] != null) {
		data.description = json['description']?.toString();
	}
	if (json['videosource'] != null) {
		data.videosource = json['videosource']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['m3u8Hd_url'] != null) {
		data.m3u8hdUrl = json['m3u8Hd_url']?.toString();
	}
	if (json['mp4_url'] != null) {
		data.mp4Url = json['mp4_url']?.toString();
	}
	if (json['vid'] != null) {
		data.vid = json['vid']?.toString();
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['playCount'] != null) {
		data.playCount = json['playCount']?.toInt();
	}
	if (json['replyCount'] != null) {
		data.replyCount = json['replyCount']?.toInt();
	}
	if (json['replyBoard'] != null) {
		data.replyBoard = json['replyBoard']?.toString();
	}
	if (json['playersize'] != null) {
		data.playersize = json['playersize']?.toInt();
	}
	if (json['replyid'] != null) {
		data.replyid = json['replyid']?.toString();
	}
	if (json['sectiontitle'] != null) {
		data.sectiontitle = json['sectiontitle']?.toString();
	}
	if (json['ptime'] != null) {
		data.ptime = json['ptime']?.toString();
	}
	if (json['m3u8_url'] != null) {
		data.m3u8Url = json['m3u8_url']?.toString();
	}
	return data;
}

Map<String, dynamic> newsT1348649580692VideoinfoToJson(NewsT1348649580692Videoinfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['videoRatio'] = entity.videoRatio;
	if (entity.videoData != null) {
		data['video_data'] = entity.videoData.toJson();
	}
	data['length'] = entity.length;
	data['mp4Hd_url'] = entity.mp4hdUrl;
	data['description'] = entity.description;
	data['videosource'] = entity.videosource;
	data['title'] = entity.title;
	data['m3u8Hd_url'] = entity.m3u8hdUrl;
	data['mp4_url'] = entity.mp4Url;
	data['vid'] = entity.vid;
	data['cover'] = entity.cover;
	data['playCount'] = entity.playCount;
	data['replyCount'] = entity.replyCount;
	data['replyBoard'] = entity.replyBoard;
	data['playersize'] = entity.playersize;
	data['replyid'] = entity.replyid;
	data['sectiontitle'] = entity.sectiontitle;
	data['ptime'] = entity.ptime;
	data['m3u8_url'] = entity.m3u8Url;
	return data;
}

newsT1348649580692VideoinfoVideoDataFromJson(NewsT1348649580692VideoinfoVideoData data, Map<String, dynamic> json) {
	if (json['sd_preload_size'] != null) {
		data.sdPreloadSize = json['sd_preload_size']?.toInt();
	}
	if (json['sd_url'] != null) {
		data.sdUrl = json['sd_url']?.toString();
	}
	if (json['hd_url'] != null) {
		data.hdUrl = json['hd_url']?.toString();
	}
	if (json['play_info'] != null) {
		data.playInfo = new List<NewsT1348649580692VideoinfoVideoDataPlayInfo>();
		(json['play_info'] as List).forEach((v) {
			data.playInfo.add(new NewsT1348649580692VideoinfoVideoDataPlayInfo().fromJson(v));
		});
	}
	if (json['shd_url'] != null) {
		data.shdUrl = json['shd_url']?.toString();
	}
	if (json['sd_size'] != null) {
		data.sdSize = json['sd_size']?.toInt();
	}
	if (json['shd_preload_size'] != null) {
		data.shdPreloadSize = json['shd_preload_size']?.toInt();
	}
	if (json['duration'] != null) {
		data.duration = json['duration']?.toInt();
	}
	if (json['hevc_url'] != null) {
		data.hevcUrl = json['hevc_url']?.toString();
	}
	if (json['hevc_size'] != null) {
		data.hevcSize = json['hevc_size']?.toInt();
	}
	if (json['shd_size'] != null) {
		data.shdSize = json['shd_size']?.toInt();
	}
	if (json['hd_size'] != null) {
		data.hdSize = json['hd_size']?.toInt();
	}
	if (json['hd_preload_size'] != null) {
		data.hdPreloadSize = json['hd_preload_size']?.toInt();
	}
	if (json['hevc_preload_size'] != null) {
		data.hevcPreloadSize = json['hevc_preload_size']?.toInt();
	}
	if (json['ratio'] != null) {
		data.ratio = json['ratio']?.toDouble();
	}
	return data;
}

Map<String, dynamic> newsT1348649580692VideoinfoVideoDataToJson(NewsT1348649580692VideoinfoVideoData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['sd_preload_size'] = entity.sdPreloadSize;
	data['sd_url'] = entity.sdUrl;
	data['hd_url'] = entity.hdUrl;
	if (entity.playInfo != null) {
		data['play_info'] =  entity.playInfo.map((v) => v.toJson()).toList();
	}
	data['shd_url'] = entity.shdUrl;
	data['sd_size'] = entity.sdSize;
	data['shd_preload_size'] = entity.shdPreloadSize;
	data['duration'] = entity.duration;
	data['hevc_url'] = entity.hevcUrl;
	data['hevc_size'] = entity.hevcSize;
	data['shd_size'] = entity.shdSize;
	data['hd_size'] = entity.hdSize;
	data['hd_preload_size'] = entity.hdPreloadSize;
	data['hevc_preload_size'] = entity.hevcPreloadSize;
	data['ratio'] = entity.ratio;
	return data;
}

newsT1348649580692VideoinfoVideoDataPlayInfoFromJson(NewsT1348649580692VideoinfoVideoDataPlayInfo data, Map<String, dynamic> json) {
	if (json['encode_format'] != null) {
		data.encodeFormat = json['encode_format']?.toString();
	}
	if (json['size'] != null) {
		data.size = json['size']?.toInt();
	}
	if (json['quality_desc'] != null) {
		data.qualityDesc = json['quality_desc']?.toString();
	}
	if (json['label'] != null) {
		data.label = json['label']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['quality_index'] != null) {
		data.qualityIndex = json['quality_index']?.toInt();
	}
	return data;
}

Map<String, dynamic> newsT1348649580692VideoinfoVideoDataPlayInfoToJson(NewsT1348649580692VideoinfoVideoDataPlayInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['encode_format'] = entity.encodeFormat;
	data['size'] = entity.size;
	data['quality_desc'] = entity.qualityDesc;
	data['label'] = entity.label;
	data['url'] = entity.url;
	data['quality_index'] = entity.qualityIndex;
	return data;
}