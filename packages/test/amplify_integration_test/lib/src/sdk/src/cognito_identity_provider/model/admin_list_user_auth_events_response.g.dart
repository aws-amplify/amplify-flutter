// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_list_user_auth_events_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminListUserAuthEventsResponse
    extends AdminListUserAuthEventsResponse {
  @override
  final _i2.BuiltList<AuthEventType>? authEvents;
  @override
  final String? nextToken;

  factory _$AdminListUserAuthEventsResponse(
          [void Function(AdminListUserAuthEventsResponseBuilder)? updates]) =>
      (new AdminListUserAuthEventsResponseBuilder()..update(updates))._build();

  _$AdminListUserAuthEventsResponse._({this.authEvents, this.nextToken})
      : super._();

  @override
  AdminListUserAuthEventsResponse rebuild(
          void Function(AdminListUserAuthEventsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminListUserAuthEventsResponseBuilder toBuilder() =>
      new AdminListUserAuthEventsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminListUserAuthEventsResponse &&
        authEvents == other.authEvents &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authEvents.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AdminListUserAuthEventsResponseBuilder
    implements
        Builder<AdminListUserAuthEventsResponse,
            AdminListUserAuthEventsResponseBuilder> {
  _$AdminListUserAuthEventsResponse? _$v;

  _i2.ListBuilder<AuthEventType>? _authEvents;
  _i2.ListBuilder<AuthEventType> get authEvents =>
      _$this._authEvents ??= new _i2.ListBuilder<AuthEventType>();
  set authEvents(_i2.ListBuilder<AuthEventType>? authEvents) =>
      _$this._authEvents = authEvents;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  AdminListUserAuthEventsResponseBuilder();

  AdminListUserAuthEventsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authEvents = $v.authEvents?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminListUserAuthEventsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdminListUserAuthEventsResponse;
  }

  @override
  void update(void Function(AdminListUserAuthEventsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminListUserAuthEventsResponse build() => _build();

  _$AdminListUserAuthEventsResponse _build() {
    _$AdminListUserAuthEventsResponse _$result;
    try {
      _$result = _$v ??
          new _$AdminListUserAuthEventsResponse._(
              authEvents: _authEvents?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authEvents';
        _authEvents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AdminListUserAuthEventsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
