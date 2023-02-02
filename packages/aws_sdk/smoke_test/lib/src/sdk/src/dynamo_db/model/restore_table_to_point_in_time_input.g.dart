// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.restore_table_to_point_in_time_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreTableToPointInTimeInput extends RestoreTableToPointInTimeInput {
  @override
  final _i3.BillingMode? billingModeOverride;
  @override
  final _i8.BuiltList<_i4.GlobalSecondaryIndex>? globalSecondaryIndexOverride;
  @override
  final _i8.BuiltList<_i5.LocalSecondaryIndex>? localSecondaryIndexOverride;
  @override
  final _i6.ProvisionedThroughput? provisionedThroughputOverride;
  @override
  final DateTime? restoreDateTime;
  @override
  final String? sourceTableArn;
  @override
  final String? sourceTableName;
  @override
  final _i7.SseSpecification? sseSpecificationOverride;
  @override
  final String targetTableName;
  @override
  final bool? useLatestRestorableTime;

  factory _$RestoreTableToPointInTimeInput(
          [void Function(RestoreTableToPointInTimeInputBuilder)? updates]) =>
      (new RestoreTableToPointInTimeInputBuilder()..update(updates))._build();

  _$RestoreTableToPointInTimeInput._(
      {this.billingModeOverride,
      this.globalSecondaryIndexOverride,
      this.localSecondaryIndexOverride,
      this.provisionedThroughputOverride,
      this.restoreDateTime,
      this.sourceTableArn,
      this.sourceTableName,
      this.sseSpecificationOverride,
      required this.targetTableName,
      this.useLatestRestorableTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        targetTableName, r'RestoreTableToPointInTimeInput', 'targetTableName');
  }

  @override
  RestoreTableToPointInTimeInput rebuild(
          void Function(RestoreTableToPointInTimeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreTableToPointInTimeInputBuilder toBuilder() =>
      new RestoreTableToPointInTimeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreTableToPointInTimeInput &&
        billingModeOverride == other.billingModeOverride &&
        globalSecondaryIndexOverride == other.globalSecondaryIndexOverride &&
        localSecondaryIndexOverride == other.localSecondaryIndexOverride &&
        provisionedThroughputOverride == other.provisionedThroughputOverride &&
        restoreDateTime == other.restoreDateTime &&
        sourceTableArn == other.sourceTableArn &&
        sourceTableName == other.sourceTableName &&
        sseSpecificationOverride == other.sseSpecificationOverride &&
        targetTableName == other.targetTableName &&
        useLatestRestorableTime == other.useLatestRestorableTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, billingModeOverride.hashCode);
    _$hash = $jc(_$hash, globalSecondaryIndexOverride.hashCode);
    _$hash = $jc(_$hash, localSecondaryIndexOverride.hashCode);
    _$hash = $jc(_$hash, provisionedThroughputOverride.hashCode);
    _$hash = $jc(_$hash, restoreDateTime.hashCode);
    _$hash = $jc(_$hash, sourceTableArn.hashCode);
    _$hash = $jc(_$hash, sourceTableName.hashCode);
    _$hash = $jc(_$hash, sseSpecificationOverride.hashCode);
    _$hash = $jc(_$hash, targetTableName.hashCode);
    _$hash = $jc(_$hash, useLatestRestorableTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreTableToPointInTimeInputBuilder
    implements
        Builder<RestoreTableToPointInTimeInput,
            RestoreTableToPointInTimeInputBuilder> {
  _$RestoreTableToPointInTimeInput? _$v;

  _i3.BillingMode? _billingModeOverride;
  _i3.BillingMode? get billingModeOverride => _$this._billingModeOverride;
  set billingModeOverride(_i3.BillingMode? billingModeOverride) =>
      _$this._billingModeOverride = billingModeOverride;

  _i8.ListBuilder<_i4.GlobalSecondaryIndex>? _globalSecondaryIndexOverride;
  _i8.ListBuilder<_i4.GlobalSecondaryIndex> get globalSecondaryIndexOverride =>
      _$this._globalSecondaryIndexOverride ??=
          new _i8.ListBuilder<_i4.GlobalSecondaryIndex>();
  set globalSecondaryIndexOverride(
          _i8.ListBuilder<_i4.GlobalSecondaryIndex>?
              globalSecondaryIndexOverride) =>
      _$this._globalSecondaryIndexOverride = globalSecondaryIndexOverride;

  _i8.ListBuilder<_i5.LocalSecondaryIndex>? _localSecondaryIndexOverride;
  _i8.ListBuilder<_i5.LocalSecondaryIndex> get localSecondaryIndexOverride =>
      _$this._localSecondaryIndexOverride ??=
          new _i8.ListBuilder<_i5.LocalSecondaryIndex>();
  set localSecondaryIndexOverride(
          _i8.ListBuilder<_i5.LocalSecondaryIndex>?
              localSecondaryIndexOverride) =>
      _$this._localSecondaryIndexOverride = localSecondaryIndexOverride;

  _i6.ProvisionedThroughputBuilder? _provisionedThroughputOverride;
  _i6.ProvisionedThroughputBuilder get provisionedThroughputOverride =>
      _$this._provisionedThroughputOverride ??=
          new _i6.ProvisionedThroughputBuilder();
  set provisionedThroughputOverride(
          _i6.ProvisionedThroughputBuilder? provisionedThroughputOverride) =>
      _$this._provisionedThroughputOverride = provisionedThroughputOverride;

  DateTime? _restoreDateTime;
  DateTime? get restoreDateTime => _$this._restoreDateTime;
  set restoreDateTime(DateTime? restoreDateTime) =>
      _$this._restoreDateTime = restoreDateTime;

  String? _sourceTableArn;
  String? get sourceTableArn => _$this._sourceTableArn;
  set sourceTableArn(String? sourceTableArn) =>
      _$this._sourceTableArn = sourceTableArn;

  String? _sourceTableName;
  String? get sourceTableName => _$this._sourceTableName;
  set sourceTableName(String? sourceTableName) =>
      _$this._sourceTableName = sourceTableName;

  _i7.SseSpecificationBuilder? _sseSpecificationOverride;
  _i7.SseSpecificationBuilder get sseSpecificationOverride =>
      _$this._sseSpecificationOverride ??= new _i7.SseSpecificationBuilder();
  set sseSpecificationOverride(
          _i7.SseSpecificationBuilder? sseSpecificationOverride) =>
      _$this._sseSpecificationOverride = sseSpecificationOverride;

  String? _targetTableName;
  String? get targetTableName => _$this._targetTableName;
  set targetTableName(String? targetTableName) =>
      _$this._targetTableName = targetTableName;

  bool? _useLatestRestorableTime;
  bool? get useLatestRestorableTime => _$this._useLatestRestorableTime;
  set useLatestRestorableTime(bool? useLatestRestorableTime) =>
      _$this._useLatestRestorableTime = useLatestRestorableTime;

  RestoreTableToPointInTimeInputBuilder() {
    RestoreTableToPointInTimeInput._init(this);
  }

  RestoreTableToPointInTimeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _billingModeOverride = $v.billingModeOverride;
      _globalSecondaryIndexOverride =
          $v.globalSecondaryIndexOverride?.toBuilder();
      _localSecondaryIndexOverride =
          $v.localSecondaryIndexOverride?.toBuilder();
      _provisionedThroughputOverride =
          $v.provisionedThroughputOverride?.toBuilder();
      _restoreDateTime = $v.restoreDateTime;
      _sourceTableArn = $v.sourceTableArn;
      _sourceTableName = $v.sourceTableName;
      _sseSpecificationOverride = $v.sseSpecificationOverride?.toBuilder();
      _targetTableName = $v.targetTableName;
      _useLatestRestorableTime = $v.useLatestRestorableTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreTableToPointInTimeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreTableToPointInTimeInput;
  }

  @override
  void update(void Function(RestoreTableToPointInTimeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreTableToPointInTimeInput build() => _build();

  _$RestoreTableToPointInTimeInput _build() {
    _$RestoreTableToPointInTimeInput _$result;
    try {
      _$result = _$v ??
          new _$RestoreTableToPointInTimeInput._(
              billingModeOverride: billingModeOverride,
              globalSecondaryIndexOverride:
                  _globalSecondaryIndexOverride?.build(),
              localSecondaryIndexOverride:
                  _localSecondaryIndexOverride?.build(),
              provisionedThroughputOverride:
                  _provisionedThroughputOverride?.build(),
              restoreDateTime: restoreDateTime,
              sourceTableArn: sourceTableArn,
              sourceTableName: sourceTableName,
              sseSpecificationOverride: _sseSpecificationOverride?.build(),
              targetTableName: BuiltValueNullFieldError.checkNotNull(
                  targetTableName,
                  r'RestoreTableToPointInTimeInput',
                  'targetTableName'),
              useLatestRestorableTime: useLatestRestorableTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'globalSecondaryIndexOverride';
        _globalSecondaryIndexOverride?.build();
        _$failedField = 'localSecondaryIndexOverride';
        _localSecondaryIndexOverride?.build();
        _$failedField = 'provisionedThroughputOverride';
        _provisionedThroughputOverride?.build();

        _$failedField = 'sseSpecificationOverride';
        _sseSpecificationOverride?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RestoreTableToPointInTimeInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
