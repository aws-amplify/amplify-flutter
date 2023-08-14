// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase1_dh_group_numbers_list_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Phase1DhGroupNumbersListValue extends Phase1DhGroupNumbersListValue {
  @override
  final int value;

  factory _$Phase1DhGroupNumbersListValue(
          [void Function(Phase1DhGroupNumbersListValueBuilder)? updates]) =>
      (new Phase1DhGroupNumbersListValueBuilder()..update(updates))._build();

  _$Phase1DhGroupNumbersListValue._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        value, r'Phase1DhGroupNumbersListValue', 'value');
  }

  @override
  Phase1DhGroupNumbersListValue rebuild(
          void Function(Phase1DhGroupNumbersListValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Phase1DhGroupNumbersListValueBuilder toBuilder() =>
      new Phase1DhGroupNumbersListValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phase1DhGroupNumbersListValue && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Phase1DhGroupNumbersListValueBuilder
    implements
        Builder<Phase1DhGroupNumbersListValue,
            Phase1DhGroupNumbersListValueBuilder> {
  _$Phase1DhGroupNumbersListValue? _$v;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  Phase1DhGroupNumbersListValueBuilder() {
    Phase1DhGroupNumbersListValue._init(this);
  }

  Phase1DhGroupNumbersListValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Phase1DhGroupNumbersListValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Phase1DhGroupNumbersListValue;
  }

  @override
  void update(void Function(Phase1DhGroupNumbersListValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Phase1DhGroupNumbersListValue build() => _build();

  _$Phase1DhGroupNumbersListValue _build() {
    final _$result = _$v ??
        new _$Phase1DhGroupNumbersListValue._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'Phase1DhGroupNumbersListValue', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
