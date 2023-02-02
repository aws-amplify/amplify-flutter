// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.change_password_request;

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
        accessToken, r'ChangePasswordRequest', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        previousPassword, r'ChangePasswordRequest', 'previousPassword');
    BuiltValueNullFieldError.checkNotNull(
        proposedPassword, r'ChangePasswordRequest', 'proposedPassword');
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
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, previousPassword.hashCode);
    _$hash = $jc(_$hash, proposedPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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
                accessToken, r'ChangePasswordRequest', 'accessToken'),
            previousPassword: BuiltValueNullFieldError.checkNotNull(
                previousPassword, r'ChangePasswordRequest', 'previousPassword'),
            proposedPassword: BuiltValueNullFieldError.checkNotNull(
                proposedPassword,
                r'ChangePasswordRequest',
                'proposedPassword'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
