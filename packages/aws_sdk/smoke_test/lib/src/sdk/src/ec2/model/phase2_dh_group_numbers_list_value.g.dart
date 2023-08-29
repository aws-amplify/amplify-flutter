// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase2_dh_group_numbers_list_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Phase2DhGroupNumbersListValue extends Phase2DhGroupNumbersListValue {
  @override
  final int value;

  factory _$Phase2DhGroupNumbersListValue(
          [void Function(Phase2DhGroupNumbersListValueBuilder)? updates]) =>
      (new Phase2DhGroupNumbersListValueBuilder()..update(updates))._build();

  _$Phase2DhGroupNumbersListValue._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        value, r'Phase2DhGroupNumbersListValue', 'value');
  }

  @override
  Phase2DhGroupNumbersListValue rebuild(
          void Function(Phase2DhGroupNumbersListValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Phase2DhGroupNumbersListValueBuilder toBuilder() =>
      new Phase2DhGroupNumbersListValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phase2DhGroupNumbersListValue && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Phase2DhGroupNumbersListValueBuilder
    implements
        Builder<Phase2DhGroupNumbersListValue,
            Phase2DhGroupNumbersListValueBuilder> {
  _$Phase2DhGroupNumbersListValue? _$v;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  Phase2DhGroupNumbersListValueBuilder() {
    Phase2DhGroupNumbersListValue._init(this);
  }

  Phase2DhGroupNumbersListValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Phase2DhGroupNumbersListValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Phase2DhGroupNumbersListValue;
  }

  @override
  void update(void Function(Phase2DhGroupNumbersListValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Phase2DhGroupNumbersListValue build() => _build();

  _$Phase2DhGroupNumbersListValue _build() {
    final _$result = _$v ??
        new _$Phase2DhGroupNumbersListValue._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'Phase2DhGroupNumbersListValue', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
