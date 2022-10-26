// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.endpoint_location;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndpointLocation extends EndpointLocation {
  @override
  final String? city;
  @override
  final String? country;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String? postalCode;
  @override
  final String? region;

  factory _$EndpointLocation(
          [void Function(EndpointLocationBuilder)? updates]) =>
      (new EndpointLocationBuilder()..update(updates))._build();

  _$EndpointLocation._(
      {this.city,
      this.country,
      required this.latitude,
      required this.longitude,
      this.postalCode,
      this.region})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        latitude, r'EndpointLocation', 'latitude');
    BuiltValueNullFieldError.checkNotNull(
        longitude, r'EndpointLocation', 'longitude');
  }

  @override
  EndpointLocation rebuild(void Function(EndpointLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointLocationBuilder toBuilder() =>
      new EndpointLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndpointLocation &&
        city == other.city &&
        country == other.country &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        postalCode == other.postalCode &&
        region == other.region;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, city.hashCode), country.hashCode),
                    latitude.hashCode),
                longitude.hashCode),
            postalCode.hashCode),
        region.hashCode));
  }
}

class EndpointLocationBuilder
    implements Builder<EndpointLocation, EndpointLocationBuilder> {
  _$EndpointLocation? _$v;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  EndpointLocationBuilder() {
    EndpointLocation._init(this);
  }

  EndpointLocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _city = $v.city;
      _country = $v.country;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _postalCode = $v.postalCode;
      _region = $v.region;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EndpointLocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EndpointLocation;
  }

  @override
  void update(void Function(EndpointLocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EndpointLocation build() => _build();

  _$EndpointLocation _build() {
    final _$result = _$v ??
        new _$EndpointLocation._(
            city: city,
            country: country,
            latitude: BuiltValueNullFieldError.checkNotNull(
                latitude, r'EndpointLocation', 'latitude'),
            longitude: BuiltValueNullFieldError.checkNotNull(
                longitude, r'EndpointLocation', 'longitude'),
            postalCode: postalCode,
            region: region);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
