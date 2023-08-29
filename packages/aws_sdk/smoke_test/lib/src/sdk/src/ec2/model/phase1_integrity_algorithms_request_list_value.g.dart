// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase1_integrity_algorithms_request_list_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Phase1IntegrityAlgorithmsRequestListValue
    extends Phase1IntegrityAlgorithmsRequestListValue {
  @override
  final String? value;

  factory _$Phase1IntegrityAlgorithmsRequestListValue(
          [void Function(Phase1IntegrityAlgorithmsRequestListValueBuilder)?
              updates]) =>
      (new Phase1IntegrityAlgorithmsRequestListValueBuilder()..update(updates))
          ._build();

  _$Phase1IntegrityAlgorithmsRequestListValue._({this.value}) : super._();

  @override
  Phase1IntegrityAlgorithmsRequestListValue rebuild(
          void Function(Phase1IntegrityAlgorithmsRequestListValueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Phase1IntegrityAlgorithmsRequestListValueBuilder toBuilder() =>
      new Phase1IntegrityAlgorithmsRequestListValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phase1IntegrityAlgorithmsRequestListValue &&
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

class Phase1IntegrityAlgorithmsRequestListValueBuilder
    implements
        Builder<Phase1IntegrityAlgorithmsRequestListValue,
            Phase1IntegrityAlgorithmsRequestListValueBuilder> {
  _$Phase1IntegrityAlgorithmsRequestListValue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  Phase1IntegrityAlgorithmsRequestListValueBuilder();

  Phase1IntegrityAlgorithmsRequestListValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Phase1IntegrityAlgorithmsRequestListValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Phase1IntegrityAlgorithmsRequestListValue;
  }

  @override
  void update(
      void Function(Phase1IntegrityAlgorithmsRequestListValueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Phase1IntegrityAlgorithmsRequestListValue build() => _build();

  _$Phase1IntegrityAlgorithmsRequestListValue _build() {
    final _$result =
        _$v ?? new _$Phase1IntegrityAlgorithmsRequestListValue._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
