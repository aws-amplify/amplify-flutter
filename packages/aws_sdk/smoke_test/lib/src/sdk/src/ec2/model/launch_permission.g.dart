// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_permission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchPermission extends LaunchPermission {
  @override
  final PermissionGroup? group;
  @override
  final String? userId;
  @override
  final String? organizationArn;
  @override
  final String? organizationalUnitArn;

  factory _$LaunchPermission(
          [void Function(LaunchPermissionBuilder)? updates]) =>
      (new LaunchPermissionBuilder()..update(updates))._build();

  _$LaunchPermission._(
      {this.group,
      this.userId,
      this.organizationArn,
      this.organizationalUnitArn})
      : super._();

  @override
  LaunchPermission rebuild(void Function(LaunchPermissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchPermissionBuilder toBuilder() =>
      new LaunchPermissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchPermission &&
        group == other.group &&
        userId == other.userId &&
        organizationArn == other.organizationArn &&
        organizationalUnitArn == other.organizationalUnitArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, organizationArn.hashCode);
    _$hash = $jc(_$hash, organizationalUnitArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchPermissionBuilder
    implements Builder<LaunchPermission, LaunchPermissionBuilder> {
  _$LaunchPermission? _$v;

  PermissionGroup? _group;
  PermissionGroup? get group => _$this._group;
  set group(PermissionGroup? group) => _$this._group = group;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _organizationArn;
  String? get organizationArn => _$this._organizationArn;
  set organizationArn(String? organizationArn) =>
      _$this._organizationArn = organizationArn;

  String? _organizationalUnitArn;
  String? get organizationalUnitArn => _$this._organizationalUnitArn;
  set organizationalUnitArn(String? organizationalUnitArn) =>
      _$this._organizationalUnitArn = organizationalUnitArn;

  LaunchPermissionBuilder();

  LaunchPermissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _group = $v.group;
      _userId = $v.userId;
      _organizationArn = $v.organizationArn;
      _organizationalUnitArn = $v.organizationalUnitArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchPermission other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchPermission;
  }

  @override
  void update(void Function(LaunchPermissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchPermission build() => _build();

  _$LaunchPermission _build() {
    final _$result = _$v ??
        new _$LaunchPermission._(
            group: group,
            userId: userId,
            organizationArn: organizationArn,
            organizationalUnitArn: organizationalUnitArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
