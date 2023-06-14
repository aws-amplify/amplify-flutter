// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_secondary_index_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocalSecondaryIndexInfo extends LocalSecondaryIndexInfo {
  @override
  final String? indexName;
  @override
  final _i4.BuiltList<_i2.KeySchemaElement>? keySchema;
  @override
  final _i3.Projection? projection;

  factory _$LocalSecondaryIndexInfo(
          [void Function(LocalSecondaryIndexInfoBuilder)? updates]) =>
      (new LocalSecondaryIndexInfoBuilder()..update(updates))._build();

  _$LocalSecondaryIndexInfo._({this.indexName, this.keySchema, this.projection})
      : super._();

  @override
  LocalSecondaryIndexInfo rebuild(
          void Function(LocalSecondaryIndexInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalSecondaryIndexInfoBuilder toBuilder() =>
      new LocalSecondaryIndexInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalSecondaryIndexInfo &&
        indexName == other.indexName &&
        keySchema == other.keySchema &&
        projection == other.projection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, keySchema.hashCode);
    _$hash = $jc(_$hash, projection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LocalSecondaryIndexInfoBuilder
    implements
        Builder<LocalSecondaryIndexInfo, LocalSecondaryIndexInfoBuilder> {
  _$LocalSecondaryIndexInfo? _$v;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  _i4.ListBuilder<_i2.KeySchemaElement>? _keySchema;
  _i4.ListBuilder<_i2.KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i4.ListBuilder<_i2.KeySchemaElement>();
  set keySchema(_i4.ListBuilder<_i2.KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  _i3.ProjectionBuilder? _projection;
  _i3.ProjectionBuilder get projection =>
      _$this._projection ??= new _i3.ProjectionBuilder();
  set projection(_i3.ProjectionBuilder? projection) =>
      _$this._projection = projection;

  LocalSecondaryIndexInfoBuilder() {
    LocalSecondaryIndexInfo._init(this);
  }

  LocalSecondaryIndexInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _keySchema = $v.keySchema?.toBuilder();
      _projection = $v.projection?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalSecondaryIndexInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalSecondaryIndexInfo;
  }

  @override
  void update(void Function(LocalSecondaryIndexInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalSecondaryIndexInfo build() => _build();

  _$LocalSecondaryIndexInfo _build() {
    _$LocalSecondaryIndexInfo _$result;
    try {
      _$result = _$v ??
          new _$LocalSecondaryIndexInfo._(
              indexName: indexName,
              keySchema: _keySchema?.build(),
              projection: _projection?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keySchema';
        _keySchema?.build();
        _$failedField = 'projection';
        _projection?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LocalSecondaryIndexInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
