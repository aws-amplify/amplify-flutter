// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_item_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetItemInput extends GetItemInput {
  @override
  final String tableName;
  @override
  final _i3.BuiltMap<String, AttributeValue> key;
  @override
  final _i3.BuiltList<String>? attributesToGet;
  @override
  final bool? consistentRead;
  @override
  final ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final String? projectionExpression;
  @override
  final _i3.BuiltMap<String, String>? expressionAttributeNames;

  factory _$GetItemInput([void Function(GetItemInputBuilder)? updates]) =>
      (new GetItemInputBuilder()..update(updates))._build();

  _$GetItemInput._(
      {required this.tableName,
      required this.key,
      this.attributesToGet,
      this.consistentRead,
      this.returnConsumedCapacity,
      this.projectionExpression,
      this.expressionAttributeNames})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'GetItemInput', 'tableName');
    BuiltValueNullFieldError.checkNotNull(key, r'GetItemInput', 'key');
  }

  @override
  GetItemInput rebuild(void Function(GetItemInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetItemInputBuilder toBuilder() => new GetItemInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetItemInput &&
        tableName == other.tableName &&
        key == other.key &&
        attributesToGet == other.attributesToGet &&
        consistentRead == other.consistentRead &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        projectionExpression == other.projectionExpression &&
        expressionAttributeNames == other.expressionAttributeNames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, attributesToGet.hashCode);
    _$hash = $jc(_$hash, consistentRead.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jc(_$hash, projectionExpression.hashCode);
    _$hash = $jc(_$hash, expressionAttributeNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetItemInputBuilder
    implements Builder<GetItemInput, GetItemInputBuilder> {
  _$GetItemInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i3.MapBuilder<String, AttributeValue>? _key;
  _i3.MapBuilder<String, AttributeValue> get key =>
      _$this._key ??= new _i3.MapBuilder<String, AttributeValue>();
  set key(_i3.MapBuilder<String, AttributeValue>? key) => _$this._key = key;

  _i3.ListBuilder<String>? _attributesToGet;
  _i3.ListBuilder<String> get attributesToGet =>
      _$this._attributesToGet ??= new _i3.ListBuilder<String>();
  set attributesToGet(_i3.ListBuilder<String>? attributesToGet) =>
      _$this._attributesToGet = attributesToGet;

  bool? _consistentRead;
  bool? get consistentRead => _$this._consistentRead;
  set consistentRead(bool? consistentRead) =>
      _$this._consistentRead = consistentRead;

  ReturnConsumedCapacity? _returnConsumedCapacity;
  ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

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

  GetItemInputBuilder();

  GetItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _key = $v.key.toBuilder();
      _attributesToGet = $v.attributesToGet?.toBuilder();
      _consistentRead = $v.consistentRead;
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _projectionExpression = $v.projectionExpression;
      _expressionAttributeNames = $v.expressionAttributeNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetItemInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetItemInput;
  }

  @override
  void update(void Function(GetItemInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetItemInput build() => _build();

  _$GetItemInput _build() {
    _$GetItemInput _$result;
    try {
      _$result = _$v ??
          new _$GetItemInput._(
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'GetItemInput', 'tableName'),
              key: key.build(),
              attributesToGet: _attributesToGet?.build(),
              consistentRead: consistentRead,
              returnConsumedCapacity: returnConsumedCapacity,
              projectionExpression: projectionExpression,
              expressionAttributeNames: _expressionAttributeNames?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'key';
        key.build();
        _$failedField = 'attributesToGet';
        _attributesToGet?.build();

        _$failedField = 'expressionAttributeNames';
        _expressionAttributeNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetItemInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
