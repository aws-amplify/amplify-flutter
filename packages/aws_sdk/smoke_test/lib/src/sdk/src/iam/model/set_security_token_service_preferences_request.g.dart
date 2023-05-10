// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.set_security_token_service_preferences_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetSecurityTokenServicePreferencesRequest
    extends SetSecurityTokenServicePreferencesRequest {
  @override
  final _i3.GlobalEndpointTokenVersion globalEndpointTokenVersion;

  factory _$SetSecurityTokenServicePreferencesRequest(
          [void Function(SetSecurityTokenServicePreferencesRequestBuilder)?
              updates]) =>
      (new SetSecurityTokenServicePreferencesRequestBuilder()..update(updates))
          ._build();

  _$SetSecurityTokenServicePreferencesRequest._(
      {required this.globalEndpointTokenVersion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        globalEndpointTokenVersion,
        r'SetSecurityTokenServicePreferencesRequest',
        'globalEndpointTokenVersion');
  }

  @override
  SetSecurityTokenServicePreferencesRequest rebuild(
          void Function(SetSecurityTokenServicePreferencesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetSecurityTokenServicePreferencesRequestBuilder toBuilder() =>
      new SetSecurityTokenServicePreferencesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetSecurityTokenServicePreferencesRequest &&
        globalEndpointTokenVersion == other.globalEndpointTokenVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, globalEndpointTokenVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SetSecurityTokenServicePreferencesRequestBuilder
    implements
        Builder<SetSecurityTokenServicePreferencesRequest,
            SetSecurityTokenServicePreferencesRequestBuilder> {
  _$SetSecurityTokenServicePreferencesRequest? _$v;

  _i3.GlobalEndpointTokenVersion? _globalEndpointTokenVersion;
  _i3.GlobalEndpointTokenVersion? get globalEndpointTokenVersion =>
      _$this._globalEndpointTokenVersion;
  set globalEndpointTokenVersion(
          _i3.GlobalEndpointTokenVersion? globalEndpointTokenVersion) =>
      _$this._globalEndpointTokenVersion = globalEndpointTokenVersion;

  SetSecurityTokenServicePreferencesRequestBuilder() {
    SetSecurityTokenServicePreferencesRequest._init(this);
  }

  SetSecurityTokenServicePreferencesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalEndpointTokenVersion = $v.globalEndpointTokenVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetSecurityTokenServicePreferencesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetSecurityTokenServicePreferencesRequest;
  }

  @override
  void update(
      void Function(SetSecurityTokenServicePreferencesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SetSecurityTokenServicePreferencesRequest build() => _build();

  _$SetSecurityTokenServicePreferencesRequest _build() {
    final _$result = _$v ??
        new _$SetSecurityTokenServicePreferencesRequest._(
            globalEndpointTokenVersion: BuiltValueNullFieldError.checkNotNull(
                globalEndpointTokenVersion,
                r'SetSecurityTokenServicePreferencesRequest',
                'globalEndpointTokenVersion'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
