// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.get_device_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDeviceRequest extends GetDeviceRequest {
  @override
  final String? accessToken;
  @override
  final String deviceKey;

  factory _$GetDeviceRequest(
          [void Function(GetDeviceRequestBuilder)? updates]) =>
      (new GetDeviceRequestBuilder()..update(updates))._build();

  _$GetDeviceRequest._({this.accessToken, required this.deviceKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deviceKey, 'GetDeviceRequest', 'deviceKey');
  }

  @override
  GetDeviceRequest rebuild(void Function(GetDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDeviceRequestBuilder toBuilder() =>
      new GetDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDeviceRequest &&
        accessToken == other.accessToken &&
        deviceKey == other.deviceKey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, accessToken.hashCode), deviceKey.hashCode));
  }
}

class GetDeviceRequestBuilder
    implements Builder<GetDeviceRequest, GetDeviceRequestBuilder> {
  _$GetDeviceRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _deviceKey;
  String? get deviceKey => _$this._deviceKey;
  set deviceKey(String? deviceKey) => _$this._deviceKey = deviceKey;

  GetDeviceRequestBuilder() {
    GetDeviceRequest._init(this);
  }

  GetDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _deviceKey = $v.deviceKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDeviceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDeviceRequest;
  }

  @override
  void update(void Function(GetDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDeviceRequest build() => _build();

  _$GetDeviceRequest _build() {
    final _$result = _$v ??
        new _$GetDeviceRequest._(
            accessToken: accessToken,
            deviceKey: BuiltValueNullFieldError.checkNotNull(
                deviceKey, 'GetDeviceRequest', 'deviceKey'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
