// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase1_dh_group_numbers_request_list_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Phase1DhGroupNumbersRequestListValue
    extends Phase1DhGroupNumbersRequestListValue {
  @override
  final int value;

  factory _$Phase1DhGroupNumbersRequestListValue(
          [void Function(Phase1DhGroupNumbersRequestListValueBuilder)?
              updates]) =>
      (new Phase1DhGroupNumbersRequestListValueBuilder()..update(updates))
          ._build();

  _$Phase1DhGroupNumbersRequestListValue._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        value, r'Phase1DhGroupNumbersRequestListValue', 'value');
  }

  @override
  Phase1DhGroupNumbersRequestListValue rebuild(
          void Function(Phase1DhGroupNumbersRequestListValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Phase1DhGroupNumbersRequestListValueBuilder toBuilder() =>
      new Phase1DhGroupNumbersRequestListValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phase1DhGroupNumbersRequestListValue &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Phase1DhGroupNumbersRequestListValueBuilder
    implements
        Builder<Phase1DhGroupNumbersRequestListValue,
            Phase1DhGroupNumbersRequestListValueBuilder> {
  _$Phase1DhGroupNumbersRequestListValue? _$v;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  Phase1DhGroupNumbersRequestListValueBuilder() {
    Phase1DhGroupNumbersRequestListValue._init(this);
  }

  Phase1DhGroupNumbersRequestListValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Phase1DhGroupNumbersRequestListValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Phase1DhGroupNumbersRequestListValue;
  }

  @override
  void update(
      void Function(Phase1DhGroupNumbersRequestListValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Phase1DhGroupNumbersRequestListValue build() => _build();

  _$Phase1DhGroupNumbersRequestListValue _build() {
    final _$result = _$v ??
        new _$Phase1DhGroupNumbersRequestListValue._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'Phase1DhGroupNumbersRequestListValue', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
