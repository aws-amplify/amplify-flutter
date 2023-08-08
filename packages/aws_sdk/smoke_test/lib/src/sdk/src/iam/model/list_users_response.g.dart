// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_users_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListUsersResponse extends ListUsersResponse {
  @override
  final _i3.BuiltList<_i2.User> users;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListUsersResponse(
          [void Function(ListUsersResponseBuilder)? updates]) =>
      (new ListUsersResponseBuilder()..update(updates))._build();

  _$ListUsersResponse._(
      {required this.users, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(users, r'ListUsersResponse', 'users');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListUsersResponse', 'isTruncated');
  }

  @override
  ListUsersResponse rebuild(void Function(ListUsersResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListUsersResponseBuilder toBuilder() =>
      new ListUsersResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListUsersResponse &&
        users == other.users &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, users.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListUsersResponseBuilder
    implements Builder<ListUsersResponse, ListUsersResponseBuilder> {
  _$ListUsersResponse? _$v;

  _i3.ListBuilder<_i2.User>? _users;
  _i3.ListBuilder<_i2.User> get users =>
      _$this._users ??= new _i3.ListBuilder<_i2.User>();
  set users(_i3.ListBuilder<_i2.User>? users) => _$this._users = users;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListUsersResponseBuilder() {
    ListUsersResponse._init(this);
  }

  ListUsersResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListUsersResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListUsersResponse;
  }

  @override
  void update(void Function(ListUsersResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListUsersResponse build() => _build();

  _$ListUsersResponse _build() {
    _$ListUsersResponse _$result;
    try {
      _$result = _$v ??
          new _$ListUsersResponse._(
              users: users.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListUsersResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListUsersResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
