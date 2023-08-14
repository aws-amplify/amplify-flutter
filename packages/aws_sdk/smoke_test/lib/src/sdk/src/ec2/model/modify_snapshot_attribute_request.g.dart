// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_snapshot_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifySnapshotAttributeRequest extends ModifySnapshotAttributeRequest {
  @override
  final SnapshotAttributeName? attribute;
  @override
  final CreateVolumePermissionModifications? createVolumePermission;
  @override
  final _i3.BuiltList<String>? groupNames;
  @override
  final OperationType? operationType;
  @override
  final String? snapshotId;
  @override
  final _i3.BuiltList<String>? userIds;
  @override
  final bool dryRun;

  factory _$ModifySnapshotAttributeRequest(
          [void Function(ModifySnapshotAttributeRequestBuilder)? updates]) =>
      (new ModifySnapshotAttributeRequestBuilder()..update(updates))._build();

  _$ModifySnapshotAttributeRequest._(
      {this.attribute,
      this.createVolumePermission,
      this.groupNames,
      this.operationType,
      this.snapshotId,
      this.userIds,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifySnapshotAttributeRequest', 'dryRun');
  }

  @override
  ModifySnapshotAttributeRequest rebuild(
          void Function(ModifySnapshotAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifySnapshotAttributeRequestBuilder toBuilder() =>
      new ModifySnapshotAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifySnapshotAttributeRequest &&
        attribute == other.attribute &&
        createVolumePermission == other.createVolumePermission &&
        groupNames == other.groupNames &&
        operationType == other.operationType &&
        snapshotId == other.snapshotId &&
        userIds == other.userIds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, createVolumePermission.hashCode);
    _$hash = $jc(_$hash, groupNames.hashCode);
    _$hash = $jc(_$hash, operationType.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, userIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifySnapshotAttributeRequestBuilder
    implements
        Builder<ModifySnapshotAttributeRequest,
            ModifySnapshotAttributeRequestBuilder> {
  _$ModifySnapshotAttributeRequest? _$v;

  SnapshotAttributeName? _attribute;
  SnapshotAttributeName? get attribute => _$this._attribute;
  set attribute(SnapshotAttributeName? attribute) =>
      _$this._attribute = attribute;

  CreateVolumePermissionModificationsBuilder? _createVolumePermission;
  CreateVolumePermissionModificationsBuilder get createVolumePermission =>
      _$this._createVolumePermission ??=
          new CreateVolumePermissionModificationsBuilder();
  set createVolumePermission(
          CreateVolumePermissionModificationsBuilder? createVolumePermission) =>
      _$this._createVolumePermission = createVolumePermission;

  _i3.ListBuilder<String>? _groupNames;
  _i3.ListBuilder<String> get groupNames =>
      _$this._groupNames ??= new _i3.ListBuilder<String>();
  set groupNames(_i3.ListBuilder<String>? groupNames) =>
      _$this._groupNames = groupNames;

  OperationType? _operationType;
  OperationType? get operationType => _$this._operationType;
  set operationType(OperationType? operationType) =>
      _$this._operationType = operationType;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  _i3.ListBuilder<String>? _userIds;
  _i3.ListBuilder<String> get userIds =>
      _$this._userIds ??= new _i3.ListBuilder<String>();
  set userIds(_i3.ListBuilder<String>? userIds) => _$this._userIds = userIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifySnapshotAttributeRequestBuilder() {
    ModifySnapshotAttributeRequest._init(this);
  }

  ModifySnapshotAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attribute = $v.attribute;
      _createVolumePermission = $v.createVolumePermission?.toBuilder();
      _groupNames = $v.groupNames?.toBuilder();
      _operationType = $v.operationType;
      _snapshotId = $v.snapshotId;
      _userIds = $v.userIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifySnapshotAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifySnapshotAttributeRequest;
  }

  @override
  void update(void Function(ModifySnapshotAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifySnapshotAttributeRequest build() => _build();

  _$ModifySnapshotAttributeRequest _build() {
    _$ModifySnapshotAttributeRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifySnapshotAttributeRequest._(
              attribute: attribute,
              createVolumePermission: _createVolumePermission?.build(),
              groupNames: _groupNames?.build(),
              operationType: operationType,
              snapshotId: snapshotId,
              userIds: _userIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifySnapshotAttributeRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createVolumePermission';
        _createVolumePermission?.build();
        _$failedField = 'groupNames';
        _groupNames?.build();

        _$failedField = 'userIds';
        _userIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifySnapshotAttributeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
