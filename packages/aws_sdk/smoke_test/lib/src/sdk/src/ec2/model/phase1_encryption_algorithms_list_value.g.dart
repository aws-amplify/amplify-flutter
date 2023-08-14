// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase1_encryption_algorithms_list_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Phase1EncryptionAlgorithmsListValue
    extends Phase1EncryptionAlgorithmsListValue {
  @override
  final String? value;

  factory _$Phase1EncryptionAlgorithmsListValue(
          [void Function(Phase1EncryptionAlgorithmsListValueBuilder)?
              updates]) =>
      (new Phase1EncryptionAlgorithmsListValueBuilder()..update(updates))
          ._build();

  _$Phase1EncryptionAlgorithmsListValue._({this.value}) : super._();

  @override
  Phase1EncryptionAlgorithmsListValue rebuild(
          void Function(Phase1EncryptionAlgorithmsListValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Phase1EncryptionAlgorithmsListValueBuilder toBuilder() =>
      new Phase1EncryptionAlgorithmsListValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phase1EncryptionAlgorithmsListValue && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Phase1EncryptionAlgorithmsListValueBuilder
    implements
        Builder<Phase1EncryptionAlgorithmsListValue,
            Phase1EncryptionAlgorithmsListValueBuilder> {
  _$Phase1EncryptionAlgorithmsListValue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  Phase1EncryptionAlgorithmsListValueBuilder();

  Phase1EncryptionAlgorithmsListValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Phase1EncryptionAlgorithmsListValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Phase1EncryptionAlgorithmsListValue;
  }

  @override
  void update(
      void Function(Phase1EncryptionAlgorithmsListValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Phase1EncryptionAlgorithmsListValue build() => _build();

  _$Phase1EncryptionAlgorithmsListValue _build() {
    final _$result =
        _$v ?? new _$Phase1EncryptionAlgorithmsListValue._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
