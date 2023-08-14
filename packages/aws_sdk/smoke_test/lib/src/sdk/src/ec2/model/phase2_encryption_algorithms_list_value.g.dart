// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase2_encryption_algorithms_list_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Phase2EncryptionAlgorithmsListValue
    extends Phase2EncryptionAlgorithmsListValue {
  @override
  final String? value;

  factory _$Phase2EncryptionAlgorithmsListValue(
          [void Function(Phase2EncryptionAlgorithmsListValueBuilder)?
              updates]) =>
      (new Phase2EncryptionAlgorithmsListValueBuilder()..update(updates))
          ._build();

  _$Phase2EncryptionAlgorithmsListValue._({this.value}) : super._();

  @override
  Phase2EncryptionAlgorithmsListValue rebuild(
          void Function(Phase2EncryptionAlgorithmsListValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Phase2EncryptionAlgorithmsListValueBuilder toBuilder() =>
      new Phase2EncryptionAlgorithmsListValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phase2EncryptionAlgorithmsListValue && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Phase2EncryptionAlgorithmsListValueBuilder
    implements
        Builder<Phase2EncryptionAlgorithmsListValue,
            Phase2EncryptionAlgorithmsListValueBuilder> {
  _$Phase2EncryptionAlgorithmsListValue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  Phase2EncryptionAlgorithmsListValueBuilder();

  Phase2EncryptionAlgorithmsListValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Phase2EncryptionAlgorithmsListValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Phase2EncryptionAlgorithmsListValue;
  }

  @override
  void update(
      void Function(Phase2EncryptionAlgorithmsListValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Phase2EncryptionAlgorithmsListValue build() => _build();

  _$Phase2EncryptionAlgorithmsListValue _build() {
    final _$result =
        _$v ?? new _$Phase2EncryptionAlgorithmsListValue._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
