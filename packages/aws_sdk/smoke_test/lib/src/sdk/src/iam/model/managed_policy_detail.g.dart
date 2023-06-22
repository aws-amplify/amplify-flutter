// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'managed_policy_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ManagedPolicyDetail extends ManagedPolicyDetail {
  @override
  final String? policyName;
  @override
  final String? policyId;
  @override
  final String? arn;
  @override
  final String? path;
  @override
  final String? defaultVersionId;
  @override
  final int? attachmentCount;
  @override
  final int? permissionsBoundaryUsageCount;
  @override
  final bool isAttachable;
  @override
  final String? description;
  @override
  final DateTime? createDate;
  @override
  final DateTime? updateDate;
  @override
  final _i3.BuiltList<_i2.PolicyVersion>? policyVersionList;

  factory _$ManagedPolicyDetail(
          [void Function(ManagedPolicyDetailBuilder)? updates]) =>
      (new ManagedPolicyDetailBuilder()..update(updates))._build();

  _$ManagedPolicyDetail._(
      {this.policyName,
      this.policyId,
      this.arn,
      this.path,
      this.defaultVersionId,
      this.attachmentCount,
      this.permissionsBoundaryUsageCount,
      required this.isAttachable,
      this.description,
      this.createDate,
      this.updateDate,
      this.policyVersionList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isAttachable, r'ManagedPolicyDetail', 'isAttachable');
  }

  @override
  ManagedPolicyDetail rebuild(
          void Function(ManagedPolicyDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ManagedPolicyDetailBuilder toBuilder() =>
      new ManagedPolicyDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ManagedPolicyDetail &&
        policyName == other.policyName &&
        policyId == other.policyId &&
        arn == other.arn &&
        path == other.path &&
        defaultVersionId == other.defaultVersionId &&
        attachmentCount == other.attachmentCount &&
        permissionsBoundaryUsageCount == other.permissionsBoundaryUsageCount &&
        isAttachable == other.isAttachable &&
        description == other.description &&
        createDate == other.createDate &&
        updateDate == other.updateDate &&
        policyVersionList == other.policyVersionList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, policyId.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, defaultVersionId.hashCode);
    _$hash = $jc(_$hash, attachmentCount.hashCode);
    _$hash = $jc(_$hash, permissionsBoundaryUsageCount.hashCode);
    _$hash = $jc(_$hash, isAttachable.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, updateDate.hashCode);
    _$hash = $jc(_$hash, policyVersionList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ManagedPolicyDetailBuilder
    implements Builder<ManagedPolicyDetail, ManagedPolicyDetailBuilder> {
  _$ManagedPolicyDetail? _$v;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  String? _policyId;
  String? get policyId => _$this._policyId;
  set policyId(String? policyId) => _$this._policyId = policyId;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _defaultVersionId;
  String? get defaultVersionId => _$this._defaultVersionId;
  set defaultVersionId(String? defaultVersionId) =>
      _$this._defaultVersionId = defaultVersionId;

  int? _attachmentCount;
  int? get attachmentCount => _$this._attachmentCount;
  set attachmentCount(int? attachmentCount) =>
      _$this._attachmentCount = attachmentCount;

  int? _permissionsBoundaryUsageCount;
  int? get permissionsBoundaryUsageCount =>
      _$this._permissionsBoundaryUsageCount;
  set permissionsBoundaryUsageCount(int? permissionsBoundaryUsageCount) =>
      _$this._permissionsBoundaryUsageCount = permissionsBoundaryUsageCount;

  bool? _isAttachable;
  bool? get isAttachable => _$this._isAttachable;
  set isAttachable(bool? isAttachable) => _$this._isAttachable = isAttachable;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  DateTime? _updateDate;
  DateTime? get updateDate => _$this._updateDate;
  set updateDate(DateTime? updateDate) => _$this._updateDate = updateDate;

  _i3.ListBuilder<_i2.PolicyVersion>? _policyVersionList;
  _i3.ListBuilder<_i2.PolicyVersion> get policyVersionList =>
      _$this._policyVersionList ??= new _i3.ListBuilder<_i2.PolicyVersion>();
  set policyVersionList(
          _i3.ListBuilder<_i2.PolicyVersion>? policyVersionList) =>
      _$this._policyVersionList = policyVersionList;

  ManagedPolicyDetailBuilder() {
    ManagedPolicyDetail._init(this);
  }

  ManagedPolicyDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyName = $v.policyName;
      _policyId = $v.policyId;
      _arn = $v.arn;
      _path = $v.path;
      _defaultVersionId = $v.defaultVersionId;
      _attachmentCount = $v.attachmentCount;
      _permissionsBoundaryUsageCount = $v.permissionsBoundaryUsageCount;
      _isAttachable = $v.isAttachable;
      _description = $v.description;
      _createDate = $v.createDate;
      _updateDate = $v.updateDate;
      _policyVersionList = $v.policyVersionList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ManagedPolicyDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ManagedPolicyDetail;
  }

  @override
  void update(void Function(ManagedPolicyDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ManagedPolicyDetail build() => _build();

  _$ManagedPolicyDetail _build() {
    _$ManagedPolicyDetail _$result;
    try {
      _$result = _$v ??
          new _$ManagedPolicyDetail._(
              policyName: policyName,
              policyId: policyId,
              arn: arn,
              path: path,
              defaultVersionId: defaultVersionId,
              attachmentCount: attachmentCount,
              permissionsBoundaryUsageCount: permissionsBoundaryUsageCount,
              isAttachable: BuiltValueNullFieldError.checkNotNull(
                  isAttachable, r'ManagedPolicyDetail', 'isAttachable'),
              description: description,
              createDate: createDate,
              updateDate: updateDate,
              policyVersionList: _policyVersionList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policyVersionList';
        _policyVersionList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ManagedPolicyDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
