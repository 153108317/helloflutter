import 'package:flutter_app/model/weather_entity.dart';

weatherEntityFromJson(WeatherEntity data, Map<String, dynamic> json) {
	if (json['message'] != null) {
		data.message = json['message']?.toString();
	}
	if (json['status'] != null) {
		data.status = json['status']?.toInt();
	}
	if (json['date'] != null) {
		data.date = json['date']?.toString();
	}
	if (json['time'] != null) {
		data.time = json['time']?.toString();
	}
	if (json['cityInfo'] != null) {
		data.cityInfo = new WeatherCityInfo().fromJson(json['cityInfo']);
	}
	if (json['data'] != null) {
		data.data = new WeatherData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> weatherEntityToJson(WeatherEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['message'] = entity.message;
	data['status'] = entity.status;
	data['date'] = entity.date;
	data['time'] = entity.time;
	if (entity.cityInfo != null) {
		data['cityInfo'] = entity.cityInfo.toJson();
	}
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	return data;
}

weatherCityInfoFromJson(WeatherCityInfo data, Map<String, dynamic> json) {
	if (json['city'] != null) {
		data.city = json['city']?.toString();
	}
	if (json['citykey'] != null) {
		data.citykey = json['citykey']?.toString();
	}
	if (json['parent'] != null) {
		data.parent = json['parent']?.toString();
	}
	if (json['updateTime'] != null) {
		data.updateTime = json['updateTime']?.toString();
	}
	return data;
}

Map<String, dynamic> weatherCityInfoToJson(WeatherCityInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['city'] = entity.city;
	data['citykey'] = entity.citykey;
	data['parent'] = entity.parent;
	data['updateTime'] = entity.updateTime;
	return data;
}

weatherDataFromJson(WeatherData data, Map<String, dynamic> json) {
	if (json['shidu'] != null) {
		data.shidu = json['shidu']?.toString();
	}
	if (json['pm25'] != null) {
		data.pm25 = json['pm25']?.toDouble();
	}
	if (json['pm10'] != null) {
		data.pm10 = json['pm10']?.toDouble();
	}
	if (json['quality'] != null) {
		data.quality = json['quality']?.toString();
	}
	if (json['wendu'] != null) {
		data.wendu = json['wendu']?.toString();
	}
	if (json['ganmao'] != null) {
		data.ganmao = json['ganmao']?.toString();
	}
	if (json['forecast'] != null) {
		data.forecast = new List<WeatherDataForecast>();
		(json['forecast'] as List).forEach((v) {
			data.forecast.add(new WeatherDataForecast().fromJson(v));
		});
	}
	if (json['yesterday'] != null) {
		data.yesterday = new WeatherDataYesterday().fromJson(json['yesterday']);
	}
	return data;
}

Map<String, dynamic> weatherDataToJson(WeatherData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['shidu'] = entity.shidu;
	data['pm25'] = entity.pm25;
	data['pm10'] = entity.pm10;
	data['quality'] = entity.quality;
	data['wendu'] = entity.wendu;
	data['ganmao'] = entity.ganmao;
	if (entity.forecast != null) {
		data['forecast'] =  entity.forecast.map((v) => v.toJson()).toList();
	}
	if (entity.yesterday != null) {
		data['yesterday'] = entity.yesterday.toJson();
	}
	return data;
}

weatherDataForecastFromJson(WeatherDataForecast data, Map<String, dynamic> json) {
	if (json['date'] != null) {
		data.date = json['date']?.toString();
	}
	if (json['high'] != null) {
		data.high = json['high']?.toString();
	}
	if (json['low'] != null) {
		data.low = json['low']?.toString();
	}
	if (json['ymd'] != null) {
		data.ymd = json['ymd']?.toString();
	}
	if (json['week'] != null) {
		data.week = json['week']?.toString();
	}
	if (json['sunrise'] != null) {
		data.sunrise = json['sunrise']?.toString();
	}
	if (json['sunset'] != null) {
		data.sunset = json['sunset']?.toString();
	}
	if (json['aqi'] != null) {
		data.aqi = json['aqi']?.toInt();
	}
	if (json['fx'] != null) {
		data.fx = json['fx']?.toString();
	}
	if (json['fl'] != null) {
		data.fl = json['fl']?.toString();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	if (json['notice'] != null) {
		data.notice = json['notice']?.toString();
	}
	return data;
}

Map<String, dynamic> weatherDataForecastToJson(WeatherDataForecast entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['date'] = entity.date;
	data['high'] = entity.high;
	data['low'] = entity.low;
	data['ymd'] = entity.ymd;
	data['week'] = entity.week;
	data['sunrise'] = entity.sunrise;
	data['sunset'] = entity.sunset;
	data['aqi'] = entity.aqi;
	data['fx'] = entity.fx;
	data['fl'] = entity.fl;
	data['type'] = entity.type;
	data['notice'] = entity.notice;
	return data;
}

weatherDataYesterdayFromJson(WeatherDataYesterday data, Map<String, dynamic> json) {
	if (json['date'] != null) {
		data.date = json['date']?.toString();
	}
	if (json['high'] != null) {
		data.high = json['high']?.toString();
	}
	if (json['low'] != null) {
		data.low = json['low']?.toString();
	}
	if (json['ymd'] != null) {
		data.ymd = json['ymd']?.toString();
	}
	if (json['week'] != null) {
		data.week = json['week']?.toString();
	}
	if (json['sunrise'] != null) {
		data.sunrise = json['sunrise']?.toString();
	}
	if (json['sunset'] != null) {
		data.sunset = json['sunset']?.toString();
	}
	if (json['aqi'] != null) {
		data.aqi = json['aqi']?.toInt();
	}
	if (json['fx'] != null) {
		data.fx = json['fx']?.toString();
	}
	if (json['fl'] != null) {
		data.fl = json['fl']?.toString();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	if (json['notice'] != null) {
		data.notice = json['notice']?.toString();
	}
	return data;
}

Map<String, dynamic> weatherDataYesterdayToJson(WeatherDataYesterday entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['date'] = entity.date;
	data['high'] = entity.high;
	data['low'] = entity.low;
	data['ymd'] = entity.ymd;
	data['week'] = entity.week;
	data['sunrise'] = entity.sunrise;
	data['sunset'] = entity.sunset;
	data['aqi'] = entity.aqi;
	data['fx'] = entity.fx;
	data['fl'] = entity.fl;
	data['type'] = entity.type;
	data['notice'] = entity.notice;
	return data;
}