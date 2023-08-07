// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RoleDetail extends RoleDetail {
  @override
  final String? path;
  @override
  final String? roleName;
  @override
  final String? roleId;
  @override
  final String? arn;
  @override
  final DateTime? createDate;
  @override
  final String? assumeRolePolicyDocument;
  @override
  final _i2.BuiltList<InstanceProfile>? instanceProfileList;
  @override
  final _i2.BuiltList<PolicyDetail>? rolePolicyList;
  @override
  final _i2.BuiltList<AttachedPolicy>? attachedManagedPolicies;
  @override
  final AttachedPermissionsBoundary? permissionsBoundary;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final RoleLastUsed? roleLastUsed;

  factory _$RoleDetail([void Function(RoleDetailBuilder)? updates]) =>
      (new RoleDetailBuilder()..update(updates))._build();

  _$RoleDetail._(
      {this.path,
      this.roleName,
      this.roleId,
      this.arn,
      this.createDate,
      this.assumeRolePolicyDocument,
      this.instanceProfileList,
      this.rolePolicyList,
      this.attachedManagedPolicies,
      this.permissionsBoundary,
      this.tags,
      this.roleLastUsed})
      : super._();

  @override
  RoleDetail rebuild(void Function(RoleDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleDetailBuilder toBuilder() => new RoleDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoleDetail &&
        path == other.path &&
        roleName == other.roleName &&
        roleId == other.roleId &&
        arn == other.arn &&
        createDate == other.createDate &&
        assumeRolePolicyDocument == other.assumeRolePolicyDocument &&
        instanceProfileList == other.instanceProfileList &&
        rolePolicyList == other.rolePolicyList &&
        attachedManagedPolicies == other.attachedManagedPolicies &&
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
    _$hash = $jc(_$hash, instanceProfileList.hashCode);
    _$hash = $jc(_$hash, rolePolicyList.hashCode);
    _$hash = $jc(_$hash, attachedManagedPolicies.hashCode);
    _$hash = $jc(_$hash, permissionsBoundary.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, roleLastUsed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RoleDetailBuilder implements Builder<RoleDetail, RoleDetailBuilder> {
  _$RoleDetail? _$v;

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

  _i2.ListBuilder<InstanceProfile>? _instanceProfileList;
  _i2.ListBuilder<InstanceProfile> get instanceProfileList =>
      _$this._instanceProfileList ??= new _i2.ListBuilder<InstanceProfile>();
  set instanceProfileList(
          _i2.ListBuilder<InstanceProfile>? instanceProfileList) =>
      _$this._instanceProfileList = instanceProfileList;

  _i2.ListBuilder<PolicyDetail>? _rolePolicyList;
  _i2.ListBuilder<PolicyDetail> get rolePolicyList =>
      _$this._rolePolicyList ??= new _i2.ListBuilder<PolicyDetail>();
  set rolePolicyList(_i2.ListBuilder<PolicyDetail>? rolePolicyList) =>
      _$this._rolePolicyList = rolePolicyList;

  _i2.ListBuilder<AttachedPolicy>? _attachedManagedPolicies;
  _i2.ListBuilder<AttachedPolicy> get attachedManagedPolicies =>
      _$this._attachedManagedPolicies ??= new _i2.ListBuilder<AttachedPolicy>();
  set attachedManagedPolicies(
          _i2.ListBuilder<AttachedPolicy>? attachedManagedPolicies) =>
      _$this._attachedManagedPolicies = attachedManagedPolicies;

  AttachedPermissionsBoundaryBuilder? _permissionsBoundary;
  AttachedPermissionsBoundaryBuilder get permissionsBoundary =>
      _$this._permissionsBoundary ??= new AttachedPermissionsBoundaryBuilder();
  set permissionsBoundary(
          AttachedPermissionsBoundaryBuilder? permissionsBoundary) =>
      _$this._permissionsBoundary = permissionsBoundary;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  RoleLastUsedBuilder? _roleLastUsed;
  RoleLastUsedBuilder get roleLastUsed =>
      _$this._roleLastUsed ??= new RoleLastUsedBuilder();
  set roleLastUsed(RoleLastUsedBuilder? roleLastUsed) =>
      _$this._roleLastUsed = roleLastUsed;

  RoleDetailBuilder();

  RoleDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _roleName = $v.roleName;
      _roleId = $v.roleId;
      _arn = $v.arn;
      _createDate = $v.createDate;
      _assumeRolePolicyDocument = $v.assumeRolePolicyDocument;
      _instanceProfileList = $v.instanceProfileList?.toBuilder();
      _rolePolicyList = $v.rolePolicyList?.toBuilder();
      _attachedManagedPolicies = $v.attachedManagedPolicies?.toBuilder();
      _permissionsBoundary = $v.permissionsBoundary?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _roleLastUsed = $v.roleLastUsed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RoleDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RoleDetail;
  }

  @override
  void update(void Function(RoleDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RoleDetail build() => _build();

  _$RoleDetail _build() {
    _$RoleDetail _$result;
    try {
      _$result = _$v ??
          new _$RoleDetail._(
              path: path,
              roleName: roleName,
              roleId: roleId,
              arn: arn,
              createDate: createDate,
              assumeRolePolicyDocument: assumeRolePolicyDocument,
              instanceProfileList: _instanceProfileList?.build(),
              rolePolicyList: _rolePolicyList?.build(),
              attachedManagedPolicies: _attachedManagedPolicies?.build(),
              permissionsBoundary: _permissionsBoundary?.build(),
              tags: _tags?.build(),
              roleLastUsed: _roleLastUsed?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceProfileList';
        _instanceProfileList?.build();
        _$failedField = 'rolePolicyList';
        _rolePolicyList?.build();
        _$failedField = 'attachedManagedPolicies';
        _attachedManagedPolicies?.build();
        _$failedField = 'permissionsBoundary';
        _permissionsBoundary?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'roleLastUsed';
        _roleLastUsed?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RoleDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
