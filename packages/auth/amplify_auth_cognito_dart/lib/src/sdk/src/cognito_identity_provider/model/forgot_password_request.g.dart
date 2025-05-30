// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForgotPasswordRequest extends ForgotPasswordRequest {
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

  factory _$ForgotPasswordRequest([
    void Function(ForgotPasswordRequestBuilder)? updates,
  ]) => (ForgotPasswordRequestBuilder()..update(updates))._build();

  _$ForgotPasswordRequest._({
    required this.clientId,
    this.secretHash,
    this.userContextData,
    required this.username,
    this.analyticsMetadata,
    this.clientMetadata,
  }) : super._();
  @override
  ForgotPasswordRequest rebuild(
    void Function(ForgotPasswordRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForgotPasswordRequestBuilder toBuilder() =>
      ForgotPasswordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForgotPasswordRequest &&
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

class ForgotPasswordRequestBuilder
    implements Builder<ForgotPasswordRequest, ForgotPasswordRequestBuilder> {
  _$ForgotPasswordRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _secretHash;
  String? get secretHash => _$this._secretHash;
  set secretHash(String? secretHash) => _$this._secretHash = secretHash;

  UserContextDataTypeBuilder? _userContextData;
  UserContextDataTypeBuilder get userContextData =>
      _$this._userContextData ??= UserContextDataTypeBuilder();
  set userContextData(UserContextDataTypeBuilder? userContextData) =>
      _$this._userContextData = userContextData;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  AnalyticsMetadataTypeBuilder? _analyticsMetadata;
  AnalyticsMetadataTypeBuilder get analyticsMetadata =>
      _$this._analyticsMetadata ??= AnalyticsMetadataTypeBuilder();
  set analyticsMetadata(AnalyticsMetadataTypeBuilder? analyticsMetadata) =>
      _$this._analyticsMetadata = analyticsMetadata;

  _i3.MapBuilder<String, String>? _clientMetadata;
  _i3.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= _i3.MapBuilder<String, String>();
  set clientMetadata(_i3.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  ForgotPasswordRequestBuilder();

  ForgotPasswordRequestBuilder get _$this {
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
  void replace(ForgotPasswordRequest other) {
    _$v = other as _$ForgotPasswordRequest;
  }

  @override
  void update(void Function(ForgotPasswordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForgotPasswordRequest build() => _build();

  _$ForgotPasswordRequest _build() {
    _$ForgotPasswordRequest _$result;
    try {
      _$result =
          _$v ??
          _$ForgotPasswordRequest._(
            clientId: BuiltValueNullFieldError.checkNotNull(
              clientId,
              r'ForgotPasswordRequest',
              'clientId',
            ),
            secretHash: secretHash,
            userContextData: _userContextData?.build(),
            username: BuiltValueNullFieldError.checkNotNull(
              username,
              r'ForgotPasswordRequest',
              'username',
            ),
            analyticsMetadata: _analyticsMetadata?.build(),
            clientMetadata: _clientMetadata?.build(),
          );
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
        throw BuiltValueNestedFieldError(
          r'ForgotPasswordRequest',
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
