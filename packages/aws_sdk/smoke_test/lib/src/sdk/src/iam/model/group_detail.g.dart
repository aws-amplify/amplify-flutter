// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.group_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupDetail extends GroupDetail {
  @override
  final String? path;
  @override
  final String? groupName;
  @override
  final String? groupId;
  @override
  final String? arn;
  @override
  final DateTime? createDate;
  @override
  final _i4.BuiltList<_i2.PolicyDetail>? groupPolicyList;
  @override
  final _i4.BuiltList<_i3.AttachedPolicy>? attachedManagedPolicies;

  factory _$GroupDetail([void Function(GroupDetailBuilder)? updates]) =>
      (new GroupDetailBuilder()..update(updates))._build();

  _$GroupDetail._(
      {this.path,
      this.groupName,
      this.groupId,
      this.arn,
      this.createDate,
      this.groupPolicyList,
      this.attachedManagedPolicies})
      : super._();

  @override
  GroupDetail rebuild(void Function(GroupDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupDetailBuilder toBuilder() => new GroupDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupDetail &&
        path == other.path &&
        groupName == other.groupName &&
        groupId == other.groupId &&
        arn == other.arn &&
        createDate == other.createDate &&
        groupPolicyList == other.groupPolicyList &&
        attachedManagedPolicies == other.attachedManagedPolicies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, groupPolicyList.hashCode);
    _$hash = $jc(_$hash, attachedManagedPolicies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GroupDetailBuilder implements Builder<GroupDetail, GroupDetailBuilder> {
  _$GroupDetail? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  _i4.ListBuilder<_i2.PolicyDetail>? _groupPolicyList;
  _i4.ListBuilder<_i2.PolicyDetail> get groupPolicyList =>
      _$this._groupPolicyList ??= new _i4.ListBuilder<_i2.PolicyDetail>();
  set groupPolicyList(_i4.ListBuilder<_i2.PolicyDetail>? groupPolicyList) =>
      _$this._groupPolicyList = groupPolicyList;

  _i4.ListBuilder<_i3.AttachedPolicy>? _attachedManagedPolicies;
  _i4.ListBuilder<_i3.AttachedPolicy> get attachedManagedPolicies =>
      _$this._attachedManagedPolicies ??=
          new _i4.ListBuilder<_i3.AttachedPolicy>();
  set attachedManagedPolicies(
          _i4.ListBuilder<_i3.AttachedPolicy>? attachedManagedPolicies) =>
      _$this._attachedManagedPolicies = attachedManagedPolicies;

  GroupDetailBuilder() {
    GroupDetail._init(this);
  }

  GroupDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _groupName = $v.groupName;
      _groupId = $v.groupId;
      _arn = $v.arn;
      _createDate = $v.createDate;
      _groupPolicyList = $v.groupPolicyList?.toBuilder();
      _attachedManagedPolicies = $v.attachedManagedPolicies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupDetail;
  }

  @override
  void update(void Function(GroupDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupDetail build() => _build();

  _$GroupDetail _build() {
    _$GroupDetail _$result;
    try {
      _$result = _$v ??
          new _$GroupDetail._(
              path: path,
              groupName: groupName,
              groupId: groupId,
              arn: arn,
              createDate: createDate,
              groupPolicyList: _groupPolicyList?.build(),
              attachedManagedPolicies: _attachedManagedPolicies?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groupPolicyList';
        _groupPolicyList?.build();
        _$failedField = 'attachedManagedPolicies';
        _attachedManagedPolicies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GroupDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
