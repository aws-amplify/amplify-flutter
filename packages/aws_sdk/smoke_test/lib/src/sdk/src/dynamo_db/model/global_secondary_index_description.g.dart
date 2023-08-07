// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_secondary_index_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalSecondaryIndexDescription
    extends GlobalSecondaryIndexDescription {
  @override
  final String? indexName;
  @override
  final _i3.BuiltList<KeySchemaElement>? keySchema;
  @override
  final Projection? projection;
  @override
  final IndexStatus? indexStatus;
  @override
  final bool? backfilling;
  @override
  final ProvisionedThroughputDescription? provisionedThroughput;
  @override
  final _i2.Int64? indexSizeBytes;
  @override
  final _i2.Int64? itemCount;
  @override
  final String? indexArn;

  factory _$GlobalSecondaryIndexDescription(
          [void Function(GlobalSecondaryIndexDescriptionBuilder)? updates]) =>
      (new GlobalSecondaryIndexDescriptionBuilder()..update(updates))._build();

  _$GlobalSecondaryIndexDescription._(
      {this.indexName,
      this.keySchema,
      this.projection,
      this.indexStatus,
      this.backfilling,
      this.provisionedThroughput,
      this.indexSizeBytes,
      this.itemCount,
      this.indexArn})
      : super._();

  @override
  GlobalSecondaryIndexDescription rebuild(
          void Function(GlobalSecondaryIndexDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlobalSecondaryIndexDescriptionBuilder toBuilder() =>
      new GlobalSecondaryIndexDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlobalSecondaryIndexDescription &&
        indexName == other.indexName &&
        keySchema == other.keySchema &&
        projection == other.projection &&
        indexStatus == other.indexStatus &&
        backfilling == other.backfilling &&
        provisionedThroughput == other.provisionedThroughput &&
        indexSizeBytes == other.indexSizeBytes &&
        itemCount == other.itemCount &&
        indexArn == other.indexArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, keySchema.hashCode);
    _$hash = $jc(_$hash, projection.hashCode);
    _$hash = $jc(_$hash, indexStatus.hashCode);
    _$hash = $jc(_$hash, backfilling.hashCode);
    _$hash = $jc(_$hash, provisionedThroughput.hashCode);
    _$hash = $jc(_$hash, indexSizeBytes.hashCode);
    _$hash = $jc(_$hash, itemCount.hashCode);
    _$hash = $jc(_$hash, indexArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GlobalSecondaryIndexDescriptionBuilder
    implements
        Builder<GlobalSecondaryIndexDescription,
            GlobalSecondaryIndexDescriptionBuilder> {
  _$GlobalSecondaryIndexDescription? _$v;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  _i3.ListBuilder<KeySchemaElement>? _keySchema;
  _i3.ListBuilder<KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i3.ListBuilder<KeySchemaElement>();
  set keySchema(_i3.ListBuilder<KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  ProjectionBuilder? _projection;
  ProjectionBuilder get projection =>
      _$this._projection ??= new ProjectionBuilder();
  set projection(ProjectionBuilder? projection) =>
      _$this._projection = projection;

  IndexStatus? _indexStatus;
  IndexStatus? get indexStatus => _$this._indexStatus;
  set indexStatus(IndexStatus? indexStatus) =>
      _$this._indexStatus = indexStatus;

  bool? _backfilling;
  bool? get backfilling => _$this._backfilling;
  set backfilling(bool? backfilling) => _$this._backfilling = backfilling;

  ProvisionedThroughputDescriptionBuilder? _provisionedThroughput;
  ProvisionedThroughputDescriptionBuilder get provisionedThroughput =>
      _$this._provisionedThroughput ??=
          new ProvisionedThroughputDescriptionBuilder();
  set provisionedThroughput(
          ProvisionedThroughputDescriptionBuilder? provisionedThroughput) =>
      _$this._provisionedThroughput = provisionedThroughput;

  _i2.Int64? _indexSizeBytes;
  _i2.Int64? get indexSizeBytes => _$this._indexSizeBytes;
  set indexSizeBytes(_i2.Int64? indexSizeBytes) =>
      _$this._indexSizeBytes = indexSizeBytes;

  _i2.Int64? _itemCount;
  _i2.Int64? get itemCount => _$this._itemCount;
  set itemCount(_i2.Int64? itemCount) => _$this._itemCount = itemCount;

  String? _indexArn;
  String? get indexArn => _$this._indexArn;
  set indexArn(String? indexArn) => _$this._indexArn = indexArn;

  GlobalSecondaryIndexDescriptionBuilder();

  GlobalSecondaryIndexDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _keySchema = $v.keySchema?.toBuilder();
      _projection = $v.projection?.toBuilder();
      _indexStatus = $v.indexStatus;
      _backfilling = $v.backfilling;
      _provisionedThroughput = $v.provisionedThroughput?.toBuilder();
      _indexSizeBytes = $v.indexSizeBytes;
      _itemCount = $v.itemCount;
      _indexArn = $v.indexArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlobalSecondaryIndexDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlobalSecondaryIndexDescription;
  }

  @override
  void update(void Function(GlobalSecondaryIndexDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlobalSecondaryIndexDescription build() => _build();

  _$GlobalSecondaryIndexDescription _build() {
    _$GlobalSecondaryIndexDescription _$result;
    try {
      _$result = _$v ??
          new _$GlobalSecondaryIndexDescription._(
              indexName: indexName,
              keySchema: _keySchema?.build(),
              projection: _projection?.build(),
              indexStatus: indexStatus,
              backfilling: backfilling,
              provisionedThroughput: _provisionedThroughput?.build(),
              indexSizeBytes: indexSizeBytes,
              itemCount: itemCount,
              indexArn: indexArn);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keySchema';
        _keySchema?.build();
        _$failedField = 'projection';
        _projection?.build();

        _$failedField = 'provisionedThroughput';
        _provisionedThroughput?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlobalSecondaryIndexDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
