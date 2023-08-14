// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_spot_fleet_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestSpotFleetRequest extends RequestSpotFleetRequest {
  @override
  final bool dryRun;
  @override
  final SpotFleetRequestConfigData? spotFleetRequestConfig;

  factory _$RequestSpotFleetRequest(
          [void Function(RequestSpotFleetRequestBuilder)? updates]) =>
      (new RequestSpotFleetRequestBuilder()..update(updates))._build();

  _$RequestSpotFleetRequest._(
      {required this.dryRun, this.spotFleetRequestConfig})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RequestSpotFleetRequest', 'dryRun');
  }

  @override
  RequestSpotFleetRequest rebuild(
          void Function(RequestSpotFleetRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestSpotFleetRequestBuilder toBuilder() =>
      new RequestSpotFleetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestSpotFleetRequest &&
        dryRun == other.dryRun &&
        spotFleetRequestConfig == other.spotFleetRequestConfig;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, spotFleetRequestConfig.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RequestSpotFleetRequestBuilder
    implements
        Builder<RequestSpotFleetRequest, RequestSpotFleetRequestBuilder> {
  _$RequestSpotFleetRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  SpotFleetRequestConfigDataBuilder? _spotFleetRequestConfig;
  SpotFleetRequestConfigDataBuilder get spotFleetRequestConfig =>
      _$this._spotFleetRequestConfig ??=
          new SpotFleetRequestConfigDataBuilder();
  set spotFleetRequestConfig(
          SpotFleetRequestConfigDataBuilder? spotFleetRequestConfig) =>
      _$this._spotFleetRequestConfig = spotFleetRequestConfig;

  RequestSpotFleetRequestBuilder() {
    RequestSpotFleetRequest._init(this);
  }

  RequestSpotFleetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _spotFleetRequestConfig = $v.spotFleetRequestConfig?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestSpotFleetRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestSpotFleetRequest;
  }

  @override
  void update(void Function(RequestSpotFleetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestSpotFleetRequest build() => _build();

  _$RequestSpotFleetRequest _build() {
    _$RequestSpotFleetRequest _$result;
    try {
      _$result = _$v ??
          new _$RequestSpotFleetRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'RequestSpotFleetRequest', 'dryRun'),
              spotFleetRequestConfig: _spotFleetRequestConfig?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotFleetRequestConfig';
        _spotFleetRequestConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RequestSpotFleetRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
