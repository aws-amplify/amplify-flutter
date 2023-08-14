// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase2_dh_group_numbers_request_list_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Phase2DhGroupNumbersRequestListValue
    extends Phase2DhGroupNumbersRequestListValue {
  @override
  final int value;

  factory _$Phase2DhGroupNumbersRequestListValue(
          [void Function(Phase2DhGroupNumbersRequestListValueBuilder)?
              updates]) =>
      (new Phase2DhGroupNumbersRequestListValueBuilder()..update(updates))
          ._build();

  _$Phase2DhGroupNumbersRequestListValue._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        value, r'Phase2DhGroupNumbersRequestListValue', 'value');
  }

  @override
  Phase2DhGroupNumbersRequestListValue rebuild(
          void Function(Phase2DhGroupNumbersRequestListValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Phase2DhGroupNumbersRequestListValueBuilder toBuilder() =>
      new Phase2DhGroupNumbersRequestListValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phase2DhGroupNumbersRequestListValue &&
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

class Phase2DhGroupNumbersRequestListValueBuilder
    implements
        Builder<Phase2DhGroupNumbersRequestListValue,
            Phase2DhGroupNumbersRequestListValueBuilder> {
  _$Phase2DhGroupNumbersRequestListValue? _$v;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  Phase2DhGroupNumbersRequestListValueBuilder() {
    Phase2DhGroupNumbersRequestListValue._init(this);
  }

  Phase2DhGroupNumbersRequestListValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Phase2DhGroupNumbersRequestListValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Phase2DhGroupNumbersRequestListValue;
  }

  @override
  void update(
      void Function(Phase2DhGroupNumbersRequestListValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Phase2DhGroupNumbersRequestListValue build() => _build();

  _$Phase2DhGroupNumbersRequestListValue _build() {
    final _$result = _$v ??
        new _$Phase2DhGroupNumbersRequestListValue._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'Phase2DhGroupNumbersRequestListValue', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
