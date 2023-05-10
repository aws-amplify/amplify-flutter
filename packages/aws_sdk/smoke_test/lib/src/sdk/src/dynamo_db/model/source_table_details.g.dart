// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.source_table_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceTableDetails extends SourceTableDetails {
  @override
  final String tableName;
  @override
  final String tableId;
  @override
  final String? tableArn;
  @override
  final _i2.Int64? tableSizeBytes;
  @override
  final _i6.BuiltList<_i3.KeySchemaElement> keySchema;
  @override
  final DateTime tableCreationDateTime;
  @override
  final _i4.ProvisionedThroughput provisionedThroughput;
  @override
  final _i2.Int64? itemCount;
  @override
  final _i5.BillingMode? billingMode;

  factory _$SourceTableDetails(
          [void Function(SourceTableDetailsBuilder)? updates]) =>
      (new SourceTableDetailsBuilder()..update(updates))._build();

  _$SourceTableDetails._(
      {required this.tableName,
      required this.tableId,
      this.tableArn,
      this.tableSizeBytes,
      required this.keySchema,
      required this.tableCreationDateTime,
      required this.provisionedThroughput,
      this.itemCount,
      this.billingMode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'SourceTableDetails', 'tableName');
    BuiltValueNullFieldError.checkNotNull(
        tableId, r'SourceTableDetails', 'tableId');
    BuiltValueNullFieldError.checkNotNull(
        keySchema, r'SourceTableDetails', 'keySchema');
    BuiltValueNullFieldError.checkNotNull(
        tableCreationDateTime, r'SourceTableDetails', 'tableCreationDateTime');
    BuiltValueNullFieldError.checkNotNull(
        provisionedThroughput, r'SourceTableDetails', 'provisionedThroughput');
  }

  @override
  SourceTableDetails rebuild(
          void Function(SourceTableDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceTableDetailsBuilder toBuilder() =>
      new SourceTableDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceTableDetails &&
        tableName == other.tableName &&
        tableId == other.tableId &&
        tableArn == other.tableArn &&
        tableSizeBytes == other.tableSizeBytes &&
        keySchema == other.keySchema &&
        tableCreationDateTime == other.tableCreationDateTime &&
        provisionedThroughput == other.provisionedThroughput &&
        itemCount == other.itemCount &&
        billingMode == other.billingMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, tableId.hashCode);
    _$hash = $jc(_$hash, tableArn.hashCode);
    _$hash = $jc(_$hash, tableSizeBytes.hashCode);
    _$hash = $jc(_$hash, keySchema.hashCode);
    _$hash = $jc(_$hash, tableCreationDateTime.hashCode);
    _$hash = $jc(_$hash, provisionedThroughput.hashCode);
    _$hash = $jc(_$hash, itemCount.hashCode);
    _$hash = $jc(_$hash, billingMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SourceTableDetailsBuilder
    implements Builder<SourceTableDetails, SourceTableDetailsBuilder> {
  _$SourceTableDetails? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  String? _tableId;
  String? get tableId => _$this._tableId;
  set tableId(String? tableId) => _$this._tableId = tableId;

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  _i2.Int64? _tableSizeBytes;
  _i2.Int64? get tableSizeBytes => _$this._tableSizeBytes;
  set tableSizeBytes(_i2.Int64? tableSizeBytes) =>
      _$this._tableSizeBytes = tableSizeBytes;

  _i6.ListBuilder<_i3.KeySchemaElement>? _keySchema;
  _i6.ListBuilder<_i3.KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i6.ListBuilder<_i3.KeySchemaElement>();
  set keySchema(_i6.ListBuilder<_i3.KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  DateTime? _tableCreationDateTime;
  DateTime? get tableCreationDateTime => _$this._tableCreationDateTime;
  set tableCreationDateTime(DateTime? tableCreationDateTime) =>
      _$this._tableCreationDateTime = tableCreationDateTime;

  _i4.ProvisionedThroughputBuilder? _provisionedThroughput;
  _i4.ProvisionedThroughputBuilder get provisionedThroughput =>
      _$this._provisionedThroughput ??= new _i4.ProvisionedThroughputBuilder();
  set provisionedThroughput(
          _i4.ProvisionedThroughputBuilder? provisionedThroughput) =>
      _$this._provisionedThroughput = provisionedThroughput;

  _i2.Int64? _itemCount;
  _i2.Int64? get itemCount => _$this._itemCount;
  set itemCount(_i2.Int64? itemCount) => _$this._itemCount = itemCount;

  _i5.BillingMode? _billingMode;
  _i5.BillingMode? get billingMode => _$this._billingMode;
  set billingMode(_i5.BillingMode? billingMode) =>
      _$this._billingMode = billingMode;

  SourceTableDetailsBuilder() {
    SourceTableDetails._init(this);
  }

  SourceTableDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _tableId = $v.tableId;
      _tableArn = $v.tableArn;
      _tableSizeBytes = $v.tableSizeBytes;
      _keySchema = $v.keySchema.toBuilder();
      _tableCreationDateTime = $v.tableCreationDateTime;
      _provisionedThroughput = $v.provisionedThroughput.toBuilder();
      _itemCount = $v.itemCount;
      _billingMode = $v.billingMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceTableDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SourceTableDetails;
  }

  @override
  void update(void Function(SourceTableDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceTableDetails build() => _build();

  _$SourceTableDetails _build() {
    _$SourceTableDetails _$result;
    try {
      _$result = _$v ??
          new _$SourceTableDetails._(
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'SourceTableDetails', 'tableName'),
              tableId: BuiltValueNullFieldError.checkNotNull(
                  tableId, r'SourceTableDetails', 'tableId'),
              tableArn: tableArn,
              tableSizeBytes: tableSizeBytes,
              keySchema: keySchema.build(),
              tableCreationDateTime: BuiltValueNullFieldError.checkNotNull(
                  tableCreationDateTime,
                  r'SourceTableDetails',
                  'tableCreationDateTime'),
              provisionedThroughput: provisionedThroughput.build(),
              itemCount: itemCount,
              billingMode: billingMode);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keySchema';
        keySchema.build();

        _$failedField = 'provisionedThroughput';
        provisionedThroughput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SourceTableDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
