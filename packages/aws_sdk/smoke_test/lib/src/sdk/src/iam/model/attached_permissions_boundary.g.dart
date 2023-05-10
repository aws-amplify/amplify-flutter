// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.attached_permissions_boundary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachedPermissionsBoundary extends AttachedPermissionsBoundary {
  @override
  final _i2.PermissionsBoundaryAttachmentType? permissionsBoundaryType;
  @override
  final String? permissionsBoundaryArn;

  factory _$AttachedPermissionsBoundary(
          [void Function(AttachedPermissionsBoundaryBuilder)? updates]) =>
      (new AttachedPermissionsBoundaryBuilder()..update(updates))._build();

  _$AttachedPermissionsBoundary._(
      {this.permissionsBoundaryType, this.permissionsBoundaryArn})
      : super._();

  @override
  AttachedPermissionsBoundary rebuild(
          void Function(AttachedPermissionsBoundaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachedPermissionsBoundaryBuilder toBuilder() =>
      new AttachedPermissionsBoundaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachedPermissionsBoundary &&
        permissionsBoundaryType == other.permissionsBoundaryType &&
        permissionsBoundaryArn == other.permissionsBoundaryArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, permissionsBoundaryType.hashCode);
    _$hash = $jc(_$hash, permissionsBoundaryArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttachedPermissionsBoundaryBuilder
    implements
        Builder<AttachedPermissionsBoundary,
            AttachedPermissionsBoundaryBuilder> {
  _$AttachedPermissionsBoundary? _$v;

  _i2.PermissionsBoundaryAttachmentType? _permissionsBoundaryType;
  _i2.PermissionsBoundaryAttachmentType? get permissionsBoundaryType =>
      _$this._permissionsBoundaryType;
  set permissionsBoundaryType(
          _i2.PermissionsBoundaryAttachmentType? permissionsBoundaryType) =>
      _$this._permissionsBoundaryType = permissionsBoundaryType;

  String? _permissionsBoundaryArn;
  String? get permissionsBoundaryArn => _$this._permissionsBoundaryArn;
  set permissionsBoundaryArn(String? permissionsBoundaryArn) =>
      _$this._permissionsBoundaryArn = permissionsBoundaryArn;

  AttachedPermissionsBoundaryBuilder() {
    AttachedPermissionsBoundary._init(this);
  }

  AttachedPermissionsBoundaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _permissionsBoundaryType = $v.permissionsBoundaryType;
      _permissionsBoundaryArn = $v.permissionsBoundaryArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachedPermissionsBoundary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachedPermissionsBoundary;
  }

  @override
  void update(void Function(AttachedPermissionsBoundaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachedPermissionsBoundary build() => _build();

  _$AttachedPermissionsBoundary _build() {
    final _$result = _$v ??
        new _$AttachedPermissionsBoundary._(
            permissionsBoundaryType: permissionsBoundaryType,
            permissionsBoundaryArn: permissionsBoundaryArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
