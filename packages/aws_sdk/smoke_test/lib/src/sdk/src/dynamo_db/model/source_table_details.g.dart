// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.source_table_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceTableDetails extends SourceTableDetails {
  @override
  final _i2.BillingMode? billingMode;
  @override
  final _i3.Int64? itemCount;
  @override
  final _i6.BuiltList<_i4.KeySchemaElement> keySchema;
  @override
  final _i5.ProvisionedThroughput provisionedThroughput;
  @override
  final String? tableArn;
  @override
  final DateTime tableCreationDateTime;
  @override
  final String tableId;
  @override
  final String tableName;
  @override
  final _i3.Int64? tableSizeBytes;

  factory _$SourceTableDetails(
          [void Function(SourceTableDetailsBuilder)? updates]) =>
      (new SourceTableDetailsBuilder()..update(updates))._build();

  _$SourceTableDetails._(
      {this.billingMode,
      this.itemCount,
      required this.keySchema,
      required this.provisionedThroughput,
      this.tableArn,
      required this.tableCreationDateTime,
      required this.tableId,
      required this.tableName,
      this.tableSizeBytes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        keySchema, r'SourceTableDetails', 'keySchema');
    BuiltValueNullFieldError.checkNotNull(
        provisionedThroughput, r'SourceTableDetails', 'provisionedThroughput');
    BuiltValueNullFieldError.checkNotNull(
        tableCreationDateTime, r'SourceTableDetails', 'tableCreationDateTime');
    BuiltValueNullFieldError.checkNotNull(
        tableId, r'SourceTableDetails', 'tableId');
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'SourceTableDetails', 'tableName');
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
        billingMode == other.billingMode &&
        itemCount == other.itemCount &&
        keySchema == other.keySchema &&
        provisionedThroughput == other.provisionedThroughput &&
        tableArn == other.tableArn &&
        tableCreationDateTime == other.tableCreationDateTime &&
        tableId == other.tableId &&
        tableName == other.tableName &&
        tableSizeBytes == other.tableSizeBytes;
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
                                $jc($jc(0, billingMode.hashCode),
                                    itemCount.hashCode),
                                keySchema.hashCode),
                            provisionedThroughput.hashCode),
                        tableArn.hashCode),
                    tableCreationDateTime.hashCode),
                tableId.hashCode),
            tableName.hashCode),
        tableSizeBytes.hashCode));
  }
}

class SourceTableDetailsBuilder
    implements Builder<SourceTableDetails, SourceTableDetailsBuilder> {
  _$SourceTableDetails? _$v;

  _i2.BillingMode? _billingMode;
  _i2.BillingMode? get billingMode => _$this._billingMode;
  set billingMode(_i2.BillingMode? billingMode) =>
      _$this._billingMode = billingMode;

  _i3.Int64? _itemCount;
  _i3.Int64? get itemCount => _$this._itemCount;
  set itemCount(_i3.Int64? itemCount) => _$this._itemCount = itemCount;

  _i6.ListBuilder<_i4.KeySchemaElement>? _keySchema;
  _i6.ListBuilder<_i4.KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i6.ListBuilder<_i4.KeySchemaElement>();
  set keySchema(_i6.ListBuilder<_i4.KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  _i5.ProvisionedThroughputBuilder? _provisionedThroughput;
  _i5.ProvisionedThroughputBuilder get provisionedThroughput =>
      _$this._provisionedThroughput ??= new _i5.ProvisionedThroughputBuilder();
  set provisionedThroughput(
          _i5.ProvisionedThroughputBuilder? provisionedThroughput) =>
      _$this._provisionedThroughput = provisionedThroughput;

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  DateTime? _tableCreationDateTime;
  DateTime? get tableCreationDateTime => _$this._tableCreationDateTime;
  set tableCreationDateTime(DateTime? tableCreationDateTime) =>
      _$this._tableCreationDateTime = tableCreationDateTime;

  String? _tableId;
  String? get tableId => _$this._tableId;
  set tableId(String? tableId) => _$this._tableId = tableId;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i3.Int64? _tableSizeBytes;
  _i3.Int64? get tableSizeBytes => _$this._tableSizeBytes;
  set tableSizeBytes(_i3.Int64? tableSizeBytes) =>
      _$this._tableSizeBytes = tableSizeBytes;

  SourceTableDetailsBuilder() {
    SourceTableDetails._init(this);
  }

  SourceTableDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _billingMode = $v.billingMode;
      _itemCount = $v.itemCount;
      _keySchema = $v.keySchema.toBuilder();
      _provisionedThroughput = $v.provisionedThroughput.toBuilder();
      _tableArn = $v.tableArn;
      _tableCreationDateTime = $v.tableCreationDateTime;
      _tableId = $v.tableId;
      _tableName = $v.tableName;
      _tableSizeBytes = $v.tableSizeBytes;
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
              billingMode: billingMode,
              itemCount: itemCount,
              keySchema: keySchema.build(),
              provisionedThroughput: provisionedThroughput.build(),
              tableArn: tableArn,
              tableCreationDateTime: BuiltValueNullFieldError.checkNotNull(
                  tableCreationDateTime,
                  r'SourceTableDetails',
                  'tableCreationDateTime'),
              tableId: BuiltValueNullFieldError.checkNotNull(
                  tableId, r'SourceTableDetails', 'tableId'),
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'SourceTableDetails', 'tableName'),
              tableSizeBytes: tableSizeBytes);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
