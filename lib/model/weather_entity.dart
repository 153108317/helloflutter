import 'package:flutter_app/generated/json/base/json_convert_content.dart';

class WeatherEntity with JsonConvert<WeatherEntity> {
	String message;
	int status;
	String date;
	String time;
	WeatherCityInfo cityInfo;
	WeatherData data;
}

class WeatherCityInfo with JsonConvert<WeatherCityInfo> {
	String city;
	String citykey;
	String parent;
	String updateTime;
}

  class WeatherData with JsonConvert<WeatherData> {
	String shidu;
	double pm25;
	double pm10;
	String quality;
	String wendu;
	String ganmao;
	List<WeatherDataForecast> forecast;
	WeatherDataYesterday yesterday;
}

class WeatherDataForecast with JsonConvert<WeatherDataForecast> {
	String date;
	String high;
	String low;
	String ymd;
	String week;
	String sunrise;
	String sunset;
	int aqi;
	String fx;
	String fl;
	String type;
	String notice;

}

class WeatherDataYesterday with JsonConvert<WeatherDataYesterday> {
	String date;
	String high;
	String low;
	String ymd;
	String week;
	String sunrise;
	String sunset;
	int aqi;
	String fx;
	String fl;
	String type;
	String notice;
}
