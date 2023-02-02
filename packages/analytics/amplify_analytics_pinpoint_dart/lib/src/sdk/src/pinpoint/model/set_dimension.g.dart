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
    var _$hash = 0;
    _$hash = $jc(_$hash, dimensionType.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
