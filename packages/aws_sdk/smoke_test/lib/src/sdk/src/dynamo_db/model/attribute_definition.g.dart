// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.attribute_definition;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributeDefinition extends AttributeDefinition {
  @override
  final String attributeName;
  @override
  final _i2.ScalarAttributeType attributeType;

  factory _$AttributeDefinition(
          [void Function(AttributeDefinitionBuilder)? updates]) =>
      (new AttributeDefinitionBuilder()..update(updates))._build();

  _$AttributeDefinition._(
      {required this.attributeName, required this.attributeType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        attributeName, r'AttributeDefinition', 'attributeName');
    BuiltValueNullFieldError.checkNotNull(
        attributeType, r'AttributeDefinition', 'attributeType');
  }

  @override
  AttributeDefinition rebuild(
          void Function(AttributeDefinitionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttributeDefinitionBuilder toBuilder() =>
      new AttributeDefinitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributeDefinition &&
        attributeName == other.attributeName &&
        attributeType == other.attributeType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributeName.hashCode);
    _$hash = $jc(_$hash, attributeType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttributeDefinitionBuilder
    implements Builder<AttributeDefinition, AttributeDefinitionBuilder> {
  _$AttributeDefinition? _$v;

  String? _attributeName;
  String? get attributeName => _$this._attributeName;
  set attributeName(String? attributeName) =>
      _$this._attributeName = attributeName;

  _i2.ScalarAttributeType? _attributeType;
  _i2.ScalarAttributeType? get attributeType => _$this._attributeType;
  set attributeType(_i2.ScalarAttributeType? attributeType) =>
      _$this._attributeType = attributeType;

  AttributeDefinitionBuilder() {
    AttributeDefinition._init(this);
  }

  AttributeDefinitionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeName = $v.attributeName;
      _attributeType = $v.attributeType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributeDefinition other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttributeDefinition;
  }

  @override
  void update(void Function(AttributeDefinitionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttributeDefinition build() => _build();

  _$AttributeDefinition _build() {
    final _$result = _$v ??
        new _$AttributeDefinition._(
            attributeName: BuiltValueNullFieldError.checkNotNull(
                attributeName, r'AttributeDefinition', 'attributeName'),
            attributeType: BuiltValueNullFieldError.checkNotNull(
                attributeType, r'AttributeDefinition', 'attributeType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
