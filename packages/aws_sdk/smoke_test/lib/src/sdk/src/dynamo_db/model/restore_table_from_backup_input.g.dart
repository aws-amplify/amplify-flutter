// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_table_from_backup_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreTableFromBackupInput extends RestoreTableFromBackupInput {
  @override
  final String targetTableName;
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

  factory _$RestoreTableFromBackupInput(
          [void Function(RestoreTableFromBackupInputBuilder)? updates]) =>
      (new RestoreTableFromBackupInputBuilder()..update(updates))._build();

  _$RestoreTableFromBackupInput._(
      {required this.targetTableName,
      required this.backupArn,
      this.billingModeOverride,
      this.globalSecondaryIndexOverride,
      this.localSecondaryIndexOverride,
      this.provisionedThroughputOverride,
      this.sseSpecificationOverride})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        targetTableName, r'RestoreTableFromBackupInput', 'targetTableName');
    BuiltValueNullFieldError.checkNotNull(
        backupArn, r'RestoreTableFromBackupInput', 'backupArn');
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
        targetTableName == other.targetTableName &&
        backupArn == other.backupArn &&
        billingModeOverride == other.billingModeOverride &&
        globalSecondaryIndexOverride == other.globalSecondaryIndexOverride &&
        localSecondaryIndexOverride == other.localSecondaryIndexOverride &&
        provisionedThroughputOverride == other.provisionedThroughputOverride &&
        sseSpecificationOverride == other.sseSpecificationOverride;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, targetTableName.hashCode);
    _$hash = $jc(_$hash, backupArn.hashCode);
    _$hash = $jc(_$hash, billingModeOverride.hashCode);
    _$hash = $jc(_$hash, globalSecondaryIndexOverride.hashCode);
    _$hash = $jc(_$hash, localSecondaryIndexOverride.hashCode);
    _$hash = $jc(_$hash, provisionedThroughputOverride.hashCode);
    _$hash = $jc(_$hash, sseSpecificationOverride.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreTableFromBackupInputBuilder
    implements
        Builder<RestoreTableFromBackupInput,
            RestoreTableFromBackupInputBuilder> {
  _$RestoreTableFromBackupInput? _$v;

  String? _targetTableName;
  String? get targetTableName => _$this._targetTableName;
  set targetTableName(String? targetTableName) =>
      _$this._targetTableName = targetTableName;

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

  RestoreTableFromBackupInputBuilder();

  RestoreTableFromBackupInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targetTableName = $v.targetTableName;
      _backupArn = $v.backupArn;
      _billingModeOverride = $v.billingModeOverride;
      _globalSecondaryIndexOverride =
          $v.globalSecondaryIndexOverride?.toBuilder();
      _localSecondaryIndexOverride =
          $v.localSecondaryIndexOverride?.toBuilder();
      _provisionedThroughputOverride =
          $v.provisionedThroughputOverride?.toBuilder();
      _sseSpecificationOverride = $v.sseSpecificationOverride?.toBuilder();
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
              targetTableName: BuiltValueNullFieldError.checkNotNull(
                  targetTableName,
                  r'RestoreTableFromBackupInput',
                  'targetTableName'),
              backupArn: BuiltValueNullFieldError.checkNotNull(
                  backupArn, r'RestoreTableFromBackupInput', 'backupArn'),
              billingModeOverride: billingModeOverride,
              globalSecondaryIndexOverride:
                  _globalSecondaryIndexOverride?.build(),
              localSecondaryIndexOverride:
                  _localSecondaryIndexOverride?.build(),
              provisionedThroughputOverride:
                  _provisionedThroughputOverride?.build(),
              sseSpecificationOverride: _sseSpecificationOverride?.build());
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
