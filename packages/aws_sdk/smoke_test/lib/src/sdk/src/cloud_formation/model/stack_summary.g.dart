// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackSummary extends StackSummary {
  @override
  final String? stackId;
  @override
  final String stackName;
  @override
  final String? templateDescription;
  @override
  final DateTime creationTime;
  @override
  final DateTime? lastUpdatedTime;
  @override
  final DateTime? deletionTime;
  @override
  final _i2.StackStatus stackStatus;
  @override
  final String? stackStatusReason;
  @override
  final String? parentId;
  @override
  final String? rootId;
  @override
  final _i3.StackDriftInformationSummary? driftInformation;

  factory _$StackSummary([void Function(StackSummaryBuilder)? updates]) =>
      (new StackSummaryBuilder()..update(updates))._build();

  _$StackSummary._(
      {this.stackId,
      required this.stackName,
      this.templateDescription,
      required this.creationTime,
      this.lastUpdatedTime,
      this.deletionTime,
      required this.stackStatus,
      this.stackStatusReason,
      this.parentId,
      this.rootId,
      this.driftInformation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'StackSummary', 'stackName');
    BuiltValueNullFieldError.checkNotNull(
        creationTime, r'StackSummary', 'creationTime');
    BuiltValueNullFieldError.checkNotNull(
        stackStatus, r'StackSummary', 'stackStatus');
  }

  @override
  StackSummary rebuild(void Function(StackSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackSummaryBuilder toBuilder() => new StackSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackSummary &&
        stackId == other.stackId &&
        stackName == other.stackName &&
        templateDescription == other.templateDescription &&
        creationTime == other.creationTime &&
        lastUpdatedTime == other.lastUpdatedTime &&
        deletionTime == other.deletionTime &&
        stackStatus == other.stackStatus &&
        stackStatusReason == other.stackStatusReason &&
        parentId == other.parentId &&
        rootId == other.rootId &&
        driftInformation == other.driftInformation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, templateDescription.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, lastUpdatedTime.hashCode);
    _$hash = $jc(_$hash, deletionTime.hashCode);
    _$hash = $jc(_$hash, stackStatus.hashCode);
    _$hash = $jc(_$hash, stackStatusReason.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, rootId.hashCode);
    _$hash = $jc(_$hash, driftInformation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackSummaryBuilder
    implements Builder<StackSummary, StackSummaryBuilder> {
  _$StackSummary? _$v;

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _templateDescription;
  String? get templateDescription => _$this._templateDescription;
  set templateDescription(String? templateDescription) =>
      _$this._templateDescription = templateDescription;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  DateTime? _lastUpdatedTime;
  DateTime? get lastUpdatedTime => _$this._lastUpdatedTime;
  set lastUpdatedTime(DateTime? lastUpdatedTime) =>
      _$this._lastUpdatedTime = lastUpdatedTime;

  DateTime? _deletionTime;
  DateTime? get deletionTime => _$this._deletionTime;
  set deletionTime(DateTime? deletionTime) =>
      _$this._deletionTime = deletionTime;

  _i2.StackStatus? _stackStatus;
  _i2.StackStatus? get stackStatus => _$this._stackStatus;
  set stackStatus(_i2.StackStatus? stackStatus) =>
      _$this._stackStatus = stackStatus;

  String? _stackStatusReason;
  String? get stackStatusReason => _$this._stackStatusReason;
  set stackStatusReason(String? stackStatusReason) =>
      _$this._stackStatusReason = stackStatusReason;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  String? _rootId;
  String? get rootId => _$this._rootId;
  set rootId(String? rootId) => _$this._rootId = rootId;

  _i3.StackDriftInformationSummaryBuilder? _driftInformation;
  _i3.StackDriftInformationSummaryBuilder get driftInformation =>
      _$this._driftInformation ??=
          new _i3.StackDriftInformationSummaryBuilder();
  set driftInformation(
          _i3.StackDriftInformationSummaryBuilder? driftInformation) =>
      _$this._driftInformation = driftInformation;

  StackSummaryBuilder() {
    StackSummary._init(this);
  }

  StackSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackId = $v.stackId;
      _stackName = $v.stackName;
      _templateDescription = $v.templateDescription;
      _creationTime = $v.creationTime;
      _lastUpdatedTime = $v.lastUpdatedTime;
      _deletionTime = $v.deletionTime;
      _stackStatus = $v.stackStatus;
      _stackStatusReason = $v.stackStatusReason;
      _parentId = $v.parentId;
      _rootId = $v.rootId;
      _driftInformation = $v.driftInformation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackSummary;
  }

  @override
  void update(void Function(StackSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackSummary build() => _build();

  _$StackSummary _build() {
    _$StackSummary _$result;
    try {
      _$result = _$v ??
          new _$StackSummary._(
              stackId: stackId,
              stackName: BuiltValueNullFieldError.checkNotNull(
                  stackName, r'StackSummary', 'stackName'),
              templateDescription: templateDescription,
              creationTime: BuiltValueNullFieldError.checkNotNull(
                  creationTime, r'StackSummary', 'creationTime'),
              lastUpdatedTime: lastUpdatedTime,
              deletionTime: deletionTime,
              stackStatus: BuiltValueNullFieldError.checkNotNull(
                  stackStatus, r'StackSummary', 'stackStatus'),
              stackStatusReason: stackStatusReason,
              parentId: parentId,
              rootId: rootId,
              driftInformation: _driftInformation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'driftInformation';
        _driftInformation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StackSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
