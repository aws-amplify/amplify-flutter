// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.change_password_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangePasswordRequest extends ChangePasswordRequest {
  @override
  final String accessToken;
  @override
  final String previousPassword;
  @override
  final String proposedPassword;

  factory _$ChangePasswordRequest(
          [void Function(ChangePasswordRequestBuilder)? updates]) =>
      (new ChangePasswordRequestBuilder()..update(updates))._build();

  _$ChangePasswordRequest._(
      {required this.accessToken,
      required this.previousPassword,
      required this.proposedPassword})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, 'ChangePasswordRequest', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        previousPassword, 'ChangePasswordRequest', 'previousPassword');
    BuiltValueNullFieldError.checkNotNull(
        proposedPassword, 'ChangePasswordRequest', 'proposedPassword');
  }

  @override
  ChangePasswordRequest rebuild(
          void Function(ChangePasswordRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangePasswordRequestBuilder toBuilder() =>
      new ChangePasswordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangePasswordRequest &&
        accessToken == other.accessToken &&
        previousPassword == other.previousPassword &&
        proposedPassword == other.proposedPassword;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, accessToken.hashCode), previousPassword.hashCode),
        proposedPassword.hashCode));
  }
}

class ChangePasswordRequestBuilder
    implements Builder<ChangePasswordRequest, ChangePasswordRequestBuilder> {
  _$ChangePasswordRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _previousPassword;
  String? get previousPassword => _$this._previousPassword;
  set previousPassword(String? previousPassword) =>
      _$this._previousPassword = previousPassword;

  String? _proposedPassword;
  String? get proposedPassword => _$this._proposedPassword;
  set proposedPassword(String? proposedPassword) =>
      _$this._proposedPassword = proposedPassword;

  ChangePasswordRequestBuilder() {
    ChangePasswordRequest._init(this);
  }

  ChangePasswordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _previousPassword = $v.previousPassword;
      _proposedPassword = $v.proposedPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangePasswordRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangePasswordRequest;
  }

  @override
  void update(void Function(ChangePasswordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangePasswordRequest build() => _build();

  _$ChangePasswordRequest _build() {
    final _$result = _$v ??
        new _$ChangePasswordRequest._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, 'ChangePasswordRequest', 'accessToken'),
            previousPassword: BuiltValueNullFieldError.checkNotNull(
                previousPassword, 'ChangePasswordRequest', 'previousPassword'),
            proposedPassword: BuiltValueNullFieldError.checkNotNull(
                proposedPassword, 'ChangePasswordRequest', 'proposedPassword'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
