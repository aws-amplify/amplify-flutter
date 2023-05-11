// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.role;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Role extends Role {
  @override
  final String path;
  @override
  final String roleName;
  @override
  final String roleId;
  @override
  final String arn;
  @override
  final DateTime createDate;
  @override
  final String? assumeRolePolicyDocument;
  @override
  final String? description;
  @override
  final int? maxSessionDuration;
  @override
  final _i2.AttachedPermissionsBoundary? permissionsBoundary;
  @override
  final _i5.BuiltList<_i3.Tag>? tags;
  @override
  final _i4.RoleLastUsed? roleLastUsed;

  factory _$Role([void Function(RoleBuilder)? updates]) =>
      (new RoleBuilder()..update(updates))._build();

  _$Role._(
      {required this.path,
      required this.roleName,
      required this.roleId,
      required this.arn,
      required this.createDate,
      this.assumeRolePolicyDocument,
      this.description,
      this.maxSessionDuration,
      this.permissionsBoundary,
      this.tags,
      this.roleLastUsed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(path, r'Role', 'path');
    BuiltValueNullFieldError.checkNotNull(roleName, r'Role', 'roleName');
    BuiltValueNullFieldError.checkNotNull(roleId, r'Role', 'roleId');
    BuiltValueNullFieldError.checkNotNull(arn, r'Role', 'arn');
    BuiltValueNullFieldError.checkNotNull(createDate, r'Role', 'createDate');
  }

  @override
  Role rebuild(void Function(RoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleBuilder toBuilder() => new RoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Role &&
        path == other.path &&
        roleName == other.roleName &&
        roleId == other.roleId &&
        arn == other.arn &&
        createDate == other.createDate &&
        assumeRolePolicyDocument == other.assumeRolePolicyDocument &&
        description == other.description &&
        maxSessionDuration == other.maxSessionDuration &&
        permissionsBoundary == other.permissionsBoundary &&
        tags == other.tags &&
        roleLastUsed == other.roleLastUsed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, assumeRolePolicyDocument.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, maxSessionDuration.hashCode);
    _$hash = $jc(_$hash, permissionsBoundary.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, roleLastUsed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RoleBuilder implements Builder<Role, RoleBuilder> {
  _$Role? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _roleId;
  String? get roleId => _$this._roleId;
  set roleId(String? roleId) => _$this._roleId = roleId;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  String? _assumeRolePolicyDocument;
  String? get assumeRolePolicyDocument => _$this._assumeRolePolicyDocument;
  set assumeRolePolicyDocument(String? assumeRolePolicyDocument) =>
      _$this._assumeRolePolicyDocument = assumeRolePolicyDocument;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _maxSessionDuration;
  int? get maxSessionDuration => _$this._maxSessionDuration;
  set maxSessionDuration(int? maxSessionDuration) =>
      _$this._maxSessionDuration = maxSessionDuration;

  _i2.AttachedPermissionsBoundaryBuilder? _permissionsBoundary;
  _i2.AttachedPermissionsBoundaryBuilder get permissionsBoundary =>
      _$this._permissionsBoundary ??=
          new _i2.AttachedPermissionsBoundaryBuilder();
  set permissionsBoundary(
          _i2.AttachedPermissionsBoundaryBuilder? permissionsBoundary) =>
      _$this._permissionsBoundary = permissionsBoundary;

  _i5.ListBuilder<_i3.Tag>? _tags;
  _i5.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i5.ListBuilder<_i3.Tag>();
  set tags(_i5.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  _i4.RoleLastUsedBuilder? _roleLastUsed;
  _i4.RoleLastUsedBuilder get roleLastUsed =>
      _$this._roleLastUsed ??= new _i4.RoleLastUsedBuilder();
  set roleLastUsed(_i4.RoleLastUsedBuilder? roleLastUsed) =>
      _$this._roleLastUsed = roleLastUsed;

  RoleBuilder() {
    Role._init(this);
  }

  RoleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _roleName = $v.roleName;
      _roleId = $v.roleId;
      _arn = $v.arn;
      _createDate = $v.createDate;
      _assumeRolePolicyDocument = $v.assumeRolePolicyDocument;
      _description = $v.description;
      _maxSessionDuration = $v.maxSessionDuration;
      _permissionsBoundary = $v.permissionsBoundary?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _roleLastUsed = $v.roleLastUsed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Role other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Role;
  }

  @override
  void update(void Function(RoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Role build() => _build();

  _$Role _build() {
    _$Role _$result;
    try {
      _$result = _$v ??
          new _$Role._(
              path:
                  BuiltValueNullFieldError.checkNotNull(path, r'Role', 'path'),
              roleName: BuiltValueNullFieldError.checkNotNull(
                  roleName, r'Role', 'roleName'),
              roleId: BuiltValueNullFieldError.checkNotNull(
                  roleId, r'Role', 'roleId'),
              arn: BuiltValueNullFieldError.checkNotNull(arn, r'Role', 'arn'),
              createDate: BuiltValueNullFieldError.checkNotNull(
                  createDate, r'Role', 'createDate'),
              assumeRolePolicyDocument: assumeRolePolicyDocument,
              description: description,
              maxSessionDuration: maxSessionDuration,
              permissionsBoundary: _permissionsBoundary?.build(),
              tags: _tags?.build(),
              roleLastUsed: _roleLastUsed?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissionsBoundary';
        _permissionsBoundary?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'roleLastUsed';
        _roleLastUsed?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Role', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
