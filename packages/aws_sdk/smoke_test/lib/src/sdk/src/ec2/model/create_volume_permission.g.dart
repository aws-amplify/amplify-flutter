// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_volume_permission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVolumePermission extends CreateVolumePermission {
  @override
  final PermissionGroup? group;
  @override
  final String? userId;

  factory _$CreateVolumePermission(
          [void Function(CreateVolumePermissionBuilder)? updates]) =>
      (new CreateVolumePermissionBuilder()..update(updates))._build();

  _$CreateVolumePermission._({this.group, this.userId}) : super._();

  @override
  CreateVolumePermission rebuild(
          void Function(CreateVolumePermissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVolumePermissionBuilder toBuilder() =>
      new CreateVolumePermissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVolumePermission &&
        group == other.group &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVolumePermissionBuilder
    implements Builder<CreateVolumePermission, CreateVolumePermissionBuilder> {
  _$CreateVolumePermission? _$v;

  PermissionGroup? _group;
  PermissionGroup? get group => _$this._group;
  set group(PermissionGroup? group) => _$this._group = group;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  CreateVolumePermissionBuilder();

  CreateVolumePermissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _group = $v.group;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVolumePermission other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVolumePermission;
  }

  @override
  void update(void Function(CreateVolumePermissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVolumePermission build() => _build();

  _$CreateVolumePermission _build() {
    final _$result =
        _$v ?? new _$CreateVolumePermission._(group: group, userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
