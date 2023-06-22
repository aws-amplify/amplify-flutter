// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_group_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetGroupResponse extends GetGroupResponse {
  @override
  final _i2.Group group;
  @override
  final _i4.BuiltList<_i3.User> users;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$GetGroupResponse(
          [void Function(GetGroupResponseBuilder)? updates]) =>
      (new GetGroupResponseBuilder()..update(updates))._build();

  _$GetGroupResponse._(
      {required this.group,
      required this.users,
      required this.isTruncated,
      this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(group, r'GetGroupResponse', 'group');
    BuiltValueNullFieldError.checkNotNull(users, r'GetGroupResponse', 'users');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'GetGroupResponse', 'isTruncated');
  }

  @override
  GetGroupResponse rebuild(void Function(GetGroupResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGroupResponseBuilder toBuilder() =>
      new GetGroupResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGroupResponse &&
        group == other.group &&
        users == other.users &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, users.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetGroupResponseBuilder
    implements Builder<GetGroupResponse, GetGroupResponseBuilder> {
  _$GetGroupResponse? _$v;

  _i2.GroupBuilder? _group;
  _i2.GroupBuilder get group => _$this._group ??= new _i2.GroupBuilder();
  set group(_i2.GroupBuilder? group) => _$this._group = group;

  _i4.ListBuilder<_i3.User>? _users;
  _i4.ListBuilder<_i3.User> get users =>
      _$this._users ??= new _i4.ListBuilder<_i3.User>();
  set users(_i4.ListBuilder<_i3.User>? users) => _$this._users = users;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  GetGroupResponseBuilder() {
    GetGroupResponse._init(this);
  }

  GetGroupResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _group = $v.group.toBuilder();
      _users = $v.users.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetGroupResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetGroupResponse;
  }

  @override
  void update(void Function(GetGroupResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetGroupResponse build() => _build();

  _$GetGroupResponse _build() {
    _$GetGroupResponse _$result;
    try {
      _$result = _$v ??
          new _$GetGroupResponse._(
              group: group.build(),
              users: users.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'GetGroupResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'group';
        group.build();
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetGroupResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
