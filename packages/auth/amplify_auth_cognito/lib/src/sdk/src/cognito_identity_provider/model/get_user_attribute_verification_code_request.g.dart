// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.get_user_attribute_verification_code_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUserAttributeVerificationCodeRequest
    extends GetUserAttributeVerificationCodeRequest {
  @override
  final String accessToken;
  @override
  final String attributeName;
  @override
  final _i3.BuiltMap<String, String>? clientMetadata;

  factory _$GetUserAttributeVerificationCodeRequest(
          [void Function(GetUserAttributeVerificationCodeRequestBuilder)?
              updates]) =>
      (new GetUserAttributeVerificationCodeRequestBuilder()..update(updates))
          ._build();

  _$GetUserAttributeVerificationCodeRequest._(
      {required this.accessToken,
      required this.attributeName,
      this.clientMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, 'GetUserAttributeVerificationCodeRequest', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(attributeName,
        'GetUserAttributeVerificationCodeRequest', 'attributeName');
  }

  @override
  GetUserAttributeVerificationCodeRequest rebuild(
          void Function(GetUserAttributeVerificationCodeRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserAttributeVerificationCodeRequestBuilder toBuilder() =>
      new GetUserAttributeVerificationCodeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserAttributeVerificationCodeRequest &&
        accessToken == other.accessToken &&
        attributeName == other.attributeName &&
        clientMetadata == other.clientMetadata;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, accessToken.hashCode), attributeName.hashCode),
        clientMetadata.hashCode));
  }
}

class GetUserAttributeVerificationCodeRequestBuilder
    implements
        Builder<GetUserAttributeVerificationCodeRequest,
            GetUserAttributeVerificationCodeRequestBuilder> {
  _$GetUserAttributeVerificationCodeRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _attributeName;
  String? get attributeName => _$this._attributeName;
  set attributeName(String? attributeName) =>
      _$this._attributeName = attributeName;

  _i3.MapBuilder<String, String>? _clientMetadata;
  _i3.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= new _i3.MapBuilder<String, String>();
  set clientMetadata(_i3.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  GetUserAttributeVerificationCodeRequestBuilder() {
    GetUserAttributeVerificationCodeRequest._init(this);
  }

  GetUserAttributeVerificationCodeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _attributeName = $v.attributeName;
      _clientMetadata = $v.clientMetadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserAttributeVerificationCodeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUserAttributeVerificationCodeRequest;
  }

  @override
  void update(
      void Function(GetUserAttributeVerificationCodeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUserAttributeVerificationCodeRequest build() => _build();

  _$GetUserAttributeVerificationCodeRequest _build() {
    _$GetUserAttributeVerificationCodeRequest _$result;
    try {
      _$result = _$v ??
          new _$GetUserAttributeVerificationCodeRequest._(
              accessToken: BuiltValueNullFieldError.checkNotNull(accessToken,
                  'GetUserAttributeVerificationCodeRequest', 'accessToken'),
              attributeName: BuiltValueNullFieldError.checkNotNull(
                  attributeName,
                  'GetUserAttributeVerificationCodeRequest',
                  'attributeName'),
              clientMetadata: _clientMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clientMetadata';
        _clientMetadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetUserAttributeVerificationCodeRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
