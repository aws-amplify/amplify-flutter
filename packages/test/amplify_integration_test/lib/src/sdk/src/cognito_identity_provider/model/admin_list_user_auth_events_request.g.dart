// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_list_user_auth_events_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminListUserAuthEventsRequest extends AdminListUserAuthEventsRequest {
  @override
  final String userPoolId;
  @override
  final String username;
  @override
  final int? maxResults;
  @override
  final String? nextToken;

  factory _$AdminListUserAuthEventsRequest(
          [void Function(AdminListUserAuthEventsRequestBuilder)? updates]) =>
      (new AdminListUserAuthEventsRequestBuilder()..update(updates))._build();

  _$AdminListUserAuthEventsRequest._(
      {required this.userPoolId,
      required this.username,
      this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userPoolId, r'AdminListUserAuthEventsRequest', 'userPoolId');
    BuiltValueNullFieldError.checkNotNull(
        username, r'AdminListUserAuthEventsRequest', 'username');
  }

  @override
  AdminListUserAuthEventsRequest rebuild(
          void Function(AdminListUserAuthEventsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminListUserAuthEventsRequestBuilder toBuilder() =>
      new AdminListUserAuthEventsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminListUserAuthEventsRequest &&
        userPoolId == other.userPoolId &&
        username == other.username &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userPoolId.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AdminListUserAuthEventsRequestBuilder
    implements
        Builder<AdminListUserAuthEventsRequest,
            AdminListUserAuthEventsRequestBuilder> {
  _$AdminListUserAuthEventsRequest? _$v;

  String? _userPoolId;
  String? get userPoolId => _$this._userPoolId;
  set userPoolId(String? userPoolId) => _$this._userPoolId = userPoolId;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  AdminListUserAuthEventsRequestBuilder();

  AdminListUserAuthEventsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userPoolId = $v.userPoolId;
      _username = $v.username;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminListUserAuthEventsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdminListUserAuthEventsRequest;
  }

  @override
  void update(void Function(AdminListUserAuthEventsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminListUserAuthEventsRequest build() => _build();

  _$AdminListUserAuthEventsRequest _build() {
    final _$result = _$v ??
        new _$AdminListUserAuthEventsRequest._(
            userPoolId: BuiltValueNullFieldError.checkNotNull(
                userPoolId, r'AdminListUserAuthEventsRequest', 'userPoolId'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'AdminListUserAuthEventsRequest', 'username'),
            maxResults: maxResults,
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
