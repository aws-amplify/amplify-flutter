// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase2_encryption_algorithms_request_list_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Phase2EncryptionAlgorithmsRequestListValue
    extends Phase2EncryptionAlgorithmsRequestListValue {
  @override
  final String? value;

  factory _$Phase2EncryptionAlgorithmsRequestListValue(
          [void Function(Phase2EncryptionAlgorithmsRequestListValueBuilder)?
              updates]) =>
      (new Phase2EncryptionAlgorithmsRequestListValueBuilder()..update(updates))
          ._build();

  _$Phase2EncryptionAlgorithmsRequestListValue._({this.value}) : super._();

  @override
  Phase2EncryptionAlgorithmsRequestListValue rebuild(
          void Function(Phase2EncryptionAlgorithmsRequestListValueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Phase2EncryptionAlgorithmsRequestListValueBuilder toBuilder() =>
      new Phase2EncryptionAlgorithmsRequestListValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phase2EncryptionAlgorithmsRequestListValue &&
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

class Phase2EncryptionAlgorithmsRequestListValueBuilder
    implements
        Builder<Phase2EncryptionAlgorithmsRequestListValue,
            Phase2EncryptionAlgorithmsRequestListValueBuilder> {
  _$Phase2EncryptionAlgorithmsRequestListValue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  Phase2EncryptionAlgorithmsRequestListValueBuilder();

  Phase2EncryptionAlgorithmsRequestListValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Phase2EncryptionAlgorithmsRequestListValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Phase2EncryptionAlgorithmsRequestListValue;
  }

  @override
  void update(
      void Function(Phase2EncryptionAlgorithmsRequestListValueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Phase2EncryptionAlgorithmsRequestListValue build() => _build();

  _$Phase2EncryptionAlgorithmsRequestListValue _build() {
    final _$result =
        _$v ?? new _$Phase2EncryptionAlgorithmsRequestListValue._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
