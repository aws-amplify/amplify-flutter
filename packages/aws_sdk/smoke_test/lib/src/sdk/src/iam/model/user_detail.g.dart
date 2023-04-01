// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.user_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserDetail extends UserDetail {
  @override
  final String? path;
  @override
  final String? userName;
  @override
  final String? userId;
  @override
  final String? arn;
  @override
  final DateTime? createDate;
  @override
  final _i6.BuiltList<_i2.PolicyDetail>? userPolicyList;
  @override
  final _i6.BuiltList<String>? groupList;
  @override
  final _i6.BuiltList<_i3.AttachedPolicy>? attachedManagedPolicies;
  @override
  final _i4.AttachedPermissionsBoundary? permissionsBoundary;
  @override
  final _i6.BuiltList<_i5.Tag>? tags;

  factory _$UserDetail([void Function(UserDetailBuilder)? updates]) =>
      (new UserDetailBuilder()..update(updates))._build();

  _$UserDetail._(
      {this.path,
      this.userName,
      this.userId,
      this.arn,
      this.createDate,
      this.userPolicyList,
      this.groupList,
      this.attachedManagedPolicies,
      this.permissionsBoundary,
      this.tags})
      : super._();

  @override
  UserDetail rebuild(void Function(UserDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDetailBuilder toBuilder() => new UserDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDetail &&
        path == other.path &&
        userName == other.userName &&
        userId == other.userId &&
        arn == other.arn &&
        createDate == other.createDate &&
        userPolicyList == other.userPolicyList &&
        groupList == other.groupList &&
        attachedManagedPolicies == other.attachedManagedPolicies &&
        permissionsBoundary == other.permissionsBoundary &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, userPolicyList.hashCode);
    _$hash = $jc(_$hash, groupList.hashCode);
    _$hash = $jc(_$hash, attachedManagedPolicies.hashCode);
    _$hash = $jc(_$hash, permissionsBoundary.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UserDetailBuilder implements Builder<UserDetail, UserDetailBuilder> {
  _$UserDetail? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  _i6.ListBuilder<_i2.PolicyDetail>? _userPolicyList;
  _i6.ListBuilder<_i2.PolicyDetail> get userPolicyList =>
      _$this._userPolicyList ??= new _i6.ListBuilder<_i2.PolicyDetail>();
  set userPolicyList(_i6.ListBuilder<_i2.PolicyDetail>? userPolicyList) =>
      _$this._userPolicyList = userPolicyList;

  _i6.ListBuilder<String>? _groupList;
  _i6.ListBuilder<String> get groupList =>
      _$this._groupList ??= new _i6.ListBuilder<String>();
  set groupList(_i6.ListBuilder<String>? groupList) =>
      _$this._groupList = groupList;

  _i6.ListBuilder<_i3.AttachedPolicy>? _attachedManagedPolicies;
  _i6.ListBuilder<_i3.AttachedPolicy> get attachedManagedPolicies =>
      _$this._attachedManagedPolicies ??=
          new _i6.ListBuilder<_i3.AttachedPolicy>();
  set attachedManagedPolicies(
          _i6.ListBuilder<_i3.AttachedPolicy>? attachedManagedPolicies) =>
      _$this._attachedManagedPolicies = attachedManagedPolicies;

  _i4.AttachedPermissionsBoundaryBuilder? _permissionsBoundary;
  _i4.AttachedPermissionsBoundaryBuilder get permissionsBoundary =>
      _$this._permissionsBoundary ??=
          new _i4.AttachedPermissionsBoundaryBuilder();
  set permissionsBoundary(
          _i4.AttachedPermissionsBoundaryBuilder? permissionsBoundary) =>
      _$this._permissionsBoundary = permissionsBoundary;

  _i6.ListBuilder<_i5.Tag>? _tags;
  _i6.ListBuilder<_i5.Tag> get tags =>
      _$this._tags ??= new _i6.ListBuilder<_i5.Tag>();
  set tags(_i6.ListBuilder<_i5.Tag>? tags) => _$this._tags = tags;

  UserDetailBuilder() {
    UserDetail._init(this);
  }

  UserDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _userName = $v.userName;
      _userId = $v.userId;
      _arn = $v.arn;
      _createDate = $v.createDate;
      _userPolicyList = $v.userPolicyList?.toBuilder();
      _groupList = $v.groupList?.toBuilder();
      _attachedManagedPolicies = $v.attachedManagedPolicies?.toBuilder();
      _permissionsBoundary = $v.permissionsBoundary?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserDetail;
  }

  @override
  void update(void Function(UserDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserDetail build() => _build();

  _$UserDetail _build() {
    _$UserDetail _$result;
    try {
      _$result = _$v ??
          new _$UserDetail._(
              path: path,
              userName: userName,
              userId: userId,
              arn: arn,
              createDate: createDate,
              userPolicyList: _userPolicyList?.build(),
              groupList: _groupList?.build(),
              attachedManagedPolicies: _attachedManagedPolicies?.build(),
              permissionsBoundary: _permissionsBoundary?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userPolicyList';
        _userPolicyList?.build();
        _$failedField = 'groupList';
        _groupList?.build();
        _$failedField = 'attachedManagedPolicies';
        _attachedManagedPolicies?.build();
        _$failedField = 'permissionsBoundary';
        _permissionsBoundary?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
