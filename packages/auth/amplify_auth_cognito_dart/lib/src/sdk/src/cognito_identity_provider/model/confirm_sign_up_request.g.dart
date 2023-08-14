// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_sign_up_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmSignUpRequest extends ConfirmSignUpRequest {
  @override
  final String clientId;
  @override
  final String? secretHash;
  @override
  final String username;
  @override
  final String confirmationCode;
  @override
  final bool forceAliasCreation;
  @override
  final AnalyticsMetadataType? analyticsMetadata;
  @override
  final UserContextDataType? userContextData;
  @override
  final _i3.BuiltMap<String, String>? clientMetadata;

  factory _$ConfirmSignUpRequest(
          [void Function(ConfirmSignUpRequestBuilder)? updates]) =>
      (new ConfirmSignUpRequestBuilder()..update(updates))._build();

  _$ConfirmSignUpRequest._(
      {required this.clientId,
      this.secretHash,
      required this.username,
      required this.confirmationCode,
      required this.forceAliasCreation,
      this.analyticsMetadata,
      this.userContextData,
      this.clientMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'ConfirmSignUpRequest', 'clientId');
    BuiltValueNullFieldError.checkNotNull(
        username, r'ConfirmSignUpRequest', 'username');
    BuiltValueNullFieldError.checkNotNull(
        confirmationCode, r'ConfirmSignUpRequest', 'confirmationCode');
    BuiltValueNullFieldError.checkNotNull(
        forceAliasCreation, r'ConfirmSignUpRequest', 'forceAliasCreation');
  }

  @override
  ConfirmSignUpRequest rebuild(
          void Function(ConfirmSignUpRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmSignUpRequestBuilder toBuilder() =>
      new ConfirmSignUpRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmSignUpRequest &&
        clientId == other.clientId &&
        secretHash == other.secretHash &&
        username == other.username &&
        confirmationCode == other.confirmationCode &&
        forceAliasCreation == other.forceAliasCreation &&
        analyticsMetadata == other.analyticsMetadata &&
        userContextData == other.userContextData &&
        clientMetadata == other.clientMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, secretHash.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, confirmationCode.hashCode);
    _$hash = $jc(_$hash, forceAliasCreation.hashCode);
    _$hash = $jc(_$hash, analyticsMetadata.hashCode);
    _$hash = $jc(_$hash, userContextData.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfirmSignUpRequestBuilder
    implements Builder<ConfirmSignUpRequest, ConfirmSignUpRequestBuilder> {
  _$ConfirmSignUpRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _secretHash;
  String? get secretHash => _$this._secretHash;
  set secretHash(String? secretHash) => _$this._secretHash = secretHash;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _confirmationCode;
  String? get confirmationCode => _$this._confirmationCode;
  set confirmationCode(String? confirmationCode) =>
      _$this._confirmationCode = confirmationCode;

  bool? _forceAliasCreation;
  bool? get forceAliasCreation => _$this._forceAliasCreation;
  set forceAliasCreation(bool? forceAliasCreation) =>
      _$this._forceAliasCreation = forceAliasCreation;

  AnalyticsMetadataTypeBuilder? _analyticsMetadata;
  AnalyticsMetadataTypeBuilder get analyticsMetadata =>
      _$this._analyticsMetadata ??= new AnalyticsMetadataTypeBuilder();
  set analyticsMetadata(AnalyticsMetadataTypeBuilder? analyticsMetadata) =>
      _$this._analyticsMetadata = analyticsMetadata;

  UserContextDataTypeBuilder? _userContextData;
  UserContextDataTypeBuilder get userContextData =>
      _$this._userContextData ??= new UserContextDataTypeBuilder();
  set userContextData(UserContextDataTypeBuilder? userContextData) =>
      _$this._userContextData = userContextData;

  _i3.MapBuilder<String, String>? _clientMetadata;
  _i3.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= new _i3.MapBuilder<String, String>();
  set clientMetadata(_i3.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  ConfirmSignUpRequestBuilder() {
    ConfirmSignUpRequest._init(this);
  }

  ConfirmSignUpRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _secretHash = $v.secretHash;
      _username = $v.username;
      _confirmationCode = $v.confirmationCode;
      _forceAliasCreation = $v.forceAliasCreation;
      _analyticsMetadata = $v.analyticsMetadata?.toBuilder();
      _userContextData = $v.userContextData?.toBuilder();
      _clientMetadata = $v.clientMetadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmSignUpRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmSignUpRequest;
  }

  @override
  void update(void Function(ConfirmSignUpRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmSignUpRequest build() => _build();

  _$ConfirmSignUpRequest _build() {
    _$ConfirmSignUpRequest _$result;
    try {
      _$result = _$v ??
          new _$ConfirmSignUpRequest._(
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, r'ConfirmSignUpRequest', 'clientId'),
              secretHash: secretHash,
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'ConfirmSignUpRequest', 'username'),
              confirmationCode: BuiltValueNullFieldError.checkNotNull(
                  confirmationCode,
                  r'ConfirmSignUpRequest',
                  'confirmationCode'),
              forceAliasCreation: BuiltValueNullFieldError.checkNotNull(
                  forceAliasCreation,
                  r'ConfirmSignUpRequest',
                  'forceAliasCreation'),
              analyticsMetadata: _analyticsMetadata?.build(),
              userContextData: _userContextData?.build(),
              clientMetadata: _clientMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'analyticsMetadata';
        _analyticsMetadata?.build();
        _$failedField = 'userContextData';
        _userContextData?.build();
        _$failedField = 'clientMetadata';
        _clientMetadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConfirmSignUpRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
