// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.set_dimension;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetDimension extends SetDimension {
  @override
  final _i2.DimensionType? dimensionType;
  @override
  final _i3.BuiltList<String> values;

  factory _$SetDimension([void Function(SetDimensionBuilder)? updates]) =>
      (new SetDimensionBuilder()..update(updates))._build();

  _$SetDimension._({this.dimensionType, required this.values}) : super._() {
    BuiltValueNullFieldError.checkNotNull(values, r'SetDimension', 'values');
  }

  @override
  SetDimension rebuild(void Function(SetDimensionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetDimensionBuilder toBuilder() => new SetDimensionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetDimension &&
        dimensionType == other.dimensionType &&
        values == other.values;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, dimensionType.hashCode), values.hashCode));
  }
}

class SetDimensionBuilder
    implements Builder<SetDimension, SetDimensionBuilder> {
  _$SetDimension? _$v;

  _i2.DimensionType? _dimensionType;
  _i2.DimensionType? get dimensionType => _$this._dimensionType;
  set dimensionType(_i2.DimensionType? dimensionType) =>
      _$this._dimensionType = dimensionType;

  _i3.ListBuilder<String>? _values;
  _i3.ListBuilder<String> get values =>
      _$this._values ??= new _i3.ListBuilder<String>();
  set values(_i3.ListBuilder<String>? values) => _$this._values = values;

  SetDimensionBuilder() {
    SetDimension._init(this);
  }

  SetDimensionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dimensionType = $v.dimensionType;
      _values = $v.values.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetDimension other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetDimension;
  }

  @override
  void update(void Function(SetDimensionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetDimension build() => _build();

  _$SetDimension _build() {
    _$SetDimension _$result;
    try {
      _$result = _$v ??
          new _$SetDimension._(
              dimensionType: dimensionType, values: values.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        values.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SetDimension', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
