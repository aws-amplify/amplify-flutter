// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.restore_table_from_backup_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreTableFromBackupInput extends RestoreTableFromBackupInput {
  @override
  final String backupArn;
  @override
  final _i3.BillingMode? billingModeOverride;
  @override
  final _i8.BuiltList<_i4.GlobalSecondaryIndex>? globalSecondaryIndexOverride;
  @override
  final _i8.BuiltList<_i5.LocalSecondaryIndex>? localSecondaryIndexOverride;
  @override
  final _i6.ProvisionedThroughput? provisionedThroughputOverride;
  @override
  final _i7.SseSpecification? sseSpecificationOverride;
  @override
  final String targetTableName;

  factory _$RestoreTableFromBackupInput(
          [void Function(RestoreTableFromBackupInputBuilder)? updates]) =>
      (new RestoreTableFromBackupInputBuilder()..update(updates))._build();

  _$RestoreTableFromBackupInput._(
      {required this.backupArn,
      this.billingModeOverride,
      this.globalSecondaryIndexOverride,
      this.localSecondaryIndexOverride,
      this.provisionedThroughputOverride,
      this.sseSpecificationOverride,
      required this.targetTableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        backupArn, r'RestoreTableFromBackupInput', 'backupArn');
    BuiltValueNullFieldError.checkNotNull(
        targetTableName, r'RestoreTableFromBackupInput', 'targetTableName');
  }

  @override
  RestoreTableFromBackupInput rebuild(
          void Function(RestoreTableFromBackupInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreTableFromBackupInputBuilder toBuilder() =>
      new RestoreTableFromBackupInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreTableFromBackupInput &&
        backupArn == other.backupArn &&
        billingModeOverride == other.billingModeOverride &&
        globalSecondaryIndexOverride == other.globalSecondaryIndexOverride &&
        localSecondaryIndexOverride == other.localSecondaryIndexOverride &&
        provisionedThroughputOverride == other.provisionedThroughputOverride &&
        sseSpecificationOverride == other.sseSpecificationOverride &&
        targetTableName == other.targetTableName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, backupArn.hashCode),
                            billingModeOverride.hashCode),
                        globalSecondaryIndexOverride.hashCode),
                    localSecondaryIndexOverride.hashCode),
                provisionedThroughputOverride.hashCode),
            sseSpecificationOverride.hashCode),
        targetTableName.hashCode));
  }
}

class RestoreTableFromBackupInputBuilder
    implements
        Builder<RestoreTableFromBackupInput,
            RestoreTableFromBackupInputBuilder> {
  _$RestoreTableFromBackupInput? _$v;

  String? _backupArn;
  String? get backupArn => _$this._backupArn;
  set backupArn(String? backupArn) => _$this._backupArn = backupArn;

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

  RestoreTableFromBackupInputBuilder() {
    RestoreTableFromBackupInput._init(this);
  }

  RestoreTableFromBackupInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backupArn = $v.backupArn;
      _billingModeOverride = $v.billingModeOverride;
      _globalSecondaryIndexOverride =
          $v.globalSecondaryIndexOverride?.toBuilder();
      _localSecondaryIndexOverride =
          $v.localSecondaryIndexOverride?.toBuilder();
      _provisionedThroughputOverride =
          $v.provisionedThroughputOverride?.toBuilder();
      _sseSpecificationOverride = $v.sseSpecificationOverride?.toBuilder();
      _targetTableName = $v.targetTableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreTableFromBackupInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreTableFromBackupInput;
  }

  @override
  void update(void Function(RestoreTableFromBackupInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreTableFromBackupInput build() => _build();

  _$RestoreTableFromBackupInput _build() {
    _$RestoreTableFromBackupInput _$result;
    try {
      _$result = _$v ??
          new _$RestoreTableFromBackupInput._(
              backupArn: BuiltValueNullFieldError.checkNotNull(
                  backupArn, r'RestoreTableFromBackupInput', 'backupArn'),
              billingModeOverride: billingModeOverride,
              globalSecondaryIndexOverride:
                  _globalSecondaryIndexOverride?.build(),
              localSecondaryIndexOverride:
                  _localSecondaryIndexOverride?.build(),
              provisionedThroughputOverride:
                  _provisionedThroughputOverride?.build(),
              sseSpecificationOverride: _sseSpecificationOverride?.build(),
              targetTableName: BuiltValueNullFieldError.checkNotNull(
                  targetTableName,
                  r'RestoreTableFromBackupInput',
                  'targetTableName'));
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
            r'RestoreTableFromBackupInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
