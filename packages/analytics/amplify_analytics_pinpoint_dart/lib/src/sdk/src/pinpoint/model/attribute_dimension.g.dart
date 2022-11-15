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
    return $jf($jc($jc(0, attributeType.hashCode), values.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
