// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CognitoUser extends CognitoUser {
  @override
  final String? identityId;
  @override
  final AWSCredentials? awsCredentials;
  @override
  final CognitoUserPoolTokens? userPoolTokens;
  @override
  final CognitoDevice? device;
  @override
  final CognitoDeviceSecrets? deviceSecrets;
  @override
  final String userId;
  @override
  final String username;
  @override
  final BuiltMap<String, String> attributes;

  factory _$CognitoUser([void Function(CognitoUserBuilder)? updates]) =>
      (new CognitoUserBuilder()..update(updates))._build();

  _$CognitoUser._(
      {this.identityId,
      this.awsCredentials,
      this.userPoolTokens,
      this.device,
      this.deviceSecrets,
      required this.userId,
      required this.username,
      required this.attributes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, 'CognitoUser', 'userId');
    BuiltValueNullFieldError.checkNotNull(username, 'CognitoUser', 'username');
    BuiltValueNullFieldError.checkNotNull(
        attributes, 'CognitoUser', 'attributes');
  }

  @override
  CognitoUser rebuild(void Function(CognitoUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CognitoUserBuilder toBuilder() => new CognitoUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CognitoUser &&
        identityId == other.identityId &&
        awsCredentials == other.awsCredentials &&
        userPoolTokens == other.userPoolTokens &&
        device == other.device &&
        deviceSecrets == other.deviceSecrets &&
        userId == other.userId &&
        username == other.username &&
        attributes == other.attributes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, identityId.hashCode),
                                awsCredentials.hashCode),
                            userPoolTokens.hashCode),
                        device.hashCode),
                    deviceSecrets.hashCode),
                userId.hashCode),
            username.hashCode),
        attributes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CognitoUser')
          ..add('identityId', identityId)
          ..add('awsCredentials', awsCredentials)
          ..add('userPoolTokens', userPoolTokens)
          ..add('device', device)
          ..add('deviceSecrets', deviceSecrets)
          ..add('userId', userId)
          ..add('username', username)
          ..add('attributes', attributes))
        .toString();
  }
}

class CognitoUserBuilder implements Builder<CognitoUser, CognitoUserBuilder> {
  _$CognitoUser? _$v;

  String? _identityId;
  String? get identityId => _$this._identityId;
  set identityId(String? identityId) => _$this._identityId = identityId;

  AWSCredentials? _awsCredentials;
  AWSCredentials? get awsCredentials => _$this._awsCredentials;
  set awsCredentials(AWSCredentials? awsCredentials) =>
      _$this._awsCredentials = awsCredentials;

  CognitoUserPoolTokensBuilder? _userPoolTokens;
  CognitoUserPoolTokensBuilder get userPoolTokens =>
      _$this._userPoolTokens ??= new CognitoUserPoolTokensBuilder();
  set userPoolTokens(CognitoUserPoolTokensBuilder? userPoolTokens) =>
      _$this._userPoolTokens = userPoolTokens;

  CognitoDevice? _device;
  CognitoDevice? get device => _$this._device;
  set device(CognitoDevice? device) => _$this._device = device;

  CognitoDeviceSecretsBuilder? _deviceSecrets;
  CognitoDeviceSecretsBuilder get deviceSecrets =>
      _$this._deviceSecrets ??= new CognitoDeviceSecretsBuilder();
  set deviceSecrets(CognitoDeviceSecretsBuilder? deviceSecrets) =>
      _$this._deviceSecrets = deviceSecrets;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  MapBuilder<String, String>? _attributes;
  MapBuilder<String, String> get attributes =>
      _$this._attributes ??= new MapBuilder<String, String>();
  set attributes(MapBuilder<String, String>? attributes) =>
      _$this._attributes = attributes;

  CognitoUserBuilder();

  CognitoUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identityId = $v.identityId;
      _awsCredentials = $v.awsCredentials;
      _userPoolTokens = $v.userPoolTokens?.toBuilder();
      _device = $v.device;
      _deviceSecrets = $v.deviceSecrets?.toBuilder();
      _userId = $v.userId;
      _username = $v.username;
      _attributes = $v.attributes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CognitoUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CognitoUser;
  }

  @override
  void update(void Function(CognitoUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CognitoUser build() => _build();

  _$CognitoUser _build() {
    CognitoUser._finalize(this);
    _$CognitoUser _$result;
    try {
      _$result = _$v ??
          new _$CognitoUser._(
              identityId: identityId,
              awsCredentials: awsCredentials,
              userPoolTokens: _userPoolTokens?.build(),
              device: device,
              deviceSecrets: _deviceSecrets?.build(),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, 'CognitoUser', 'userId'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'CognitoUser', 'username'),
              attributes: attributes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userPoolTokens';
        _userPoolTokens?.build();

        _$failedField = 'deviceSecrets';
        _deviceSecrets?.build();

        _$failedField = 'attributes';
        attributes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CognitoUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
