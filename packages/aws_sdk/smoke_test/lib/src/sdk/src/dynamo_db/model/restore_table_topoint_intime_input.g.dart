// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.restore_table_topoint_intime_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreTableTopointIntimeInput extends RestoreTableTopointIntimeInput {
  @override
  final _i3.BillingMode? billingModeOverride;
  @override
  final _i4.BuiltList<_i5.GlobalSecondaryIndex>? globalSecondaryIndexOverride;
  @override
  final _i4.BuiltList<_i6.LocalSecondaryIndex>? localSecondaryIndexOverride;
  @override
  final _i7.ProvisionedThroughput? provisionedThroughputOverride;
  @override
  final DateTime? restoreDateTime;
  @override
  final String? sourceTableArn;
  @override
  final String? sourceTableName;
  @override
  final _i8.SseSpecification? sseSpecificationOverride;
  @override
  final String targetTableName;
  @override
  final bool? useLatestRestorableTime;

  factory _$RestoreTableTopointIntimeInput(
          [void Function(RestoreTableTopointIntimeInputBuilder)? updates]) =>
      (new RestoreTableTopointIntimeInputBuilder()..update(updates))._build();

  _$RestoreTableTopointIntimeInput._(
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
        targetTableName, r'RestoreTableTopointIntimeInput', 'targetTableName');
  }

  @override
  RestoreTableTopointIntimeInput rebuild(
          void Function(RestoreTableTopointIntimeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreTableTopointIntimeInputBuilder toBuilder() =>
      new RestoreTableTopointIntimeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreTableTopointIntimeInput &&
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
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, billingModeOverride.hashCode),
                                        globalSecondaryIndexOverride.hashCode),
                                    localSecondaryIndexOverride.hashCode),
                                provisionedThroughputOverride.hashCode),
                            restoreDateTime.hashCode),
                        sourceTableArn.hashCode),
                    sourceTableName.hashCode),
                sseSpecificationOverride.hashCode),
            targetTableName.hashCode),
        useLatestRestorableTime.hashCode));
  }
}

class RestoreTableTopointIntimeInputBuilder
    implements
        Builder<RestoreTableTopointIntimeInput,
            RestoreTableTopointIntimeInputBuilder> {
  _$RestoreTableTopointIntimeInput? _$v;

  _i3.BillingMode? _billingModeOverride;
  _i3.BillingMode? get billingModeOverride => _$this._billingModeOverride;
  set billingModeOverride(_i3.BillingMode? billingModeOverride) =>
      _$this._billingModeOverride = billingModeOverride;

  _i4.ListBuilder<_i5.GlobalSecondaryIndex>? _globalSecondaryIndexOverride;
  _i4.ListBuilder<_i5.GlobalSecondaryIndex> get globalSecondaryIndexOverride =>
      _$this._globalSecondaryIndexOverride ??=
          new _i4.ListBuilder<_i5.GlobalSecondaryIndex>();
  set globalSecondaryIndexOverride(
          _i4.ListBuilder<_i5.GlobalSecondaryIndex>?
              globalSecondaryIndexOverride) =>
      _$this._globalSecondaryIndexOverride = globalSecondaryIndexOverride;

  _i4.ListBuilder<_i6.LocalSecondaryIndex>? _localSecondaryIndexOverride;
  _i4.ListBuilder<_i6.LocalSecondaryIndex> get localSecondaryIndexOverride =>
      _$this._localSecondaryIndexOverride ??=
          new _i4.ListBuilder<_i6.LocalSecondaryIndex>();
  set localSecondaryIndexOverride(
          _i4.ListBuilder<_i6.LocalSecondaryIndex>?
              localSecondaryIndexOverride) =>
      _$this._localSecondaryIndexOverride = localSecondaryIndexOverride;

  _i7.ProvisionedThroughputBuilder? _provisionedThroughputOverride;
  _i7.ProvisionedThroughputBuilder get provisionedThroughputOverride =>
      _$this._provisionedThroughputOverride ??=
          new _i7.ProvisionedThroughputBuilder();
  set provisionedThroughputOverride(
          _i7.ProvisionedThroughputBuilder? provisionedThroughputOverride) =>
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

  _i8.SseSpecificationBuilder? _sseSpecificationOverride;
  _i8.SseSpecificationBuilder get sseSpecificationOverride =>
      _$this._sseSpecificationOverride ??= new _i8.SseSpecificationBuilder();
  set sseSpecificationOverride(
          _i8.SseSpecificationBuilder? sseSpecificationOverride) =>
      _$this._sseSpecificationOverride = sseSpecificationOverride;

  String? _targetTableName;
  String? get targetTableName => _$this._targetTableName;
  set targetTableName(String? targetTableName) =>
      _$this._targetTableName = targetTableName;

  bool? _useLatestRestorableTime;
  bool? get useLatestRestorableTime => _$this._useLatestRestorableTime;
  set useLatestRestorableTime(bool? useLatestRestorableTime) =>
      _$this._useLatestRestorableTime = useLatestRestorableTime;

  RestoreTableTopointIntimeInputBuilder() {
    RestoreTableTopointIntimeInput._init(this);
  }

  RestoreTableTopointIntimeInputBuilder get _$this {
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
  void replace(RestoreTableTopointIntimeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreTableTopointIntimeInput;
  }

  @override
  void update(void Function(RestoreTableTopointIntimeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreTableTopointIntimeInput build() => _build();

  _$RestoreTableTopointIntimeInput _build() {
    _$RestoreTableTopointIntimeInput _$result;
    try {
      _$result = _$v ??
          new _$RestoreTableTopointIntimeInput._(
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
                  r'RestoreTableTopointIntimeInput',
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
            r'RestoreTableTopointIntimeInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
