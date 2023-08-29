// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_confirmation_code_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResendConfirmationCodeRequest extends ResendConfirmationCodeRequest {
  @override
  final String clientId;
  @override
  final String? secretHash;
  @override
  final UserContextDataType? userContextData;
  @override
  final String username;
  @override
  final AnalyticsMetadataType? analyticsMetadata;
  @override
  final _i3.BuiltMap<String, String>? clientMetadata;

  factory _$ResendConfirmationCodeRequest(
          [void Function(ResendConfirmationCodeRequestBuilder)? updates]) =>
      (new ResendConfirmationCodeRequestBuilder()..update(updates))._build();

  _$ResendConfirmationCodeRequest._(
      {required this.clientId,
      this.secretHash,
      this.userContextData,
      required this.username,
      this.analyticsMetadata,
      this.clientMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'ResendConfirmationCodeRequest', 'clientId');
    BuiltValueNullFieldError.checkNotNull(
        username, r'ResendConfirmationCodeRequest', 'username');
  }

  @override
  ResendConfirmationCodeRequest rebuild(
          void Function(ResendConfirmationCodeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResendConfirmationCodeRequestBuilder toBuilder() =>
      new ResendConfirmationCodeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResendConfirmationCodeRequest &&
        clientId == other.clientId &&
        secretHash == other.secretHash &&
        userContextData == other.userContextData &&
        username == other.username &&
        analyticsMetadata == other.analyticsMetadata &&
        clientMetadata == other.clientMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, secretHash.hashCode);
    _$hash = $jc(_$hash, userContextData.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, analyticsMetadata.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResendConfirmationCodeRequestBuilder
    implements
        Builder<ResendConfirmationCodeRequest,
            ResendConfirmationCodeRequestBuilder> {
  _$ResendConfirmationCodeRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _secretHash;
  String? get secretHash => _$this._secretHash;
  set secretHash(String? secretHash) => _$this._secretHash = secretHash;

  UserContextDataTypeBuilder? _userContextData;
  UserContextDataTypeBuilder get userContextData =>
      _$this._userContextData ??= new UserContextDataTypeBuilder();
  set userContextData(UserContextDataTypeBuilder? userContextData) =>
      _$this._userContextData = userContextData;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  AnalyticsMetadataTypeBuilder? _analyticsMetadata;
  AnalyticsMetadataTypeBuilder get analyticsMetadata =>
      _$this._analyticsMetadata ??= new AnalyticsMetadataTypeBuilder();
  set analyticsMetadata(AnalyticsMetadataTypeBuilder? analyticsMetadata) =>
      _$this._analyticsMetadata = analyticsMetadata;

  _i3.MapBuilder<String, String>? _clientMetadata;
  _i3.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= new _i3.MapBuilder<String, String>();
  set clientMetadata(_i3.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  ResendConfirmationCodeRequestBuilder();

  ResendConfirmationCodeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _secretHash = $v.secretHash;
      _userContextData = $v.userContextData?.toBuilder();
      _username = $v.username;
      _analyticsMetadata = $v.analyticsMetadata?.toBuilder();
      _clientMetadata = $v.clientMetadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResendConfirmationCodeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResendConfirmationCodeRequest;
  }

  @override
  void update(void Function(ResendConfirmationCodeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResendConfirmationCodeRequest build() => _build();

  _$ResendConfirmationCodeRequest _build() {
    _$ResendConfirmationCodeRequest _$result;
    try {
      _$result = _$v ??
          new _$ResendConfirmationCodeRequest._(
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, r'ResendConfirmationCodeRequest', 'clientId'),
              secretHash: secretHash,
              userContextData: _userContextData?.build(),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'ResendConfirmationCodeRequest', 'username'),
              analyticsMetadata: _analyticsMetadata?.build(),
              clientMetadata: _clientMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userContextData';
        _userContextData?.build();

        _$failedField = 'analyticsMetadata';
        _analyticsMetadata?.build();
        _$failedField = 'clientMetadata';
        _clientMetadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResendConfirmationCodeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
