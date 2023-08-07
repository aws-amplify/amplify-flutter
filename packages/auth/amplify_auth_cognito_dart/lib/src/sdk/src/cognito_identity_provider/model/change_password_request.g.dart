// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangePasswordRequest extends ChangePasswordRequest {
  @override
  final String previousPassword;
  @override
  final String proposedPassword;
  @override
  final String accessToken;

  factory _$ChangePasswordRequest(
          [void Function(ChangePasswordRequestBuilder)? updates]) =>
      (new ChangePasswordRequestBuilder()..update(updates))._build();

  _$ChangePasswordRequest._(
      {required this.previousPassword,
      required this.proposedPassword,
      required this.accessToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        previousPassword, r'ChangePasswordRequest', 'previousPassword');
    BuiltValueNullFieldError.checkNotNull(
        proposedPassword, r'ChangePasswordRequest', 'proposedPassword');
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'ChangePasswordRequest', 'accessToken');
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
        previousPassword == other.previousPassword &&
        proposedPassword == other.proposedPassword &&
        accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, previousPassword.hashCode);
    _$hash = $jc(_$hash, proposedPassword.hashCode);
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ChangePasswordRequestBuilder
    implements Builder<ChangePasswordRequest, ChangePasswordRequestBuilder> {
  _$ChangePasswordRequest? _$v;

  String? _previousPassword;
  String? get previousPassword => _$this._previousPassword;
  set previousPassword(String? previousPassword) =>
      _$this._previousPassword = previousPassword;

  String? _proposedPassword;
  String? get proposedPassword => _$this._proposedPassword;
  set proposedPassword(String? proposedPassword) =>
      _$this._proposedPassword = proposedPassword;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  ChangePasswordRequestBuilder();

  ChangePasswordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _previousPassword = $v.previousPassword;
      _proposedPassword = $v.proposedPassword;
      _accessToken = $v.accessToken;
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
            previousPassword: BuiltValueNullFieldError.checkNotNull(
                previousPassword, r'ChangePasswordRequest', 'previousPassword'),
            proposedPassword: BuiltValueNullFieldError.checkNotNull(
                proposedPassword, r'ChangePasswordRequest', 'proposedPassword'),
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'ChangePasswordRequest', 'accessToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
