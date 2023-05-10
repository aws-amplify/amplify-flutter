// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.get;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Get extends Get {
  @override
  final _i3.BuiltMap<String, _i2.AttributeValue> key;
  @override
  final String tableName;
  @override
  final String? projectionExpression;
  @override
  final _i3.BuiltMap<String, String>? expressionAttributeNames;

  factory _$Get([void Function(GetBuilder)? updates]) =>
      (new GetBuilder()..update(updates))._build();

  _$Get._(
      {required this.key,
      required this.tableName,
      this.projectionExpression,
      this.expressionAttributeNames})
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
        key == other.key &&
        tableName == other.tableName &&
        projectionExpression == other.projectionExpression &&
        expressionAttributeNames == other.expressionAttributeNames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, projectionExpression.hashCode);
    _$hash = $jc(_$hash, expressionAttributeNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBuilder implements Builder<Get, GetBuilder> {
  _$Get? _$v;

  _i3.MapBuilder<String, _i2.AttributeValue>? _key;
  _i3.MapBuilder<String, _i2.AttributeValue> get key =>
      _$this._key ??= new _i3.MapBuilder<String, _i2.AttributeValue>();
  set key(_i3.MapBuilder<String, _i2.AttributeValue>? key) => _$this._key = key;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  String? _projectionExpression;
  String? get projectionExpression => _$this._projectionExpression;
  set projectionExpression(String? projectionExpression) =>
      _$this._projectionExpression = projectionExpression;

  _i3.MapBuilder<String, String>? _expressionAttributeNames;
  _i3.MapBuilder<String, String> get expressionAttributeNames =>
      _$this._expressionAttributeNames ??= new _i3.MapBuilder<String, String>();
  set expressionAttributeNames(
          _i3.MapBuilder<String, String>? expressionAttributeNames) =>
      _$this._expressionAttributeNames = expressionAttributeNames;

  GetBuilder() {
    Get._init(this);
  }

  GetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key.toBuilder();
      _tableName = $v.tableName;
      _projectionExpression = $v.projectionExpression;
      _expressionAttributeNames = $v.expressionAttributeNames?.toBuilder();
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
              key: key.build(),
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'Get', 'tableName'),
              projectionExpression: projectionExpression,
              expressionAttributeNames: _expressionAttributeNames?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'key';
        key.build();

        _$failedField = 'expressionAttributeNames';
        _expressionAttributeNames?.build();
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
