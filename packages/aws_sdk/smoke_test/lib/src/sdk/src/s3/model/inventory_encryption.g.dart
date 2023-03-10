// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.inventory_encryption;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InventoryEncryption extends InventoryEncryption {
  @override
  final _i2.Ssekms? ssekms;
  @override
  final _i3.Sses3? sses3;

  factory _$InventoryEncryption(
          [void Function(InventoryEncryptionBuilder)? updates]) =>
      (new InventoryEncryptionBuilder()..update(updates))._build();

  _$InventoryEncryption._({this.ssekms, this.sses3}) : super._();

  @override
  InventoryEncryption rebuild(
          void Function(InventoryEncryptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InventoryEncryptionBuilder toBuilder() =>
      new InventoryEncryptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InventoryEncryption &&
        ssekms == other.ssekms &&
        sses3 == other.sses3;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ssekms.hashCode);
    _$hash = $jc(_$hash, sses3.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InventoryEncryptionBuilder
    implements Builder<InventoryEncryption, InventoryEncryptionBuilder> {
  _$InventoryEncryption? _$v;

  _i2.SsekmsBuilder? _ssekms;
  _i2.SsekmsBuilder get ssekms => _$this._ssekms ??= new _i2.SsekmsBuilder();
  set ssekms(_i2.SsekmsBuilder? ssekms) => _$this._ssekms = ssekms;

  _i3.Sses3Builder? _sses3;
  _i3.Sses3Builder get sses3 => _$this._sses3 ??= new _i3.Sses3Builder();
  set sses3(_i3.Sses3Builder? sses3) => _$this._sses3 = sses3;

  InventoryEncryptionBuilder() {
    InventoryEncryption._init(this);
  }

  InventoryEncryptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ssekms = $v.ssekms?.toBuilder();
      _sses3 = $v.sses3?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InventoryEncryption other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InventoryEncryption;
  }

  @override
  void update(void Function(InventoryEncryptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InventoryEncryption build() => _build();

  _$InventoryEncryption _build() {
    _$InventoryEncryption _$result;
    try {
      _$result = _$v ??
          new _$InventoryEncryption._(
              ssekms: _ssekms?.build(), sses3: _sses3?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ssekms';
        _ssekms?.build();
        _$failedField = 'sses3';
        _sses3?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InventoryEncryption', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
