class WeatherModel {
  Location? location;
  Current? current;
  Forecast? forecast;

  WeatherModel({this.location, this.current, this.forecast});

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
    location:
        json['location'] != null ? Location.fromJson(json['location']) : null,
    current: json['current'] != null ? Current.fromJson(json['current']) : null,
    forecast:
        json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null,
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (location != null) data['location'] = location!.toJson();
    if (current != null) data['current'] = current!.toJson();
    if (forecast != null) data['forecast'] = forecast!.toJson();
    return data;
  }
}

class Location {
  String? name;
  String? region;
  String? country;
  double? lat;
  double? lon;
  String? tzId;
  int? localtimeEpoch;
  String? localtime;

  Location({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    name: json['name'],
    region: json['region'],
    country: json['country'],
    lat: json['lat'] != null ? (json['lat'] as num).toDouble() : null,
    lon: json['lon'] != null ? (json['lon'] as num).toDouble() : null,
    tzId: json['tz_id'],
    localtimeEpoch: json['localtime_epoch'],
    localtime: json['localtime'],
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['region'] = region;
    data['country'] = country;
    data['lat'] = lat;
    data['lon'] = lon;
    data['tz_id'] = tzId;
    data['localtime_epoch'] = localtimeEpoch;
    data['localtime'] = localtime;
    return data;
  }
}

class Current {
  int? lastUpdatedEpoch;
  String? lastUpdated;
  double? tempC;
  double? tempF;
  int? isDay;
  Condition? condition;
  double? windMph;
  double? windKph;
  int? windDegree;
  String? windDir;
  double? pressureMb;
  double? pressureIn;
  double? precipMm;
  double? precipIn;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  double? feelslikeF;
  double? windchillC;
  double? windchillF;
  double? heatindexC;
  double? heatindexF;
  double? dewpointC;
  double? dewpointF;
  double? visKm;
  double? visMiles;
  double? uv;
  double? gustMph;
  double? gustKph;

  Current({
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });

  factory Current.fromJson(Map<String, dynamic> json) => Current(
    lastUpdatedEpoch: json['last_updated_epoch'],
    lastUpdated: json['last_updated'],
    tempC: json['temp_c'] != null ? (json['temp_c'] as num).toDouble() : null,
    tempF: json['temp_f'] != null ? (json['temp_f'] as num).toDouble() : null,
    isDay: json['is_day'],
    condition:
        json['condition'] != null
            ? Condition.fromJson(json['condition'])
            : null,
    windMph:
        json['wind_mph'] != null ? (json['wind_mph'] as num).toDouble() : null,
    windKph:
        json['wind_kph'] != null ? (json['wind_kph'] as num).toDouble() : null,
    windDegree: json['wind_degree'],
    windDir: json['wind_dir'],
    pressureMb:
        json['pressure_mb'] != null
            ? (json['pressure_mb'] as num).toDouble()
            : null,
    pressureIn:
        json['pressure_in'] != null
            ? (json['pressure_in'] as num).toDouble()
            : null,
    precipMm:
        json['precip_mm'] != null
            ? (json['precip_mm'] as num).toDouble()
            : null,
    precipIn:
        json['precip_in'] != null
            ? (json['precip_in'] as num).toDouble()
            : null,
    humidity: json['humidity'],
    cloud: json['cloud'],
    feelslikeC:
        json['feelslike_c'] != null
            ? (json['feelslike_c'] as num).toDouble()
            : null,
    feelslikeF:
        json['feelslike_f'] != null
            ? (json['feelslike_f'] as num).toDouble()
            : null,
    windchillC:
        json['windchill_c'] != null
            ? (json['windchill_c'] as num).toDouble()
            : null,
    windchillF:
        json['windchill_f'] != null
            ? (json['windchill_f'] as num).toDouble()
            : null,
    heatindexC:
        json['heatindex_c'] != null
            ? (json['heatindex_c'] as num).toDouble()
            : null,
    heatindexF:
        json['heatindex_f'] != null
            ? (json['heatindex_f'] as num).toDouble()
            : null,
    dewpointC:
        json['dewpoint_c'] != null
            ? (json['dewpoint_c'] as num).toDouble()
            : null,
    dewpointF:
        json['dewpoint_f'] != null
            ? (json['dewpoint_f'] as num).toDouble()
            : null,
    visKm: json['vis_km'] != null ? (json['vis_km'] as num).toDouble() : null,
    visMiles:
        json['vis_miles'] != null
            ? (json['vis_miles'] as num).toDouble()
            : null,
    uv: json['uv'] != null ? (json['uv'] as num).toDouble() : null,
    gustMph:
        json['gust_mph'] != null ? (json['gust_mph'] as num).toDouble() : null,
    gustKph:
        json['gust_kph'] != null ? (json['gust_kph'] as num).toDouble() : null,
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['last_updated_epoch'] = lastUpdatedEpoch;
    data['last_updated'] = lastUpdated;
    data['temp_c'] = tempC;
    data['temp_f'] = tempF;
    data['is_day'] = isDay;
    if (condition != null) data['condition'] = condition!.toJson();
    data['wind_mph'] = windMph;
    data['wind_kph'] = windKph;
    data['wind_degree'] = windDegree;
    data['wind_dir'] = windDir;
    data['pressure_mb'] = pressureMb;
    data['pressure_in'] = pressureIn;
    data['precip_mm'] = precipMm;
    data['precip_in'] = precipIn;
    data['humidity'] = humidity;
    data['cloud'] = cloud;
    data['feelslike_c'] = feelslikeC;
    data['feelslike_f'] = feelslikeF;
    data['windchill_c'] = windchillC;
    data['windchill_f'] = windchillF;
    data['heatindex_c'] = heatindexC;
    data['heatindex_f'] = heatindexF;
    data['dewpoint_c'] = dewpointC;
    data['dewpoint_f'] = dewpointF;
    data['vis_km'] = visKm;
    data['vis_miles'] = visMiles;
    data['uv'] = uv;
    data['gust_mph'] = gustMph;
    data['gust_kph'] = gustKph;
    return data;
  }
}

class Condition {
  String? text;
  String? icon;
  int? code;

  Condition({this.text, this.icon, this.code});

  factory Condition.fromJson(Map<String, dynamic> json) =>
      Condition(text: json['text'], icon: json['icon'], code: json['code']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['text'] = text;
    data['icon'] = icon;
    data['code'] = code;
    return data;
  }
}

class Forecast {
  List<ForecastDay>? forecastday;

  Forecast({this.forecastday});

  factory Forecast.fromJson(Map<String, dynamic> json) => Forecast(
    forecastday:
        json['forecastday'] != null
            ? List<ForecastDay>.from(
              json['forecastday'].map((x) => ForecastDay.fromJson(x)),
            )
            : null,
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (forecastday != null) {
      data['forecastday'] = forecastday!.map((x) => x.toJson()).toList();
    }
    return data;
  }
}

class ForecastDay {
  String? date;
  int? dateEpoch;
  Day? day;
  Astro? astro;
  List<Hour>? hour;

  ForecastDay({this.date, this.dateEpoch, this.day, this.astro, this.hour});

  factory ForecastDay.fromJson(Map<String, dynamic> json) => ForecastDay(
    date: json['date'],
    dateEpoch: json['date_epoch'],
    day: json['day'] != null ? Day.fromJson(json['day']) : null,
    astro: json['astro'] != null ? Astro.fromJson(json['astro']) : null,
    hour:
        json['hour'] != null
            ? List<Hour>.from(json['hour'].map((x) => Hour.fromJson(x)))
            : null,
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['date'] = date;
    data['date_epoch'] = dateEpoch;
    if (day != null) data['day'] = day!.toJson();
    if (astro != null) data['astro'] = astro!.toJson();
    if (hour != null) data['hour'] = hour!.map((x) => x.toJson()).toList();
    return data;
  }
}

class Day {
  double? maxtempC;
  double? maxtempF;
  double? mintempC;
  double? mintempF;
  double? avgtempC;
  double? avgtempF;
  double? maxwindMph;
  double? maxwindKph;
  double? totalprecipMm;
  double? totalprecipIn;
  double? totalsnowCm;
  double? avgvisKm;
  double? avgvisMiles;
  double? avghumidity;
  int? dailyWillItRain;
  int? dailyChanceOfRain;
  int? dailyWillItSnow;
  int? dailyChanceOfSnow;
  Condition? condition;
  double? uv;

  Day({
    this.maxtempC,
    this.maxtempF,
    this.mintempC,
    this.mintempF,
    this.avgtempC,
    this.avgtempF,
    this.maxwindMph,
    this.maxwindKph,
    this.totalprecipMm,
    this.totalprecipIn,
    this.totalsnowCm,
    this.avgvisKm,
    this.avgvisMiles,
    this.avghumidity,
    this.dailyWillItRain,
    this.dailyChanceOfRain,
    this.dailyWillItSnow,
    this.dailyChanceOfSnow,
    this.condition,
    this.uv,
  });

  factory Day.fromJson(Map<String, dynamic> json) => Day(
    maxtempC:
        json['maxtemp_c'] != null
            ? (json['maxtemp_c'] as num).toDouble()
            : null,
    maxtempF:
        json['maxtemp_f'] != null
            ? (json['maxtemp_f'] as num).toDouble()
            : null,
    mintempC:
        json['mintemp_c'] != null
            ? (json['mintemp_c'] as num).toDouble()
            : null,
    mintempF:
        json['mintemp_f'] != null
            ? (json['mintemp_f'] as num).toDouble()
            : null,
    avgtempC:
        json['avgtemp_c'] != null
            ? (json['avgtemp_c'] as num).toDouble()
            : null,
    avgtempF:
        json['avgtemp_f'] != null
            ? (json['avgtemp_f'] as num).toDouble()
            : null,
    maxwindMph:
        json['maxwind_mph'] != null
            ? (json['maxwind_mph'] as num).toDouble()
            : null,
    maxwindKph:
        json['maxwind_kph'] != null
            ? (json['maxwind_kph'] as num).toDouble()
            : null,
    totalprecipMm:
        json['totalprecip_mm'] != null
            ? (json['totalprecip_mm'] as num).toDouble()
            : null,
    totalprecipIn:
        json['totalprecip_in'] != null
            ? (json['totalprecip_in'] as num).toDouble()
            : null,
    totalsnowCm:
        json['totalsnow_cm'] != null
            ? (json['totalsnow_cm'] as num).toDouble()
            : null,
    avgvisKm:
        json['avgvis_km'] != null
            ? (json['avgvis_km'] as num).toDouble()
            : null,
    avgvisMiles:
        json['avgvis_miles'] != null
            ? (json['avgvis_miles'] as num).toDouble()
            : null,
    avghumidity:
        json['avghumidity'] != null
            ? (json['avghumidity'] as num).toDouble()
            : null,
    dailyWillItRain: json['daily_will_it_rain'],
    dailyChanceOfRain: json['daily_chance_of_rain'],
    dailyWillItSnow: json['daily_will_it_snow'],
    dailyChanceOfSnow: json['daily_chance_of_snow'],
    condition:
        json['condition'] != null
            ? Condition.fromJson(json['condition'])
            : null,
    uv: json['uv'] != null ? (json['uv'] as num).toDouble() : null,
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['maxtemp_c'] = maxtempC;
    data['maxtemp_f'] = maxtempF;
    data['mintemp_c'] = mintempC;
    data['mintemp_f'] = mintempF;
    data['avgtemp_c'] = avgtempC;
    data['avgtemp_f'] = avgtempF;
    data['maxwind_mph'] = maxwindMph;
    data['maxwind_kph'] = maxwindKph;
    data['totalprecip_mm'] = totalprecipMm;
    data['totalprecip_in'] = totalprecipIn;
    data['totalsnow_cm'] = totalsnowCm;
    data['avgvis_km'] = avgvisKm;
    data['avgvis_miles'] = avgvisMiles;
    data['avghumidity'] = avghumidity;
    data['daily_will_it_rain'] = dailyWillItRain;
    data['daily_chance_of_rain'] = dailyChanceOfRain;
    data['daily_will_it_snow'] = dailyWillItSnow;
    data['daily_chance_of_snow'] = dailyChanceOfSnow;
    if (condition != null) data['condition'] = condition!.toJson();
    data['uv'] = uv;
    return data;
  }
}

class Astro {
  String? sunrise;
  String? sunset;
  String? moonrise;
  String? moonset;
  String? moonPhase;
  int? moonIllumination;
  int? isMoonUp;
  int? isSunUp;

  Astro({
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.moonPhase,
    this.moonIllumination,
    this.isMoonUp,
    this.isSunUp,
  });

  factory Astro.fromJson(Map<String, dynamic> json) => Astro(
    sunrise: json['sunrise'],
    sunset: json['sunset'],
    moonrise: json['moonrise'],
    moonset: json['moonset'],
    moonPhase: json['moon_phase'],
    moonIllumination: json['moon_illumination'],
    isMoonUp: json['is_moon_up'],
    isSunUp: json['is_sun_up'],
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    data['moonrise'] = moonrise;
    data['moonset'] = moonset;
    data['moon_phase'] = moonPhase;
    data['moon_illumination'] = moonIllumination;
    data['is_moon_up'] = isMoonUp;
    data['is_sun_up'] = isSunUp;
    return data;
  }
}

class Hour {
  int? timeEpoch;
  String? time;
  double? tempC;
  double? tempF;
  int? isDay;
  Condition? condition;
  double? windMph;
  double? windKph;
  int? windDegree;
  String? windDir;
  double? pressureMb;
  double? pressureIn;
  double? precipMm;
  double? precipIn;
  double? snowCm;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  double? feelslikeF;
  double? windchillC;
  double? windchillF;
  double? heatindexC;
  double? heatindexF;
  double? dewpointC;
  double? dewpointF;
  int? willItRain;
  int? chanceOfRain;
  int? willItSnow;
  int? chanceOfSnow;
  double? visKm;
  double? visMiles;
  double? gustMph;
  double? gustKph;
  double? uv;

  Hour({
    this.timeEpoch,
    this.time,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.snowCm,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.willItRain,
    this.chanceOfRain,
    this.willItSnow,
    this.chanceOfSnow,
    this.visKm,
    this.visMiles,
    this.gustMph,
    this.gustKph,
    this.uv,
  });

  factory Hour.fromJson(Map<String, dynamic> json) => Hour(
    timeEpoch: json['time_epoch'],
    time: json['time'],
    tempC: json['temp_c'] != null ? (json['temp_c'] as num).toDouble() : null,
    tempF: json['temp_f'] != null ? (json['temp_f'] as num).toDouble() : null,
    isDay: json['is_day'],
    condition:
        json['condition'] != null
            ? Condition.fromJson(json['condition'])
            : null,
    windMph:
        json['wind_mph'] != null ? (json['wind_mph'] as num).toDouble() : null,
    windKph:
        json['wind_kph'] != null ? (json['wind_kph'] as num).toDouble() : null,
    windDegree: json['wind_degree'],
    windDir: json['wind_dir'],
    pressureMb:
        json['pressure_mb'] != null
            ? (json['pressure_mb'] as num).toDouble()
            : null,
    pressureIn:
        json['pressure_in'] != null
            ? (json['pressure_in'] as num).toDouble()
            : null,
    precipMm:
        json['precip_mm'] != null
            ? (json['precip_mm'] as num).toDouble()
            : null,
    precipIn:
        json['precip_in'] != null
            ? (json['precip_in'] as num).toDouble()
            : null,
    snowCm:
        json['snow_cm'] != null ? (json['snow_cm'] as num).toDouble() : null,
    humidity: json['humidity'],
    cloud: json['cloud'],
    feelslikeC:
        json['feelslike_c'] != null
            ? (json['feelslike_c'] as num).toDouble()
            : null,
    feelslikeF:
        json['feelslike_f'] != null
            ? (json['feelslike_f'] as num).toDouble()
            : null,
    windchillC:
        json['windchill_c'] != null
            ? (json['windchill_c'] as num).toDouble()
            : null,
    windchillF:
        json['windchill_f'] != null
            ? (json['windchill_f'] as num).toDouble()
            : null,
    heatindexC:
        json['heatindex_c'] != null
            ? (json['heatindex_c'] as num).toDouble()
            : null,
    heatindexF:
        json['heatindex_f'] != null
            ? (json['heatindex_f'] as num).toDouble()
            : null,
    dewpointC:
        json['dewpoint_c'] != null
            ? (json['dewpoint_c'] as num).toDouble()
            : null,
    dewpointF:
        json['dewpoint_f'] != null
            ? (json['dewpoint_f'] as num).toDouble()
            : null,
    willItRain: json['will_it_rain'],
    chanceOfRain: json['chance_of_rain'],
    willItSnow: json['will_it_snow'],
    chanceOfSnow: json['chance_of_snow'],
    visKm: json['vis_km'] != null ? (json['vis_km'] as num).toDouble() : null,
    visMiles:
        json['vis_miles'] != null
            ? (json['vis_miles'] as num).toDouble()
            : null,
    gustMph:
        json['gust_mph'] != null ? (json['gust_mph'] as num).toDouble() : null,
    gustKph:
        json['gust_kph'] != null ? (json['gust_kph'] as num).toDouble() : null,
    uv: json['uv'] != null ? (json['uv'] as num).toDouble() : null,
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['time_epoch'] = timeEpoch;
    data['time'] = time;
    data['temp_c'] = tempC;
    data['temp_f'] = tempF;
    data['is_day'] = isDay;
    if (condition != null) data['condition'] = condition!.toJson();
    data['wind_mph'] = windMph;
    data['wind_kph'] = windKph;
    data['wind_degree'] = windDegree;
    data['wind_dir'] = windDir;
    data['pressure_mb'] = pressureMb;
    data['pressure_in'] = pressureIn;
    data['precip_mm'] = precipMm;
    data['precip_in'] = precipIn;
    data['snow_cm'] = snowCm;
    data['humidity'] = humidity;
    data['cloud'] = cloud;
    data['feelslike_c'] = feelslikeC;
    data['feelslike_f'] = feelslikeF;
    data['windchill_c'] = windchillC;
    data['windchill_f'] = windchillF;
    data['heatindex_c'] = heatindexC;
    data['heatindex_f'] = heatindexF;
    data['dewpoint_c'] = dewpointC;
    data['dewpoint_f'] = dewpointF;
    data['will_it_rain'] = willItRain;
    data['chance_of_rain'] = chanceOfRain;
    data['will_it_snow'] = willItSnow;
    data['chance_of_snow'] = chanceOfSnow;
    data['vis_km'] = visKm;
    data['vis_miles'] = visMiles;
    data['gust_mph'] = gustMph;
    data['gust_kph'] = gustKph;
    data['uv'] = uv;
    return data;
  }
}
