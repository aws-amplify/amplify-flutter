// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stack_instance_resource_drifts_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackInstanceResourceDriftsSummary
    extends StackInstanceResourceDriftsSummary {
  @override
  final String stackId;
  @override
  final String logicalResourceId;
  @override
  final String? physicalResourceId;
  @override
  final _i5.BuiltList<_i2.PhysicalResourceIdContextKeyValuePair>?
      physicalResourceIdContext;
  @override
  final String resourceType;
  @override
  final _i5.BuiltList<_i3.PropertyDifference>? propertyDifferences;
  @override
  final _i4.StackResourceDriftStatus stackResourceDriftStatus;
  @override
  final DateTime timestamp;

  factory _$StackInstanceResourceDriftsSummary(
          [void Function(StackInstanceResourceDriftsSummaryBuilder)?
              updates]) =>
      (new StackInstanceResourceDriftsSummaryBuilder()..update(updates))
          ._build();

  _$StackInstanceResourceDriftsSummary._(
      {required this.stackId,
      required this.logicalResourceId,
      this.physicalResourceId,
      this.physicalResourceIdContext,
      required this.resourceType,
      this.propertyDifferences,
      required this.stackResourceDriftStatus,
      required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackId, r'StackInstanceResourceDriftsSummary', 'stackId');
    BuiltValueNullFieldError.checkNotNull(logicalResourceId,
        r'StackInstanceResourceDriftsSummary', 'logicalResourceId');
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'StackInstanceResourceDriftsSummary', 'resourceType');
    BuiltValueNullFieldError.checkNotNull(stackResourceDriftStatus,
        r'StackInstanceResourceDriftsSummary', 'stackResourceDriftStatus');
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'StackInstanceResourceDriftsSummary', 'timestamp');
  }

  @override
  StackInstanceResourceDriftsSummary rebuild(
          void Function(StackInstanceResourceDriftsSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackInstanceResourceDriftsSummaryBuilder toBuilder() =>
      new StackInstanceResourceDriftsSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackInstanceResourceDriftsSummary &&
        stackId == other.stackId &&
        logicalResourceId == other.logicalResourceId &&
        physicalResourceId == other.physicalResourceId &&
        physicalResourceIdContext == other.physicalResourceIdContext &&
        resourceType == other.resourceType &&
        propertyDifferences == other.propertyDifferences &&
        stackResourceDriftStatus == other.stackResourceDriftStatus &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jc(_$hash, logicalResourceId.hashCode);
    _$hash = $jc(_$hash, physicalResourceId.hashCode);
    _$hash = $jc(_$hash, physicalResourceIdContext.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, propertyDifferences.hashCode);
    _$hash = $jc(_$hash, stackResourceDriftStatus.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackInstanceResourceDriftsSummaryBuilder
    implements
        Builder<StackInstanceResourceDriftsSummary,
            StackInstanceResourceDriftsSummaryBuilder> {
  _$StackInstanceResourceDriftsSummary? _$v;

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  String? _logicalResourceId;
  String? get logicalResourceId => _$this._logicalResourceId;
  set logicalResourceId(String? logicalResourceId) =>
      _$this._logicalResourceId = logicalResourceId;

  String? _physicalResourceId;
  String? get physicalResourceId => _$this._physicalResourceId;
  set physicalResourceId(String? physicalResourceId) =>
      _$this._physicalResourceId = physicalResourceId;

  _i5.ListBuilder<_i2.PhysicalResourceIdContextKeyValuePair>?
      _physicalResourceIdContext;
  _i5.ListBuilder<_i2.PhysicalResourceIdContextKeyValuePair>
      get physicalResourceIdContext => _$this._physicalResourceIdContext ??=
          new _i5.ListBuilder<_i2.PhysicalResourceIdContextKeyValuePair>();
  set physicalResourceIdContext(
          _i5.ListBuilder<_i2.PhysicalResourceIdContextKeyValuePair>?
              physicalResourceIdContext) =>
      _$this._physicalResourceIdContext = physicalResourceIdContext;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  _i5.ListBuilder<_i3.PropertyDifference>? _propertyDifferences;
  _i5.ListBuilder<_i3.PropertyDifference> get propertyDifferences =>
      _$this._propertyDifferences ??=
          new _i5.ListBuilder<_i3.PropertyDifference>();
  set propertyDifferences(
          _i5.ListBuilder<_i3.PropertyDifference>? propertyDifferences) =>
      _$this._propertyDifferences = propertyDifferences;

  _i4.StackResourceDriftStatus? _stackResourceDriftStatus;
  _i4.StackResourceDriftStatus? get stackResourceDriftStatus =>
      _$this._stackResourceDriftStatus;
  set stackResourceDriftStatus(
          _i4.StackResourceDriftStatus? stackResourceDriftStatus) =>
      _$this._stackResourceDriftStatus = stackResourceDriftStatus;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  StackInstanceResourceDriftsSummaryBuilder();

  StackInstanceResourceDriftsSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackId = $v.stackId;
      _logicalResourceId = $v.logicalResourceId;
      _physicalResourceId = $v.physicalResourceId;
      _physicalResourceIdContext = $v.physicalResourceIdContext?.toBuilder();
      _resourceType = $v.resourceType;
      _propertyDifferences = $v.propertyDifferences?.toBuilder();
      _stackResourceDriftStatus = $v.stackResourceDriftStatus;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackInstanceResourceDriftsSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackInstanceResourceDriftsSummary;
  }

  @override
  void update(
      void Function(StackInstanceResourceDriftsSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackInstanceResourceDriftsSummary build() => _build();

  _$StackInstanceResourceDriftsSummary _build() {
    _$StackInstanceResourceDriftsSummary _$result;
    try {
      _$result = _$v ??
          new _$StackInstanceResourceDriftsSummary._(
              stackId: BuiltValueNullFieldError.checkNotNull(
                  stackId, r'StackInstanceResourceDriftsSummary', 'stackId'),
              logicalResourceId: BuiltValueNullFieldError.checkNotNull(
                  logicalResourceId,
                  r'StackInstanceResourceDriftsSummary',
                  'logicalResourceId'),
              physicalResourceId: physicalResourceId,
              physicalResourceIdContext: _physicalResourceIdContext?.build(),
              resourceType: BuiltValueNullFieldError.checkNotNull(resourceType,
                  r'StackInstanceResourceDriftsSummary', 'resourceType'),
              propertyDifferences: _propertyDifferences?.build(),
              stackResourceDriftStatus: BuiltValueNullFieldError.checkNotNull(
                  stackResourceDriftStatus,
                  r'StackInstanceResourceDriftsSummary',
                  'stackResourceDriftStatus'),
              timestamp: BuiltValueNullFieldError.checkNotNull(timestamp,
                  r'StackInstanceResourceDriftsSummary', 'timestamp'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'physicalResourceIdContext';
        _physicalResourceIdContext?.build();

        _$failedField = 'propertyDifferences';
        _propertyDifferences?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StackInstanceResourceDriftsSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
