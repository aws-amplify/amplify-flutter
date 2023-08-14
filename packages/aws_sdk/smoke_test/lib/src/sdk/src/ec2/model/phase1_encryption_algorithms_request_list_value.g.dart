// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase1_encryption_algorithms_request_list_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Phase1EncryptionAlgorithmsRequestListValue
    extends Phase1EncryptionAlgorithmsRequestListValue {
  @override
  final String? value;

  factory _$Phase1EncryptionAlgorithmsRequestListValue(
          [void Function(Phase1EncryptionAlgorithmsRequestListValueBuilder)?
              updates]) =>
      (new Phase1EncryptionAlgorithmsRequestListValueBuilder()..update(updates))
          ._build();

  _$Phase1EncryptionAlgorithmsRequestListValue._({this.value}) : super._();

  @override
  Phase1EncryptionAlgorithmsRequestListValue rebuild(
          void Function(Phase1EncryptionAlgorithmsRequestListValueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Phase1EncryptionAlgorithmsRequestListValueBuilder toBuilder() =>
      new Phase1EncryptionAlgorithmsRequestListValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phase1EncryptionAlgorithmsRequestListValue &&
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

class Phase1EncryptionAlgorithmsRequestListValueBuilder
    implements
        Builder<Phase1EncryptionAlgorithmsRequestListValue,
            Phase1EncryptionAlgorithmsRequestListValueBuilder> {
  _$Phase1EncryptionAlgorithmsRequestListValue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  Phase1EncryptionAlgorithmsRequestListValueBuilder();

  Phase1EncryptionAlgorithmsRequestListValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Phase1EncryptionAlgorithmsRequestListValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Phase1EncryptionAlgorithmsRequestListValue;
  }

  @override
  void update(
      void Function(Phase1EncryptionAlgorithmsRequestListValueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Phase1EncryptionAlgorithmsRequestListValue build() => _build();

  _$Phase1EncryptionAlgorithmsRequestListValue _build() {
    final _$result =
        _$v ?? new _$Phase1EncryptionAlgorithmsRequestListValue._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
