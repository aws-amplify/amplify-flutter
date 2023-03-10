// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.attribute_dimension;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributeDimension extends AttributeDimension {
  @override
  final _i2.AttributeType? attributeType;
  @override
  final _i3.BuiltList<String> values;

  factory _$AttributeDimension(
          [void Function(AttributeDimensionBuilder)? updates]) =>
      (new AttributeDimensionBuilder()..update(updates))._build();

  _$AttributeDimension._({this.attributeType, required this.values})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        values, r'AttributeDimension', 'values');
  }

  @override
  AttributeDimension rebuild(
          void Function(AttributeDimensionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttributeDimensionBuilder toBuilder() =>
      new AttributeDimensionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributeDimension &&
        attributeType == other.attributeType &&
        values == other.values;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributeType.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttributeDimensionBuilder
    implements Builder<AttributeDimension, AttributeDimensionBuilder> {
  _$AttributeDimension? _$v;

  _i2.AttributeType? _attributeType;
  _i2.AttributeType? get attributeType => _$this._attributeType;
  set attributeType(_i2.AttributeType? attributeType) =>
      _$this._attributeType = attributeType;

  _i3.ListBuilder<String>? _values;
  _i3.ListBuilder<String> get values =>
      _$this._values ??= new _i3.ListBuilder<String>();
  set values(_i3.ListBuilder<String>? values) => _$this._values = values;

  AttributeDimensionBuilder() {
    AttributeDimension._init(this);
  }

  AttributeDimensionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeType = $v.attributeType;
      _values = $v.values.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributeDimension other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttributeDimension;
  }

  @override
  void update(void Function(AttributeDimensionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttributeDimension build() => _build();

  _$AttributeDimension _build() {
    _$AttributeDimension _$result;
    try {
      _$result = _$v ??
          new _$AttributeDimension._(
              attributeType: attributeType, values: values.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        values.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AttributeDimension', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
