// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_permission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoadPermission extends LoadPermission {
  @override
  final String? userId;
  @override
  final PermissionGroup? group;

  factory _$LoadPermission([void Function(LoadPermissionBuilder)? updates]) =>
      (new LoadPermissionBuilder()..update(updates))._build();

  _$LoadPermission._({this.userId, this.group}) : super._();

  @override
  LoadPermission rebuild(void Function(LoadPermissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoadPermissionBuilder toBuilder() =>
      new LoadPermissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoadPermission &&
        userId == other.userId &&
        group == other.group;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LoadPermissionBuilder
    implements Builder<LoadPermission, LoadPermissionBuilder> {
  _$LoadPermission? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  PermissionGroup? _group;
  PermissionGroup? get group => _$this._group;
  set group(PermissionGroup? group) => _$this._group = group;

  LoadPermissionBuilder();

  LoadPermissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _group = $v.group;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoadPermission other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoadPermission;
  }

  @override
  void update(void Function(LoadPermissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoadPermission build() => _build();

  _$LoadPermission _build() {
    final _$result =
        _$v ?? new _$LoadPermission._(userId: userId, group: group);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
