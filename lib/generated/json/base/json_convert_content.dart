// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter_app/model/weather_entity.dart';
import 'package:flutter_app/generated/json/weather_entity_helper.dart';
import 'package:flutter_app/model/news_entity.dart';
import 'package:flutter_app/generated/json/news_entity_helper.dart';
import 'package:flutter_app/model/test1_entity.dart';
import 'package:flutter_app/generated/json/test1_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}

  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
    switch (type) {			case WeatherEntity:
			return weatherEntityFromJson(data as WeatherEntity, json) as T;			case WeatherCityInfo:
			return weatherCityInfoFromJson(data as WeatherCityInfo, json) as T;			case WeatherData:
			return weatherDataFromJson(data as WeatherData, json) as T;			case WeatherDataForecast:
			return weatherDataForecastFromJson(data as WeatherDataForecast, json) as T;			case WeatherDataYesterday:
			return weatherDataYesterdayFromJson(data as WeatherDataYesterday, json) as T;			case NewsEntity:
			return newsEntityFromJson(data as NewsEntity, json) as T;			case NewsT1348649580692:
			return newsT1348649580692FromJson(data as NewsT1348649580692, json) as T;			case NewsT1348649580692WapPluginfo:
			return newsT1348649580692WapPluginfoFromJson(data as NewsT1348649580692WapPluginfo, json) as T;			case NewsT1348649580692Ad:
			return newsT1348649580692AdFromJson(data as NewsT1348649580692Ad, json) as T;			case NewsT1348649580692Imgextra:
			return newsT1348649580692ImgextraFromJson(data as NewsT1348649580692Imgextra, json) as T;			case NewsT1348649580692TagList:
			return newsT1348649580692TagListFromJson(data as NewsT1348649580692TagList, json) as T;			case NewsT1348649580692VideoTopic:
			return newsT1348649580692VideoTopicFromJson(data as NewsT1348649580692VideoTopic, json) as T;			case NewsT1348649580692Videoinfo:
			return newsT1348649580692VideoinfoFromJson(data as NewsT1348649580692Videoinfo, json) as T;			case NewsT1348649580692VideoinfoVideoData:
			return newsT1348649580692VideoinfoVideoDataFromJson(data as NewsT1348649580692VideoinfoVideoData, json) as T;			case NewsT1348649580692VideoinfoVideoDataPlayInfo:
			return newsT1348649580692VideoinfoVideoDataPlayInfoFromJson(data as NewsT1348649580692VideoinfoVideoDataPlayInfo, json) as T;			case Test1Entity:
			return test1EntityFromJson(data as Test1Entity, json) as T;    }
    return data as T;
  }

  static _getToJson<T>(Type type, data) {
		switch (type) {			case WeatherEntity:
			return weatherEntityToJson(data as WeatherEntity);			case WeatherCityInfo:
			return weatherCityInfoToJson(data as WeatherCityInfo);			case WeatherData:
			return weatherDataToJson(data as WeatherData);			case WeatherDataForecast:
			return weatherDataForecastToJson(data as WeatherDataForecast);			case WeatherDataYesterday:
			return weatherDataYesterdayToJson(data as WeatherDataYesterday);			case NewsEntity:
			return newsEntityToJson(data as NewsEntity);			case NewsT1348649580692:
			return newsT1348649580692ToJson(data as NewsT1348649580692);			case NewsT1348649580692WapPluginfo:
			return newsT1348649580692WapPluginfoToJson(data as NewsT1348649580692WapPluginfo);			case NewsT1348649580692Ad:
			return newsT1348649580692AdToJson(data as NewsT1348649580692Ad);			case NewsT1348649580692Imgextra:
			return newsT1348649580692ImgextraToJson(data as NewsT1348649580692Imgextra);			case NewsT1348649580692TagList:
			return newsT1348649580692TagListToJson(data as NewsT1348649580692TagList);			case NewsT1348649580692VideoTopic:
			return newsT1348649580692VideoTopicToJson(data as NewsT1348649580692VideoTopic);			case NewsT1348649580692Videoinfo:
			return newsT1348649580692VideoinfoToJson(data as NewsT1348649580692Videoinfo);			case NewsT1348649580692VideoinfoVideoData:
			return newsT1348649580692VideoinfoVideoDataToJson(data as NewsT1348649580692VideoinfoVideoData);			case NewsT1348649580692VideoinfoVideoDataPlayInfo:
			return newsT1348649580692VideoinfoVideoDataPlayInfoToJson(data as NewsT1348649580692VideoinfoVideoDataPlayInfo);			case Test1Entity:
			return test1EntityToJson(data as Test1Entity);    }
    return data as T;
  }
  //Go back to a single instance by type
  static _fromJsonSingle(String type, json) {
    switch (type) {			case 'WeatherEntity':
			return WeatherEntity().fromJson(json);			case 'WeatherCityInfo':
			return WeatherCityInfo().fromJson(json);			case 'WeatherData':
			return WeatherData().fromJson(json);			case 'WeatherDataForecast':
			return WeatherDataForecast().fromJson(json);			case 'WeatherDataYesterday':
			return WeatherDataYesterday().fromJson(json);			case 'NewsEntity':
			return NewsEntity().fromJson(json);			case 'NewsT1348649580692':
			return NewsT1348649580692().fromJson(json);			case 'NewsT1348649580692WapPluginfo':
			return NewsT1348649580692WapPluginfo().fromJson(json);			case 'NewsT1348649580692Ad':
			return NewsT1348649580692Ad().fromJson(json);			case 'NewsT1348649580692Imgextra':
			return NewsT1348649580692Imgextra().fromJson(json);			case 'NewsT1348649580692TagList':
			return NewsT1348649580692TagList().fromJson(json);			case 'NewsT1348649580692VideoTopic':
			return NewsT1348649580692VideoTopic().fromJson(json);			case 'NewsT1348649580692Videoinfo':
			return NewsT1348649580692Videoinfo().fromJson(json);			case 'NewsT1348649580692VideoinfoVideoData':
			return NewsT1348649580692VideoinfoVideoData().fromJson(json);			case 'NewsT1348649580692VideoinfoVideoDataPlayInfo':
			return NewsT1348649580692VideoinfoVideoDataPlayInfo().fromJson(json);			case 'Test1Entity':
			return Test1Entity().fromJson(json);    }
    return null;
  }

  //empty list is returned by type
  static _getListFromType(String type) {
    switch (type) {			case 'WeatherEntity':
			return List<WeatherEntity>();			case 'WeatherCityInfo':
			return List<WeatherCityInfo>();			case 'WeatherData':
			return List<WeatherData>();			case 'WeatherDataForecast':
			return List<WeatherDataForecast>();			case 'WeatherDataYesterday':
			return List<WeatherDataYesterday>();			case 'NewsEntity':
			return List<NewsEntity>();			case 'NewsT1348649580692':
			return List<NewsT1348649580692>();			case 'NewsT1348649580692WapPluginfo':
			return List<NewsT1348649580692WapPluginfo>();			case 'NewsT1348649580692Ad':
			return List<NewsT1348649580692Ad>();			case 'NewsT1348649580692Imgextra':
			return List<NewsT1348649580692Imgextra>();			case 'NewsT1348649580692TagList':
			return List<NewsT1348649580692TagList>();			case 'NewsT1348649580692VideoTopic':
			return List<NewsT1348649580692VideoTopic>();			case 'NewsT1348649580692Videoinfo':
			return List<NewsT1348649580692Videoinfo>();			case 'NewsT1348649580692VideoinfoVideoData':
			return List<NewsT1348649580692VideoinfoVideoData>();			case 'NewsT1348649580692VideoinfoVideoDataPlayInfo':
			return List<NewsT1348649580692VideoinfoVideoDataPlayInfo>();			case 'Test1Entity':
			return List<Test1Entity>();    }
    return null;
  }

  static M fromJsonAsT<M>(json) {
    String type = M.toString();
    if (json is List && type.contains("List<")) {
      String itemType = type.substring(5, type.length - 1);
      List tempList = _getListFromType(itemType);
      json.forEach((itemJson) {
        tempList
            .add(_fromJsonSingle(type.substring(5, type.length - 1), itemJson));
      });
      return tempList as M;
    } else {
      return _fromJsonSingle(M.toString(), json) as M;
    }
  }
}