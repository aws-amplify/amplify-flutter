// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase2_integrity_algorithms_request_list_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Phase2IntegrityAlgorithmsRequestListValue
    extends Phase2IntegrityAlgorithmsRequestListValue {
  @override
  final String? value;

  factory _$Phase2IntegrityAlgorithmsRequestListValue(
          [void Function(Phase2IntegrityAlgorithmsRequestListValueBuilder)?
              updates]) =>
      (new Phase2IntegrityAlgorithmsRequestListValueBuilder()..update(updates))
          ._build();

  _$Phase2IntegrityAlgorithmsRequestListValue._({this.value}) : super._();

  @override
  Phase2IntegrityAlgorithmsRequestListValue rebuild(
          void Function(Phase2IntegrityAlgorithmsRequestListValueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Phase2IntegrityAlgorithmsRequestListValueBuilder toBuilder() =>
      new Phase2IntegrityAlgorithmsRequestListValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phase2IntegrityAlgorithmsRequestListValue &&
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

class Phase2IntegrityAlgorithmsRequestListValueBuilder
    implements
        Builder<Phase2IntegrityAlgorithmsRequestListValue,
            Phase2IntegrityAlgorithmsRequestListValueBuilder> {
  _$Phase2IntegrityAlgorithmsRequestListValue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  Phase2IntegrityAlgorithmsRequestListValueBuilder();

  Phase2IntegrityAlgorithmsRequestListValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Phase2IntegrityAlgorithmsRequestListValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Phase2IntegrityAlgorithmsRequestListValue;
  }

  @override
  void update(
      void Function(Phase2IntegrityAlgorithmsRequestListValueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Phase2IntegrityAlgorithmsRequestListValue build() => _build();

  _$Phase2IntegrityAlgorithmsRequestListValue _build() {
    final _$result =
        _$v ?? new _$Phase2IntegrityAlgorithmsRequestListValue._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
