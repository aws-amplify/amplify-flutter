// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.get;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Get extends Get {
  @override
  final _i3.BuiltMap<String, String>? expressionAttributeNames;
  @override
  final _i3.BuiltMap<String, _i2.AttributeValue> key;
  @override
  final String? projectionExpression;
  @override
  final String tableName;

  factory _$Get([void Function(GetBuilder)? updates]) =>
      (new GetBuilder()..update(updates))._build();

  _$Get._(
      {this.expressionAttributeNames,
      required this.key,
      this.projectionExpression,
      required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(key, r'Get', 'key');
    BuiltValueNullFieldError.checkNotNull(tableName, r'Get', 'tableName');
  }

  @override
  Get rebuild(void Function(GetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBuilder toBuilder() => new GetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Get &&
        expressionAttributeNames == other.expressionAttributeNames &&
        key == other.key &&
        projectionExpression == other.projectionExpression &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expressionAttributeNames.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, projectionExpression.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBuilder implements Builder<Get, GetBuilder> {
  _$Get? _$v;

  _i3.MapBuilder<String, String>? _expressionAttributeNames;
  _i3.MapBuilder<String, String> get expressionAttributeNames =>
      _$this._expressionAttributeNames ??= new _i3.MapBuilder<String, String>();
  set expressionAttributeNames(
          _i3.MapBuilder<String, String>? expressionAttributeNames) =>
      _$this._expressionAttributeNames = expressionAttributeNames;

  _i3.MapBuilder<String, _i2.AttributeValue>? _key;
  _i3.MapBuilder<String, _i2.AttributeValue> get key =>
      _$this._key ??= new _i3.MapBuilder<String, _i2.AttributeValue>();
  set key(_i3.MapBuilder<String, _i2.AttributeValue>? key) => _$this._key = key;

  String? _projectionExpression;
  String? get projectionExpression => _$this._projectionExpression;
  set projectionExpression(String? projectionExpression) =>
      _$this._projectionExpression = projectionExpression;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  GetBuilder() {
    Get._init(this);
  }

  GetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expressionAttributeNames = $v.expressionAttributeNames?.toBuilder();
      _key = $v.key.toBuilder();
      _projectionExpression = $v.projectionExpression;
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Get other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Get;
  }

  @override
  void update(void Function(GetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Get build() => _build();

  _$Get _build() {
    _$Get _$result;
    try {
      _$result = _$v ??
          new _$Get._(
              expressionAttributeNames: _expressionAttributeNames?.build(),
              key: key.build(),
              projectionExpression: projectionExpression,
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'Get', 'tableName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'expressionAttributeNames';
        _expressionAttributeNames?.build();
        _$failedField = 'key';
        key.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Get', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
