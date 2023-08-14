// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blob_attribute_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BlobAttributeValue extends BlobAttributeValue {
  @override
  final _i2.Uint8List? value;

  factory _$BlobAttributeValue(
          [void Function(BlobAttributeValueBuilder)? updates]) =>
      (new BlobAttributeValueBuilder()..update(updates))._build();

  _$BlobAttributeValue._({this.value}) : super._();

  @override
  BlobAttributeValue rebuild(
          void Function(BlobAttributeValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlobAttributeValueBuilder toBuilder() =>
      new BlobAttributeValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlobAttributeValue && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BlobAttributeValueBuilder
    implements Builder<BlobAttributeValue, BlobAttributeValueBuilder> {
  _$BlobAttributeValue? _$v;

  _i2.Uint8List? _value;
  _i2.Uint8List? get value => _$this._value;
  set value(_i2.Uint8List? value) => _$this._value = value;

  BlobAttributeValueBuilder();

  BlobAttributeValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlobAttributeValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BlobAttributeValue;
  }

  @override
  void update(void Function(BlobAttributeValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlobAttributeValue build() => _build();

  _$BlobAttributeValue _build() {
    final _$result = _$v ?? new _$BlobAttributeValue._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
