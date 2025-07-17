// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherAPIModel _$WeatherAPIModelFromJson(Map<String, dynamic> json) {
  return _WeatherAPIModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherAPIModel {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: "timezone_offset")
  int get timezoneOffset => throw _privateConstructorUsedError;
  Current? get current => throw _privateConstructorUsedError;
  List<Hourly>? get hourly => throw _privateConstructorUsedError;
  List<Daily>? get daily => throw _privateConstructorUsedError;
  List<WeatherAlert>? get alerts => throw _privateConstructorUsedError;

  /// Serializes this WeatherAPIModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherAPIModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherAPIModelCopyWith<WeatherAPIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherAPIModelCopyWith<$Res> {
  factory $WeatherAPIModelCopyWith(
          WeatherAPIModel value, $Res Function(WeatherAPIModel) then) =
      _$WeatherAPIModelCopyWithImpl<$Res, WeatherAPIModel>;
  @useResult
  $Res call(
      {double lat,
      double lon,
      String timezone,
      @JsonKey(name: "timezone_offset") int timezoneOffset,
      Current? current,
      List<Hourly>? hourly,
      List<Daily>? daily,
      List<WeatherAlert>? alerts});

  $CurrentCopyWith<$Res>? get current;
}

/// @nodoc
class _$WeatherAPIModelCopyWithImpl<$Res, $Val extends WeatherAPIModel>
    implements $WeatherAPIModelCopyWith<$Res> {
  _$WeatherAPIModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherAPIModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
    Object? timezone = null,
    Object? timezoneOffset = null,
    Object? current = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
    Object? alerts = freezed,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: null == timezoneOffset
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
      hourly: freezed == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<Hourly>?,
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<Daily>?,
      alerts: freezed == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<WeatherAlert>?,
    ) as $Val);
  }

  /// Create a copy of WeatherAPIModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherAPIModelImplCopyWith<$Res>
    implements $WeatherAPIModelCopyWith<$Res> {
  factory _$$WeatherAPIModelImplCopyWith(_$WeatherAPIModelImpl value,
          $Res Function(_$WeatherAPIModelImpl) then) =
      __$$WeatherAPIModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double lat,
      double lon,
      String timezone,
      @JsonKey(name: "timezone_offset") int timezoneOffset,
      Current? current,
      List<Hourly>? hourly,
      List<Daily>? daily,
      List<WeatherAlert>? alerts});

  @override
  $CurrentCopyWith<$Res>? get current;
}

/// @nodoc
class __$$WeatherAPIModelImplCopyWithImpl<$Res>
    extends _$WeatherAPIModelCopyWithImpl<$Res, _$WeatherAPIModelImpl>
    implements _$$WeatherAPIModelImplCopyWith<$Res> {
  __$$WeatherAPIModelImplCopyWithImpl(
      _$WeatherAPIModelImpl _value, $Res Function(_$WeatherAPIModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherAPIModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
    Object? timezone = null,
    Object? timezoneOffset = null,
    Object? current = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
    Object? alerts = freezed,
  }) {
    return _then(_$WeatherAPIModelImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: null == timezoneOffset
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
      hourly: freezed == hourly
          ? _value._hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<Hourly>?,
      daily: freezed == daily
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<Daily>?,
      alerts: freezed == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<WeatherAlert>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherAPIModelImpl implements _WeatherAPIModel {
  const _$WeatherAPIModelImpl(
      {required this.lat,
      required this.lon,
      required this.timezone,
      @JsonKey(name: "timezone_offset") required this.timezoneOffset,
      this.current,
      final List<Hourly>? hourly,
      final List<Daily>? daily,
      final List<WeatherAlert>? alerts})
      : _hourly = hourly,
        _daily = daily,
        _alerts = alerts;

  factory _$WeatherAPIModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherAPIModelImplFromJson(json);

  @override
  final double lat;
  @override
  final double lon;
  @override
  final String timezone;
  @override
  @JsonKey(name: "timezone_offset")
  final int timezoneOffset;
  @override
  final Current? current;
  final List<Hourly>? _hourly;
  @override
  List<Hourly>? get hourly {
    final value = _hourly;
    if (value == null) return null;
    if (_hourly is EqualUnmodifiableListView) return _hourly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Daily>? _daily;
  @override
  List<Daily>? get daily {
    final value = _daily;
    if (value == null) return null;
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WeatherAlert>? _alerts;
  @override
  List<WeatherAlert>? get alerts {
    final value = _alerts;
    if (value == null) return null;
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WeatherAPIModel(lat: $lat, lon: $lon, timezone: $timezone, timezoneOffset: $timezoneOffset, current: $current, hourly: $hourly, daily: $daily, alerts: $alerts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherAPIModelImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneOffset, timezoneOffset) ||
                other.timezoneOffset == timezoneOffset) &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other._hourly, _hourly) &&
            const DeepCollectionEquality().equals(other._daily, _daily) &&
            const DeepCollectionEquality().equals(other._alerts, _alerts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lat,
      lon,
      timezone,
      timezoneOffset,
      current,
      const DeepCollectionEquality().hash(_hourly),
      const DeepCollectionEquality().hash(_daily),
      const DeepCollectionEquality().hash(_alerts));

  /// Create a copy of WeatherAPIModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherAPIModelImplCopyWith<_$WeatherAPIModelImpl> get copyWith =>
      __$$WeatherAPIModelImplCopyWithImpl<_$WeatherAPIModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherAPIModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherAPIModel implements WeatherAPIModel {
  const factory _WeatherAPIModel(
      {required final double lat,
      required final double lon,
      required final String timezone,
      @JsonKey(name: "timezone_offset") required final int timezoneOffset,
      final Current? current,
      final List<Hourly>? hourly,
      final List<Daily>? daily,
      final List<WeatherAlert>? alerts}) = _$WeatherAPIModelImpl;

  factory _WeatherAPIModel.fromJson(Map<String, dynamic> json) =
      _$WeatherAPIModelImpl.fromJson;

  @override
  double get lat;
  @override
  double get lon;
  @override
  String get timezone;
  @override
  @JsonKey(name: "timezone_offset")
  int get timezoneOffset;
  @override
  Current? get current;
  @override
  List<Hourly>? get hourly;
  @override
  List<Daily>? get daily;
  @override
  List<WeatherAlert>? get alerts;

  /// Create a copy of WeatherAPIModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherAPIModelImplCopyWith<_$WeatherAPIModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return _Current.fromJson(json);
}

/// @nodoc
mixin _$Current {
  int get dt => throw _privateConstructorUsedError;
  int? get sunrise => throw _privateConstructorUsedError;
  int? get sunset => throw _privateConstructorUsedError;
  double? get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like')
  double? get feelsLike => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'dew_point')
  double? get dewPoint => throw _privateConstructorUsedError;
  double? get uvi => throw _privateConstructorUsedError;
  int? get clouds => throw _privateConstructorUsedError;
  int? get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed')
  double? get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_deg')
  int? get windDeg => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_gust')
  double? get windGust => throw _privateConstructorUsedError;
  List<Weather>? get weather => throw _privateConstructorUsedError;

  /// Serializes this Current to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res, Current>;
  @useResult
  $Res call(
      {int dt,
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
      @JsonKey(name: 'wind_deg') int? windDeg,
      @JsonKey(name: 'wind_gust') double? windGust,
      List<Weather>? weather});
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res, $Val extends Current>
    implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? uvi = freezed,
    Object? clouds = freezed,
    Object? visibility = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dewPoint: freezed == dewPoint
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: freezed == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: freezed == windDeg
          ? _value.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int?,
      windGust: freezed == windGust
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentImplCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$$CurrentImplCopyWith(
          _$CurrentImpl value, $Res Function(_$CurrentImpl) then) =
      __$$CurrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int dt,
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
      @JsonKey(name: 'wind_deg') int? windDeg,
      @JsonKey(name: 'wind_gust') double? windGust,
      List<Weather>? weather});
}

/// @nodoc
class __$$CurrentImplCopyWithImpl<$Res>
    extends _$CurrentCopyWithImpl<$Res, _$CurrentImpl>
    implements _$$CurrentImplCopyWith<$Res> {
  __$$CurrentImplCopyWithImpl(
      _$CurrentImpl _value, $Res Function(_$CurrentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? uvi = freezed,
    Object? clouds = freezed,
    Object? visibility = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
  }) {
    return _then(_$CurrentImpl(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dewPoint: freezed == dewPoint
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: freezed == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: freezed == windDeg
          ? _value.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int?,
      windGust: freezed == windGust
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: freezed == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentImpl implements _Current {
  const _$CurrentImpl(
      {required this.dt,
      this.sunrise,
      this.sunset,
      this.temp,
      @JsonKey(name: 'feels_like') this.feelsLike,
      this.pressure,
      this.humidity,
      @JsonKey(name: 'dew_point') this.dewPoint,
      this.uvi,
      this.clouds,
      this.visibility,
      @JsonKey(name: 'wind_speed') this.windSpeed,
      @JsonKey(name: 'wind_deg') this.windDeg,
      @JsonKey(name: 'wind_gust') this.windGust,
      final List<Weather>? weather})
      : _weather = weather;

  factory _$CurrentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentImplFromJson(json);

  @override
  final int dt;
  @override
  final int? sunrise;
  @override
  final int? sunset;
  @override
  final double? temp;
  @override
  @JsonKey(name: 'feels_like')
  final double? feelsLike;
  @override
  final int? pressure;
  @override
  final int? humidity;
  @override
  @JsonKey(name: 'dew_point')
  final double? dewPoint;
  @override
  final double? uvi;
  @override
  final int? clouds;
  @override
  final int? visibility;
  @override
  @JsonKey(name: 'wind_speed')
  final double? windSpeed;
  @override
  @JsonKey(name: 'wind_deg')
  final int? windDeg;
  @override
  @JsonKey(name: 'wind_gust')
  final double? windGust;
  final List<Weather>? _weather;
  @override
  List<Weather>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Current(dt: $dt, sunrise: $sunrise, sunset: $sunset, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, uvi: $uvi, clouds: $clouds, visibility: $visibility, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.dewPoint, dewPoint) ||
                other.dewPoint == dewPoint) &&
            (identical(other.uvi, uvi) || other.uvi == uvi) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDeg, windDeg) || other.windDeg == windDeg) &&
            (identical(other.windGust, windGust) ||
                other.windGust == windGust) &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      sunrise,
      sunset,
      temp,
      feelsLike,
      pressure,
      humidity,
      dewPoint,
      uvi,
      clouds,
      visibility,
      windSpeed,
      windDeg,
      windGust,
      const DeepCollectionEquality().hash(_weather));

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      __$$CurrentImplCopyWithImpl<_$CurrentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentImplToJson(
      this,
    );
  }
}

abstract class _Current implements Current {
  const factory _Current(
      {required final int dt,
      final int? sunrise,
      final int? sunset,
      final double? temp,
      @JsonKey(name: 'feels_like') final double? feelsLike,
      final int? pressure,
      final int? humidity,
      @JsonKey(name: 'dew_point') final double? dewPoint,
      final double? uvi,
      final int? clouds,
      final int? visibility,
      @JsonKey(name: 'wind_speed') final double? windSpeed,
      @JsonKey(name: 'wind_deg') final int? windDeg,
      @JsonKey(name: 'wind_gust') final double? windGust,
      final List<Weather>? weather}) = _$CurrentImpl;

  factory _Current.fromJson(Map<String, dynamic> json) = _$CurrentImpl.fromJson;

  @override
  int get dt;
  @override
  int? get sunrise;
  @override
  int? get sunset;
  @override
  double? get temp;
  @override
  @JsonKey(name: 'feels_like')
  double? get feelsLike;
  @override
  int? get pressure;
  @override
  int? get humidity;
  @override
  @JsonKey(name: 'dew_point')
  double? get dewPoint;
  @override
  double? get uvi;
  @override
  int? get clouds;
  @override
  int? get visibility;
  @override
  @JsonKey(name: 'wind_speed')
  double? get windSpeed;
  @override
  @JsonKey(name: 'wind_deg')
  int? get windDeg;
  @override
  @JsonKey(name: 'wind_gust')
  double? get windGust;
  @override
  List<Weather>? get weather;

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Hourly _$HourlyFromJson(Map<String, dynamic> json) {
  return _Hourly.fromJson(json);
}

/// @nodoc
mixin _$Hourly {
  int get dt => throw _privateConstructorUsedError;
  double? get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like')
  double? get feelsLike => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'dew_point')
  double? get dewPoint => throw _privateConstructorUsedError;
  double? get uvi => throw _privateConstructorUsedError;
  int? get clouds => throw _privateConstructorUsedError;
  int? get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed')
  double? get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_deg')
  int? get windDeg => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_gust')
  double? get windGust => throw _privateConstructorUsedError;
  List<Weather>? get weather => throw _privateConstructorUsedError;

  /// Serializes this Hourly to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Hourly
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourlyCopyWith<Hourly> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyCopyWith<$Res> {
  factory $HourlyCopyWith(Hourly value, $Res Function(Hourly) then) =
      _$HourlyCopyWithImpl<$Res, Hourly>;
  @useResult
  $Res call(
      {int dt,
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
      List<Weather>? weather});
}

/// @nodoc
class _$HourlyCopyWithImpl<$Res, $Val extends Hourly>
    implements $HourlyCopyWith<$Res> {
  _$HourlyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Hourly
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? uvi = freezed,
    Object? clouds = freezed,
    Object? visibility = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dewPoint: freezed == dewPoint
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: freezed == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: freezed == windDeg
          ? _value.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int?,
      windGust: freezed == windGust
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyImplCopyWith<$Res> implements $HourlyCopyWith<$Res> {
  factory _$$HourlyImplCopyWith(
          _$HourlyImpl value, $Res Function(_$HourlyImpl) then) =
      __$$HourlyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int dt,
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
      List<Weather>? weather});
}

/// @nodoc
class __$$HourlyImplCopyWithImpl<$Res>
    extends _$HourlyCopyWithImpl<$Res, _$HourlyImpl>
    implements _$$HourlyImplCopyWith<$Res> {
  __$$HourlyImplCopyWithImpl(
      _$HourlyImpl _value, $Res Function(_$HourlyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Hourly
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? uvi = freezed,
    Object? clouds = freezed,
    Object? visibility = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
  }) {
    return _then(_$HourlyImpl(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dewPoint: freezed == dewPoint
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: freezed == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: freezed == windDeg
          ? _value.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int?,
      windGust: freezed == windGust
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: freezed == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyImpl implements _Hourly {
  const _$HourlyImpl(
      {required this.dt,
      this.temp,
      @JsonKey(name: 'feels_like') this.feelsLike,
      this.pressure,
      this.humidity,
      @JsonKey(name: 'dew_point') this.dewPoint,
      this.uvi,
      this.clouds,
      this.visibility,
      @JsonKey(name: 'wind_speed') this.windSpeed,
      @JsonKey(name: 'wind_deg') this.windDeg,
      @JsonKey(name: 'wind_gust') this.windGust,
      final List<Weather>? weather})
      : _weather = weather;

  factory _$HourlyImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyImplFromJson(json);

  @override
  final int dt;
  @override
  final double? temp;
  @override
  @JsonKey(name: 'feels_like')
  final double? feelsLike;
  @override
  final int? pressure;
  @override
  final int? humidity;
  @override
  @JsonKey(name: 'dew_point')
  final double? dewPoint;
  @override
  final double? uvi;
  @override
  final int? clouds;
  @override
  final int? visibility;
  @override
  @JsonKey(name: 'wind_speed')
  final double? windSpeed;
  @override
  @JsonKey(name: 'wind_deg')
  final int? windDeg;
  @override
  @JsonKey(name: 'wind_gust')
  final double? windGust;
  final List<Weather>? _weather;
  @override
  List<Weather>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Hourly(dt: $dt, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, uvi: $uvi, clouds: $clouds, visibility: $visibility, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.dewPoint, dewPoint) ||
                other.dewPoint == dewPoint) &&
            (identical(other.uvi, uvi) || other.uvi == uvi) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDeg, windDeg) || other.windDeg == windDeg) &&
            (identical(other.windGust, windGust) ||
                other.windGust == windGust) &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      temp,
      feelsLike,
      pressure,
      humidity,
      dewPoint,
      uvi,
      clouds,
      visibility,
      windSpeed,
      windDeg,
      windGust,
      const DeepCollectionEquality().hash(_weather));

  /// Create a copy of Hourly
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyImplCopyWith<_$HourlyImpl> get copyWith =>
      __$$HourlyImplCopyWithImpl<_$HourlyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyImplToJson(
      this,
    );
  }
}

abstract class _Hourly implements Hourly {
  const factory _Hourly(
      {required final int dt,
      final double? temp,
      @JsonKey(name: 'feels_like') final double? feelsLike,
      final int? pressure,
      final int? humidity,
      @JsonKey(name: 'dew_point') final double? dewPoint,
      final double? uvi,
      final int? clouds,
      final int? visibility,
      @JsonKey(name: 'wind_speed') final double? windSpeed,
      @JsonKey(name: 'wind_deg') final int? windDeg,
      @JsonKey(name: 'wind_gust') final double? windGust,
      final List<Weather>? weather}) = _$HourlyImpl;

  factory _Hourly.fromJson(Map<String, dynamic> json) = _$HourlyImpl.fromJson;

  @override
  int get dt;
  @override
  double? get temp;
  @override
  @JsonKey(name: 'feels_like')
  double? get feelsLike;
  @override
  int? get pressure;
  @override
  int? get humidity;
  @override
  @JsonKey(name: 'dew_point')
  double? get dewPoint;
  @override
  double? get uvi;
  @override
  int? get clouds;
  @override
  int? get visibility;
  @override
  @JsonKey(name: 'wind_speed')
  double? get windSpeed;
  @override
  @JsonKey(name: 'wind_deg')
  int? get windDeg;
  @override
  @JsonKey(name: 'wind_gust')
  double? get windGust;
  @override
  List<Weather>? get weather;

  /// Create a copy of Hourly
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourlyImplCopyWith<_$HourlyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Daily _$DailyFromJson(Map<String, dynamic> json) {
  return _Daily.fromJson(json);
}

/// @nodoc
mixin _$Daily {
  int get dt => throw _privateConstructorUsedError;
  int? get sunrise => throw _privateConstructorUsedError;
  int? get sunset => throw _privateConstructorUsedError;
  int? get moonrise => throw _privateConstructorUsedError;
  int? get moonset => throw _privateConstructorUsedError;
  @JsonKey(name: 'moon_phase')
  double? get moonPhase => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  Temp? get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like')
  FeelsLike? get feelsLike => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'dew_point')
  double? get dewPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed')
  double? get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_deg')
  int? get windDeg => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_gust')
  double? get windGust => throw _privateConstructorUsedError;
  List<Weather>? get weather => throw _privateConstructorUsedError;
  int? get clouds => throw _privateConstructorUsedError;
  double? get pop => throw _privateConstructorUsedError;
  double? get rain => throw _privateConstructorUsedError;
  double? get uvi => throw _privateConstructorUsedError;

  /// Serializes this Daily to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyCopyWith<Daily> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyCopyWith<$Res> {
  factory $DailyCopyWith(Daily value, $Res Function(Daily) then) =
      _$DailyCopyWithImpl<$Res, Daily>;
  @useResult
  $Res call(
      {int dt,
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
      double? uvi});

  $TempCopyWith<$Res>? get temp;
  $FeelsLikeCopyWith<$Res>? get feelsLike;
}

/// @nodoc
class _$DailyCopyWithImpl<$Res, $Val extends Daily>
    implements $DailyCopyWith<$Res> {
  _$DailyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moonPhase = freezed,
    Object? summary = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? pop = freezed,
    Object? rain = freezed,
    Object? uvi = freezed,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      moonrise: freezed == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as int?,
      moonset: freezed == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as int?,
      moonPhase: freezed == moonPhase
          ? _value.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as double?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temp?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as FeelsLike?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dewPoint: freezed == dewPoint
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: freezed == windDeg
          ? _value.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int?,
      windGust: freezed == windGust
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: freezed == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TempCopyWith<$Res>? get temp {
    if (_value.temp == null) {
      return null;
    }

    return $TempCopyWith<$Res>(_value.temp!, (value) {
      return _then(_value.copyWith(temp: value) as $Val);
    });
  }

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeelsLikeCopyWith<$Res>? get feelsLike {
    if (_value.feelsLike == null) {
      return null;
    }

    return $FeelsLikeCopyWith<$Res>(_value.feelsLike!, (value) {
      return _then(_value.copyWith(feelsLike: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyImplCopyWith<$Res> implements $DailyCopyWith<$Res> {
  factory _$$DailyImplCopyWith(
          _$DailyImpl value, $Res Function(_$DailyImpl) then) =
      __$$DailyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int dt,
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
      double? uvi});

  @override
  $TempCopyWith<$Res>? get temp;
  @override
  $FeelsLikeCopyWith<$Res>? get feelsLike;
}

/// @nodoc
class __$$DailyImplCopyWithImpl<$Res>
    extends _$DailyCopyWithImpl<$Res, _$DailyImpl>
    implements _$$DailyImplCopyWith<$Res> {
  __$$DailyImplCopyWithImpl(
      _$DailyImpl _value, $Res Function(_$DailyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moonPhase = freezed,
    Object? summary = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? pop = freezed,
    Object? rain = freezed,
    Object? uvi = freezed,
  }) {
    return _then(_$DailyImpl(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      moonrise: freezed == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as int?,
      moonset: freezed == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as int?,
      moonPhase: freezed == moonPhase
          ? _value.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as double?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temp?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as FeelsLike?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dewPoint: freezed == dewPoint
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: freezed == windDeg
          ? _value.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int?,
      windGust: freezed == windGust
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: freezed == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: freezed == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyImpl implements _Daily {
  const _$DailyImpl(
      {required this.dt,
      this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      @JsonKey(name: 'moon_phase') this.moonPhase,
      this.summary,
      this.temp,
      @JsonKey(name: 'feels_like') this.feelsLike,
      this.pressure,
      this.humidity,
      @JsonKey(name: 'dew_point') this.dewPoint,
      @JsonKey(name: 'wind_speed') this.windSpeed,
      @JsonKey(name: 'wind_deg') this.windDeg,
      @JsonKey(name: 'wind_gust') this.windGust,
      final List<Weather>? weather,
      this.clouds,
      this.pop,
      this.rain,
      this.uvi})
      : _weather = weather;

  factory _$DailyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyImplFromJson(json);

  @override
  final int dt;
  @override
  final int? sunrise;
  @override
  final int? sunset;
  @override
  final int? moonrise;
  @override
  final int? moonset;
  @override
  @JsonKey(name: 'moon_phase')
  final double? moonPhase;
  @override
  final String? summary;
  @override
  final Temp? temp;
  @override
  @JsonKey(name: 'feels_like')
  final FeelsLike? feelsLike;
  @override
  final int? pressure;
  @override
  final int? humidity;
  @override
  @JsonKey(name: 'dew_point')
  final double? dewPoint;
  @override
  @JsonKey(name: 'wind_speed')
  final double? windSpeed;
  @override
  @JsonKey(name: 'wind_deg')
  final int? windDeg;
  @override
  @JsonKey(name: 'wind_gust')
  final double? windGust;
  final List<Weather>? _weather;
  @override
  List<Weather>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? clouds;
  @override
  final double? pop;
  @override
  final double? rain;
  @override
  final double? uvi;

  @override
  String toString() {
    return 'Daily(dt: $dt, sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moonPhase: $moonPhase, summary: $summary, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather, clouds: $clouds, pop: $pop, rain: $rain, uvi: $uvi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.moonrise, moonrise) ||
                other.moonrise == moonrise) &&
            (identical(other.moonset, moonset) || other.moonset == moonset) &&
            (identical(other.moonPhase, moonPhase) ||
                other.moonPhase == moonPhase) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.dewPoint, dewPoint) ||
                other.dewPoint == dewPoint) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDeg, windDeg) || other.windDeg == windDeg) &&
            (identical(other.windGust, windGust) ||
                other.windGust == windGust) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.rain, rain) || other.rain == rain) &&
            (identical(other.uvi, uvi) || other.uvi == uvi));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        dt,
        sunrise,
        sunset,
        moonrise,
        moonset,
        moonPhase,
        summary,
        temp,
        feelsLike,
        pressure,
        humidity,
        dewPoint,
        windSpeed,
        windDeg,
        windGust,
        const DeepCollectionEquality().hash(_weather),
        clouds,
        pop,
        rain,
        uvi
      ]);

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      __$$DailyImplCopyWithImpl<_$DailyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyImplToJson(
      this,
    );
  }
}

abstract class _Daily implements Daily {
  const factory _Daily(
      {required final int dt,
      final int? sunrise,
      final int? sunset,
      final int? moonrise,
      final int? moonset,
      @JsonKey(name: 'moon_phase') final double? moonPhase,
      final String? summary,
      final Temp? temp,
      @JsonKey(name: 'feels_like') final FeelsLike? feelsLike,
      final int? pressure,
      final int? humidity,
      @JsonKey(name: 'dew_point') final double? dewPoint,
      @JsonKey(name: 'wind_speed') final double? windSpeed,
      @JsonKey(name: 'wind_deg') final int? windDeg,
      @JsonKey(name: 'wind_gust') final double? windGust,
      final List<Weather>? weather,
      final int? clouds,
      final double? pop,
      final double? rain,
      final double? uvi}) = _$DailyImpl;

  factory _Daily.fromJson(Map<String, dynamic> json) = _$DailyImpl.fromJson;

  @override
  int get dt;
  @override
  int? get sunrise;
  @override
  int? get sunset;
  @override
  int? get moonrise;
  @override
  int? get moonset;
  @override
  @JsonKey(name: 'moon_phase')
  double? get moonPhase;
  @override
  String? get summary;
  @override
  Temp? get temp;
  @override
  @JsonKey(name: 'feels_like')
  FeelsLike? get feelsLike;
  @override
  int? get pressure;
  @override
  int? get humidity;
  @override
  @JsonKey(name: 'dew_point')
  double? get dewPoint;
  @override
  @JsonKey(name: 'wind_speed')
  double? get windSpeed;
  @override
  @JsonKey(name: 'wind_deg')
  int? get windDeg;
  @override
  @JsonKey(name: 'wind_gust')
  double? get windGust;
  @override
  List<Weather>? get weather;
  @override
  int? get clouds;
  @override
  double? get pop;
  @override
  double? get rain;
  @override
  double? get uvi;

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherAlert _$WeatherAlertFromJson(Map<String, dynamic> json) {
  return _WeatherAlert.fromJson(json);
}

/// @nodoc
mixin _$WeatherAlert {
  @JsonKey(name: 'sender_name')
  String? get senderName => throw _privateConstructorUsedError;
  String? get event => throw _privateConstructorUsedError;
  int? get start => throw _privateConstructorUsedError;
  int? get end => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;

  /// Serializes this WeatherAlert to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherAlert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherAlertCopyWith<WeatherAlert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherAlertCopyWith<$Res> {
  factory $WeatherAlertCopyWith(
          WeatherAlert value, $Res Function(WeatherAlert) then) =
      _$WeatherAlertCopyWithImpl<$Res, WeatherAlert>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sender_name') String? senderName,
      String? event,
      int? start,
      int? end,
      String? description,
      List<String>? tags});
}

/// @nodoc
class _$WeatherAlertCopyWithImpl<$Res, $Val extends WeatherAlert>
    implements $WeatherAlertCopyWith<$Res> {
  _$WeatherAlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherAlert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderName = freezed,
    Object? event = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? description = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherAlertImplCopyWith<$Res>
    implements $WeatherAlertCopyWith<$Res> {
  factory _$$WeatherAlertImplCopyWith(
          _$WeatherAlertImpl value, $Res Function(_$WeatherAlertImpl) then) =
      __$$WeatherAlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sender_name') String? senderName,
      String? event,
      int? start,
      int? end,
      String? description,
      List<String>? tags});
}

/// @nodoc
class __$$WeatherAlertImplCopyWithImpl<$Res>
    extends _$WeatherAlertCopyWithImpl<$Res, _$WeatherAlertImpl>
    implements _$$WeatherAlertImplCopyWith<$Res> {
  __$$WeatherAlertImplCopyWithImpl(
      _$WeatherAlertImpl _value, $Res Function(_$WeatherAlertImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherAlert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderName = freezed,
    Object? event = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? description = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$WeatherAlertImpl(
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherAlertImpl implements _WeatherAlert {
  const _$WeatherAlertImpl(
      {@JsonKey(name: 'sender_name') this.senderName,
      this.event,
      this.start,
      this.end,
      this.description,
      final List<String>? tags})
      : _tags = tags;

  factory _$WeatherAlertImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherAlertImplFromJson(json);

  @override
  @JsonKey(name: 'sender_name')
  final String? senderName;
  @override
  final String? event;
  @override
  final int? start;
  @override
  final int? end;
  @override
  final String? description;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WeatherAlert(senderName: $senderName, event: $event, start: $start, end: $end, description: $description, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherAlertImpl &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, senderName, event, start, end,
      description, const DeepCollectionEquality().hash(_tags));

  /// Create a copy of WeatherAlert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherAlertImplCopyWith<_$WeatherAlertImpl> get copyWith =>
      __$$WeatherAlertImplCopyWithImpl<_$WeatherAlertImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherAlertImplToJson(
      this,
    );
  }
}

abstract class _WeatherAlert implements WeatherAlert {
  const factory _WeatherAlert(
      {@JsonKey(name: 'sender_name') final String? senderName,
      final String? event,
      final int? start,
      final int? end,
      final String? description,
      final List<String>? tags}) = _$WeatherAlertImpl;

  factory _WeatherAlert.fromJson(Map<String, dynamic> json) =
      _$WeatherAlertImpl.fromJson;

  @override
  @JsonKey(name: 'sender_name')
  String? get senderName;
  @override
  String? get event;
  @override
  int? get start;
  @override
  int? get end;
  @override
  String? get description;
  @override
  List<String>? get tags;

  /// Create a copy of WeatherAlert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherAlertImplCopyWith<_$WeatherAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Temp _$TempFromJson(Map<String, dynamic> json) {
  return _Temp.fromJson(json);
}

/// @nodoc
mixin _$Temp {
  double? get day => throw _privateConstructorUsedError;
  double? get min => throw _privateConstructorUsedError;
  double? get max => throw _privateConstructorUsedError;
  double? get night => throw _privateConstructorUsedError;
  double? get eve => throw _privateConstructorUsedError;
  double? get morn => throw _privateConstructorUsedError;

  /// Serializes this Temp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Temp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TempCopyWith<Temp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempCopyWith<$Res> {
  factory $TempCopyWith(Temp value, $Res Function(Temp) then) =
      _$TempCopyWithImpl<$Res, Temp>;
  @useResult
  $Res call(
      {double? day,
      double? min,
      double? max,
      double? night,
      double? eve,
      double? morn});
}

/// @nodoc
class _$TempCopyWithImpl<$Res, $Val extends Temp>
    implements $TempCopyWith<$Res> {
  _$TempCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Temp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: freezed == eve
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: freezed == morn
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TempImplCopyWith<$Res> implements $TempCopyWith<$Res> {
  factory _$$TempImplCopyWith(
          _$TempImpl value, $Res Function(_$TempImpl) then) =
      __$$TempImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? day,
      double? min,
      double? max,
      double? night,
      double? eve,
      double? morn});
}

/// @nodoc
class __$$TempImplCopyWithImpl<$Res>
    extends _$TempCopyWithImpl<$Res, _$TempImpl>
    implements _$$TempImplCopyWith<$Res> {
  __$$TempImplCopyWithImpl(_$TempImpl _value, $Res Function(_$TempImpl) _then)
      : super(_value, _then);

  /// Create a copy of Temp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_$TempImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: freezed == eve
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: freezed == morn
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TempImpl implements _Temp {
  const _$TempImpl(
      {this.day, this.min, this.max, this.night, this.eve, this.morn});

  factory _$TempImpl.fromJson(Map<String, dynamic> json) =>
      _$$TempImplFromJson(json);

  @override
  final double? day;
  @override
  final double? min;
  @override
  final double? max;
  @override
  final double? night;
  @override
  final double? eve;
  @override
  final double? morn;

  @override
  String toString() {
    return 'Temp(day: $day, min: $min, max: $max, night: $night, eve: $eve, morn: $morn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TempImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.night, night) || other.night == night) &&
            (identical(other.eve, eve) || other.eve == eve) &&
            (identical(other.morn, morn) || other.morn == morn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, min, max, night, eve, morn);

  /// Create a copy of Temp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TempImplCopyWith<_$TempImpl> get copyWith =>
      __$$TempImplCopyWithImpl<_$TempImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TempImplToJson(
      this,
    );
  }
}

abstract class _Temp implements Temp {
  const factory _Temp(
      {final double? day,
      final double? min,
      final double? max,
      final double? night,
      final double? eve,
      final double? morn}) = _$TempImpl;

  factory _Temp.fromJson(Map<String, dynamic> json) = _$TempImpl.fromJson;

  @override
  double? get day;
  @override
  double? get min;
  @override
  double? get max;
  @override
  double? get night;
  @override
  double? get eve;
  @override
  double? get morn;

  /// Create a copy of Temp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TempImplCopyWith<_$TempImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeelsLike _$FeelsLikeFromJson(Map<String, dynamic> json) {
  return _FeelsLike.fromJson(json);
}

/// @nodoc
mixin _$FeelsLike {
  double? get day => throw _privateConstructorUsedError;
  double? get night => throw _privateConstructorUsedError;
  double? get eve => throw _privateConstructorUsedError;
  double? get morn => throw _privateConstructorUsedError;

  /// Serializes this FeelsLike to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeelsLike
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeelsLikeCopyWith<FeelsLike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelsLikeCopyWith<$Res> {
  factory $FeelsLikeCopyWith(FeelsLike value, $Res Function(FeelsLike) then) =
      _$FeelsLikeCopyWithImpl<$Res, FeelsLike>;
  @useResult
  $Res call({double? day, double? night, double? eve, double? morn});
}

/// @nodoc
class _$FeelsLikeCopyWithImpl<$Res, $Val extends FeelsLike>
    implements $FeelsLikeCopyWith<$Res> {
  _$FeelsLikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeelsLike
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: freezed == eve
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: freezed == morn
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeelsLikeImplCopyWith<$Res>
    implements $FeelsLikeCopyWith<$Res> {
  factory _$$FeelsLikeImplCopyWith(
          _$FeelsLikeImpl value, $Res Function(_$FeelsLikeImpl) then) =
      __$$FeelsLikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? day, double? night, double? eve, double? morn});
}

/// @nodoc
class __$$FeelsLikeImplCopyWithImpl<$Res>
    extends _$FeelsLikeCopyWithImpl<$Res, _$FeelsLikeImpl>
    implements _$$FeelsLikeImplCopyWith<$Res> {
  __$$FeelsLikeImplCopyWithImpl(
      _$FeelsLikeImpl _value, $Res Function(_$FeelsLikeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeelsLike
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_$FeelsLikeImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: freezed == eve
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: freezed == morn
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeelsLikeImpl implements _FeelsLike {
  const _$FeelsLikeImpl({this.day, this.night, this.eve, this.morn});

  factory _$FeelsLikeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeelsLikeImplFromJson(json);

  @override
  final double? day;
  @override
  final double? night;
  @override
  final double? eve;
  @override
  final double? morn;

  @override
  String toString() {
    return 'FeelsLike(day: $day, night: $night, eve: $eve, morn: $morn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeelsLikeImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.night, night) || other.night == night) &&
            (identical(other.eve, eve) || other.eve == eve) &&
            (identical(other.morn, morn) || other.morn == morn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, night, eve, morn);

  /// Create a copy of FeelsLike
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeelsLikeImplCopyWith<_$FeelsLikeImpl> get copyWith =>
      __$$FeelsLikeImplCopyWithImpl<_$FeelsLikeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeelsLikeImplToJson(
      this,
    );
  }
}

abstract class _FeelsLike implements FeelsLike {
  const factory _FeelsLike(
      {final double? day,
      final double? night,
      final double? eve,
      final double? morn}) = _$FeelsLikeImpl;

  factory _FeelsLike.fromJson(Map<String, dynamic> json) =
      _$FeelsLikeImpl.fromJson;

  @override
  double? get day;
  @override
  double? get night;
  @override
  double? get eve;
  @override
  double? get morn;

  /// Create a copy of FeelsLike
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeelsLikeImplCopyWith<_$FeelsLikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  int? get id => throw _privateConstructorUsedError;
  String? get main => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this Weather to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call({int? id, String? main, String? description, String? icon});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
          _$WeatherImpl value, $Res Function(_$WeatherImpl) then) =
      __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? main, String? description, String? icon});
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
      _$WeatherImpl _value, $Res Function(_$WeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$WeatherImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherImpl implements _Weather {
  const _$WeatherImpl({this.id, this.main, this.description, this.icon});

  factory _$WeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherImplFromJson(json);

  @override
  final int? id;
  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  @override
  String toString() {
    return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherImplToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {final int? id,
      final String? main,
      final String? description,
      final String? icon}) = _$WeatherImpl;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$WeatherImpl.fromJson;

  @override
  int? get id;
  @override
  String? get main;
  @override
  String? get description;
  @override
  String? get icon;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
