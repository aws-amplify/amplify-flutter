// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.property_difference;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PropertyDifference extends PropertyDifference {
  @override
  final String propertyPath;
  @override
  final String expectedValue;
  @override
  final String actualValue;
  @override
  final _i2.DifferenceType differenceType;

  factory _$PropertyDifference(
          [void Function(PropertyDifferenceBuilder)? updates]) =>
      (new PropertyDifferenceBuilder()..update(updates))._build();

  _$PropertyDifference._(
      {required this.propertyPath,
      required this.expectedValue,
      required this.actualValue,
      required this.differenceType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        propertyPath, r'PropertyDifference', 'propertyPath');
    BuiltValueNullFieldError.checkNotNull(
        expectedValue, r'PropertyDifference', 'expectedValue');
    BuiltValueNullFieldError.checkNotNull(
        actualValue, r'PropertyDifference', 'actualValue');
    BuiltValueNullFieldError.checkNotNull(
        differenceType, r'PropertyDifference', 'differenceType');
  }

  @override
  PropertyDifference rebuild(
          void Function(PropertyDifferenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropertyDifferenceBuilder toBuilder() =>
      new PropertyDifferenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropertyDifference &&
        propertyPath == other.propertyPath &&
        expectedValue == other.expectedValue &&
        actualValue == other.actualValue &&
        differenceType == other.differenceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, propertyPath.hashCode);
    _$hash = $jc(_$hash, expectedValue.hashCode);
    _$hash = $jc(_$hash, actualValue.hashCode);
    _$hash = $jc(_$hash, differenceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PropertyDifferenceBuilder
    implements Builder<PropertyDifference, PropertyDifferenceBuilder> {
  _$PropertyDifference? _$v;

  String? _propertyPath;
  String? get propertyPath => _$this._propertyPath;
  set propertyPath(String? propertyPath) => _$this._propertyPath = propertyPath;

  String? _expectedValue;
  String? get expectedValue => _$this._expectedValue;
  set expectedValue(String? expectedValue) =>
      _$this._expectedValue = expectedValue;

  String? _actualValue;
  String? get actualValue => _$this._actualValue;
  set actualValue(String? actualValue) => _$this._actualValue = actualValue;

  _i2.DifferenceType? _differenceType;
  _i2.DifferenceType? get differenceType => _$this._differenceType;
  set differenceType(_i2.DifferenceType? differenceType) =>
      _$this._differenceType = differenceType;

  PropertyDifferenceBuilder() {
    PropertyDifference._init(this);
  }

  PropertyDifferenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _propertyPath = $v.propertyPath;
      _expectedValue = $v.expectedValue;
      _actualValue = $v.actualValue;
      _differenceType = $v.differenceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropertyDifference other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PropertyDifference;
  }

  @override
  void update(void Function(PropertyDifferenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PropertyDifference build() => _build();

  _$PropertyDifference _build() {
    final _$result = _$v ??
        new _$PropertyDifference._(
            propertyPath: BuiltValueNullFieldError.checkNotNull(
                propertyPath, r'PropertyDifference', 'propertyPath'),
            expectedValue: BuiltValueNullFieldError.checkNotNull(
                expectedValue, r'PropertyDifference', 'expectedValue'),
            actualValue: BuiltValueNullFieldError.checkNotNull(
                actualValue, r'PropertyDifference', 'actualValue'),
            differenceType: BuiltValueNullFieldError.checkNotNull(
                differenceType, r'PropertyDifference', 'differenceType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
