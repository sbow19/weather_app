import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_api_model.freezed.dart';
part 'weather_api_model.g.dart';

@freezed
class WeatherAPIModel with _$WeatherAPIModel {
  const factory WeatherAPIModel({
    required double lat,
    required double lon,
    required String timezone,
    @JsonKey(name: "timezone_offset") required int timezoneOffset,
    Current? current,
    List<Hourly>? hourly,
    List<Daily>? daily,
    List<WeatherAlert>? alerts

  }) = _WeatherAPIModel;

  factory WeatherAPIModel.fromJson(Map<String, dynamic> json) => _$WeatherAPIModelFromJson(json);
}


@freezed
class Current with _$Current {
  const factory Current({
    required int dt,
    int? sunrise,
    int? sunset,
    double? temp,
    @JsonKey(name: 'feels_like') double? feelsLike,
    int? pressure,
    int? humidity,
    @JsonKey(name: 'dew_point') double? dewPoint,
    double? uvi,
    int? clouds,
    int? visibility,
    @JsonKey(name: 'wind_speed') double? windSpeed,
    @JsonKey(name: 'wind_deg')  int? windDeg,
    @JsonKey(name: 'wind_gust') double? windGust,
    List<Weather>? weather,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}

@freezed
class Hourly with _$Hourly {
  const factory Hourly({
    required int dt,
    double? temp,
    @JsonKey(name: 'feels_like') double? feelsLike,
    int? pressure,
    int? humidity,
    @JsonKey(name: 'dew_point') double? dewPoint,
    double? uvi,
    int? clouds,
    int? visibility,
    @JsonKey(name: 'wind_speed') double? windSpeed,
    @JsonKey(name: 'wind_deg') int? windDeg,
    @JsonKey(name: 'wind_gust') double? windGust,
    List<Weather>? weather,
  }) = _Hourly;

  factory Hourly.fromJson(Map<String, dynamic> json) =>
      _$HourlyFromJson(json);
}

@freezed
class Daily with _$Daily {
  const factory Daily({
    required int dt,
    int? sunrise,
    int? sunset,
    int? moonrise,
    int? moonset,
    @JsonKey(name: 'moon_phase') double? moonPhase,
    String? summary,
    Temp? temp,
    @JsonKey(name: 'feels_like') FeelsLike? feelsLike,
    int? pressure,
    int? humidity,
    @JsonKey(name: 'dew_point') double? dewPoint,
    @JsonKey(name: 'wind_speed') double? windSpeed,
    @JsonKey(name: 'wind_deg') int? windDeg,
    @JsonKey(name: 'wind_gust') double? windGust,
    List<Weather>? weather,
    int? clouds,
    double? pop,
    double? rain,
    double? uvi,
  }) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
}

@freezed
class WeatherAlert with _$WeatherAlert {
  const factory WeatherAlert({
    @JsonKey(name: 'sender_name') String? senderName,
    String? event,
    int? start,
    int? end,
    String? description,
    List<String>? tags,
  }) = _WeatherAlert;

  factory WeatherAlert.fromJson(Map<String, dynamic> json) =>
      _$WeatherAlertFromJson(json);
}

@freezed
class Temp with _$Temp {
  const factory Temp({
    double? day,
    double? min,
    double? max,
    double? night,
    double? eve,
    double? morn,
  }) = _Temp;

  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);
}

@freezed
class FeelsLike with _$FeelsLike {
  const factory FeelsLike({
    double? day,
    double? night,
    double? eve,
    double? morn,
  }) = _FeelsLike;

  factory FeelsLike.fromJson(Map<String, dynamic> json) => _$FeelsLikeFromJson(json);
}

@freezed
class Weather with _$Weather {
  const factory Weather({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}