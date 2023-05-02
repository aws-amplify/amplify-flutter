// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.change_set_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeSetSummary extends ChangeSetSummary {
  @override
  final String? stackId;
  @override
  final String? stackName;
  @override
  final String? changeSetId;
  @override
  final String? changeSetName;
  @override
  final _i2.ExecutionStatus? executionStatus;
  @override
  final _i3.ChangeSetStatus? status;
  @override
  final String? statusReason;
  @override
  final DateTime? creationTime;
  @override
  final String? description;
  @override
  final bool? includeNestedStacks;
  @override
  final String? parentChangeSetId;
  @override
  final String? rootChangeSetId;

  factory _$ChangeSetSummary(
          [void Function(ChangeSetSummaryBuilder)? updates]) =>
      (new ChangeSetSummaryBuilder()..update(updates))._build();

  _$ChangeSetSummary._(
      {this.stackId,
      this.stackName,
      this.changeSetId,
      this.changeSetName,
      this.executionStatus,
      this.status,
      this.statusReason,
      this.creationTime,
      this.description,
      this.includeNestedStacks,
      this.parentChangeSetId,
      this.rootChangeSetId})
      : super._();

  @override
  ChangeSetSummary rebuild(void Function(ChangeSetSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSetSummaryBuilder toBuilder() =>
      new ChangeSetSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSetSummary &&
        stackId == other.stackId &&
        stackName == other.stackName &&
        changeSetId == other.changeSetId &&
        changeSetName == other.changeSetName &&
        executionStatus == other.executionStatus &&
        status == other.status &&
        statusReason == other.statusReason &&
        creationTime == other.creationTime &&
        description == other.description &&
        includeNestedStacks == other.includeNestedStacks &&
        parentChangeSetId == other.parentChangeSetId &&
        rootChangeSetId == other.rootChangeSetId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, changeSetId.hashCode);
    _$hash = $jc(_$hash, changeSetName.hashCode);
    _$hash = $jc(_$hash, executionStatus.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusReason.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, includeNestedStacks.hashCode);
    _$hash = $jc(_$hash, parentChangeSetId.hashCode);
    _$hash = $jc(_$hash, rootChangeSetId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ChangeSetSummaryBuilder
    implements Builder<ChangeSetSummary, ChangeSetSummaryBuilder> {
  _$ChangeSetSummary? _$v;

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _changeSetId;
  String? get changeSetId => _$this._changeSetId;
  set changeSetId(String? changeSetId) => _$this._changeSetId = changeSetId;

  String? _changeSetName;
  String? get changeSetName => _$this._changeSetName;
  set changeSetName(String? changeSetName) =>
      _$this._changeSetName = changeSetName;

  _i2.ExecutionStatus? _executionStatus;
  _i2.ExecutionStatus? get executionStatus => _$this._executionStatus;
  set executionStatus(_i2.ExecutionStatus? executionStatus) =>
      _$this._executionStatus = executionStatus;

  _i3.ChangeSetStatus? _status;
  _i3.ChangeSetStatus? get status => _$this._status;
  set status(_i3.ChangeSetStatus? status) => _$this._status = status;

  String? _statusReason;
  String? get statusReason => _$this._statusReason;
  set statusReason(String? statusReason) => _$this._statusReason = statusReason;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _includeNestedStacks;
  bool? get includeNestedStacks => _$this._includeNestedStacks;
  set includeNestedStacks(bool? includeNestedStacks) =>
      _$this._includeNestedStacks = includeNestedStacks;

  String? _parentChangeSetId;
  String? get parentChangeSetId => _$this._parentChangeSetId;
  set parentChangeSetId(String? parentChangeSetId) =>
      _$this._parentChangeSetId = parentChangeSetId;

  String? _rootChangeSetId;
  String? get rootChangeSetId => _$this._rootChangeSetId;
  set rootChangeSetId(String? rootChangeSetId) =>
      _$this._rootChangeSetId = rootChangeSetId;

  ChangeSetSummaryBuilder() {
    ChangeSetSummary._init(this);
  }

  ChangeSetSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackId = $v.stackId;
      _stackName = $v.stackName;
      _changeSetId = $v.changeSetId;
      _changeSetName = $v.changeSetName;
      _executionStatus = $v.executionStatus;
      _status = $v.status;
      _statusReason = $v.statusReason;
      _creationTime = $v.creationTime;
      _description = $v.description;
      _includeNestedStacks = $v.includeNestedStacks;
      _parentChangeSetId = $v.parentChangeSetId;
      _rootChangeSetId = $v.rootChangeSetId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSetSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSetSummary;
  }

  @override
  void update(void Function(ChangeSetSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSetSummary build() => _build();

  _$ChangeSetSummary _build() {
    final _$result = _$v ??
        new _$ChangeSetSummary._(
            stackId: stackId,
            stackName: stackName,
            changeSetId: changeSetId,
            changeSetName: changeSetName,
            executionStatus: executionStatus,
            status: status,
            statusReason: statusReason,
            creationTime: creationTime,
            description: description,
            includeNestedStacks: includeNestedStacks,
            parentChangeSetId: parentChangeSetId,
            rootChangeSetId: rootChangeSetId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
