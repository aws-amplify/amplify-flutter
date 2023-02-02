// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.verify_software_token_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifySoftwareTokenRequest extends VerifySoftwareTokenRequest {
  @override
  final String? accessToken;
  @override
  final String? friendlyDeviceName;
  @override
  final String? session;
  @override
  final String userCode;

  factory _$VerifySoftwareTokenRequest(
          [void Function(VerifySoftwareTokenRequestBuilder)? updates]) =>
      (new VerifySoftwareTokenRequestBuilder()..update(updates))._build();

  _$VerifySoftwareTokenRequest._(
      {this.accessToken,
      this.friendlyDeviceName,
      this.session,
      required this.userCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userCode, r'VerifySoftwareTokenRequest', 'userCode');
  }

  @override
  VerifySoftwareTokenRequest rebuild(
          void Function(VerifySoftwareTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifySoftwareTokenRequestBuilder toBuilder() =>
      new VerifySoftwareTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifySoftwareTokenRequest &&
        accessToken == other.accessToken &&
        friendlyDeviceName == other.friendlyDeviceName &&
        session == other.session &&
        userCode == other.userCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, friendlyDeviceName.hashCode);
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jc(_$hash, userCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifySoftwareTokenRequestBuilder
    implements
        Builder<VerifySoftwareTokenRequest, VerifySoftwareTokenRequestBuilder> {
  _$VerifySoftwareTokenRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _friendlyDeviceName;
  String? get friendlyDeviceName => _$this._friendlyDeviceName;
  set friendlyDeviceName(String? friendlyDeviceName) =>
      _$this._friendlyDeviceName = friendlyDeviceName;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  String? _userCode;
  String? get userCode => _$this._userCode;
  set userCode(String? userCode) => _$this._userCode = userCode;

  VerifySoftwareTokenRequestBuilder() {
    VerifySoftwareTokenRequest._init(this);
  }

  VerifySoftwareTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _friendlyDeviceName = $v.friendlyDeviceName;
      _session = $v.session;
      _userCode = $v.userCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifySoftwareTokenRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifySoftwareTokenRequest;
  }

  @override
  void update(void Function(VerifySoftwareTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifySoftwareTokenRequest build() => _build();

  _$VerifySoftwareTokenRequest _build() {
    final _$result = _$v ??
        new _$VerifySoftwareTokenRequest._(
            accessToken: accessToken,
            friendlyDeviceName: friendlyDeviceName,
            session: session,
            userCode: BuiltValueNullFieldError.checkNotNull(
                userCode, r'VerifySoftwareTokenRequest', 'userCode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
