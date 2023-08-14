// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase1_integrity_algorithms_list_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Phase1IntegrityAlgorithmsListValue
    extends Phase1IntegrityAlgorithmsListValue {
  @override
  final String? value;

  factory _$Phase1IntegrityAlgorithmsListValue(
          [void Function(Phase1IntegrityAlgorithmsListValueBuilder)?
              updates]) =>
      (new Phase1IntegrityAlgorithmsListValueBuilder()..update(updates))
          ._build();

  _$Phase1IntegrityAlgorithmsListValue._({this.value}) : super._();

  @override
  Phase1IntegrityAlgorithmsListValue rebuild(
          void Function(Phase1IntegrityAlgorithmsListValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Phase1IntegrityAlgorithmsListValueBuilder toBuilder() =>
      new Phase1IntegrityAlgorithmsListValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phase1IntegrityAlgorithmsListValue && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Phase1IntegrityAlgorithmsListValueBuilder
    implements
        Builder<Phase1IntegrityAlgorithmsListValue,
            Phase1IntegrityAlgorithmsListValueBuilder> {
  _$Phase1IntegrityAlgorithmsListValue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  Phase1IntegrityAlgorithmsListValueBuilder();

  Phase1IntegrityAlgorithmsListValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Phase1IntegrityAlgorithmsListValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Phase1IntegrityAlgorithmsListValue;
  }

  @override
  void update(
      void Function(Phase1IntegrityAlgorithmsListValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Phase1IntegrityAlgorithmsListValue build() => _build();

  _$Phase1IntegrityAlgorithmsListValue _build() {
    final _$result =
        _$v ?? new _$Phase1IntegrityAlgorithmsListValue._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
