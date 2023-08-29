// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase2_integrity_algorithms_list_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Phase2IntegrityAlgorithmsListValue
    extends Phase2IntegrityAlgorithmsListValue {
  @override
  final String? value;

  factory _$Phase2IntegrityAlgorithmsListValue(
          [void Function(Phase2IntegrityAlgorithmsListValueBuilder)?
              updates]) =>
      (new Phase2IntegrityAlgorithmsListValueBuilder()..update(updates))
          ._build();

  _$Phase2IntegrityAlgorithmsListValue._({this.value}) : super._();

  @override
  Phase2IntegrityAlgorithmsListValue rebuild(
          void Function(Phase2IntegrityAlgorithmsListValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Phase2IntegrityAlgorithmsListValueBuilder toBuilder() =>
      new Phase2IntegrityAlgorithmsListValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phase2IntegrityAlgorithmsListValue && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Phase2IntegrityAlgorithmsListValueBuilder
    implements
        Builder<Phase2IntegrityAlgorithmsListValue,
            Phase2IntegrityAlgorithmsListValueBuilder> {
  _$Phase2IntegrityAlgorithmsListValue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  Phase2IntegrityAlgorithmsListValueBuilder();

  Phase2IntegrityAlgorithmsListValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Phase2IntegrityAlgorithmsListValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Phase2IntegrityAlgorithmsListValue;
  }

  @override
  void update(
      void Function(Phase2IntegrityAlgorithmsListValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Phase2IntegrityAlgorithmsListValue build() => _build();

  _$Phase2IntegrityAlgorithmsListValue _build() {
    final _$result =
        _$v ?? new _$Phase2IntegrityAlgorithmsListValue._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
