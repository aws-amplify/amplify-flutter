// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_tokens_from_refresh_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTokensFromRefreshTokenRequest
    extends GetTokensFromRefreshTokenRequest {
  @override
  final String refreshToken;
  @override
  final String clientId;
  @override
  final String? clientSecret;
  @override
  final String? deviceKey;
  @override
  final _i3.BuiltMap<String, String>? clientMetadata;

  factory _$GetTokensFromRefreshTokenRequest([
    void Function(GetTokensFromRefreshTokenRequestBuilder)? updates,
  ]) => (GetTokensFromRefreshTokenRequestBuilder()..update(updates))._build();

  _$GetTokensFromRefreshTokenRequest._({
    required this.refreshToken,
    required this.clientId,
    this.clientSecret,
    this.deviceKey,
    this.clientMetadata,
  }) : super._();
  @override
  GetTokensFromRefreshTokenRequest rebuild(
    void Function(GetTokensFromRefreshTokenRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetTokensFromRefreshTokenRequestBuilder toBuilder() =>
      GetTokensFromRefreshTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTokensFromRefreshTokenRequest &&
        refreshToken == other.refreshToken &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        deviceKey == other.deviceKey &&
        clientMetadata == other.clientMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientSecret.hashCode);
    _$hash = $jc(_$hash, deviceKey.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTokensFromRefreshTokenRequestBuilder
    implements
        Builder<
          GetTokensFromRefreshTokenRequest,
          GetTokensFromRefreshTokenRequestBuilder
        > {
  _$GetTokensFromRefreshTokenRequest? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  String? _deviceKey;
  String? get deviceKey => _$this._deviceKey;
  set deviceKey(String? deviceKey) => _$this._deviceKey = deviceKey;

  _i3.MapBuilder<String, String>? _clientMetadata;
  _i3.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= _i3.MapBuilder<String, String>();
  set clientMetadata(_i3.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  GetTokensFromRefreshTokenRequestBuilder();

  GetTokensFromRefreshTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _clientId = $v.clientId;
      _clientSecret = $v.clientSecret;
      _deviceKey = $v.deviceKey;
      _clientMetadata = $v.clientMetadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTokensFromRefreshTokenRequest other) {
    _$v = other as _$GetTokensFromRefreshTokenRequest;
  }

  @override
  void update(void Function(GetTokensFromRefreshTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTokensFromRefreshTokenRequest build() => _build();

  _$GetTokensFromRefreshTokenRequest _build() {
    _$GetTokensFromRefreshTokenRequest _$result;
    try {
      _$result =
          _$v ??
          _$GetTokensFromRefreshTokenRequest._(
            refreshToken: BuiltValueNullFieldError.checkNotNull(
              refreshToken,
              r'GetTokensFromRefreshTokenRequest',
              'refreshToken',
            ),
            clientId: BuiltValueNullFieldError.checkNotNull(
              clientId,
              r'GetTokensFromRefreshTokenRequest',
              'clientId',
            ),
            clientSecret: clientSecret,
            deviceKey: deviceKey,
            clientMetadata: _clientMetadata?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clientMetadata';
        _clientMetadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetTokensFromRefreshTokenRequest',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
