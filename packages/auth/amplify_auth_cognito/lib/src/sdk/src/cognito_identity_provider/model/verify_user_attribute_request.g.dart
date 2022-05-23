// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.verify_user_attribute_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyUserAttributeRequest extends VerifyUserAttributeRequest {
  @override
  final String accessToken;
  @override
  final String attributeName;
  @override
  final String code;

  factory _$VerifyUserAttributeRequest(
          [void Function(VerifyUserAttributeRequestBuilder)? updates]) =>
      (new VerifyUserAttributeRequestBuilder()..update(updates))._build();

  _$VerifyUserAttributeRequest._(
      {required this.accessToken,
      required this.attributeName,
      required this.code})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, 'VerifyUserAttributeRequest', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        attributeName, 'VerifyUserAttributeRequest', 'attributeName');
    BuiltValueNullFieldError.checkNotNull(
        code, 'VerifyUserAttributeRequest', 'code');
  }

  @override
  VerifyUserAttributeRequest rebuild(
          void Function(VerifyUserAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyUserAttributeRequestBuilder toBuilder() =>
      new VerifyUserAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyUserAttributeRequest &&
        accessToken == other.accessToken &&
        attributeName == other.attributeName &&
        code == other.code;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, accessToken.hashCode), attributeName.hashCode),
        code.hashCode));
  }
}

class VerifyUserAttributeRequestBuilder
    implements
        Builder<VerifyUserAttributeRequest, VerifyUserAttributeRequestBuilder> {
  _$VerifyUserAttributeRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _attributeName;
  String? get attributeName => _$this._attributeName;
  set attributeName(String? attributeName) =>
      _$this._attributeName = attributeName;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  VerifyUserAttributeRequestBuilder() {
    VerifyUserAttributeRequest._init(this);
  }

  VerifyUserAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _attributeName = $v.attributeName;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyUserAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifyUserAttributeRequest;
  }

  @override
  void update(void Function(VerifyUserAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyUserAttributeRequest build() => _build();

  _$VerifyUserAttributeRequest _build() {
    final _$result = _$v ??
        new _$VerifyUserAttributeRequest._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, 'VerifyUserAttributeRequest', 'accessToken'),
            attributeName: BuiltValueNullFieldError.checkNotNull(
                attributeName, 'VerifyUserAttributeRequest', 'attributeName'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, 'VerifyUserAttributeRequest', 'code'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
