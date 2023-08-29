// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_attribute.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddressAttribute extends AddressAttribute {
  @override
  final String? publicIp;
  @override
  final String? allocationId;
  @override
  final String? ptrRecord;
  @override
  final PtrUpdateStatus? ptrRecordUpdate;

  factory _$AddressAttribute(
          [void Function(AddressAttributeBuilder)? updates]) =>
      (new AddressAttributeBuilder()..update(updates))._build();

  _$AddressAttribute._(
      {this.publicIp, this.allocationId, this.ptrRecord, this.ptrRecordUpdate})
      : super._();

  @override
  AddressAttribute rebuild(void Function(AddressAttributeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressAttributeBuilder toBuilder() =>
      new AddressAttributeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressAttribute &&
        publicIp == other.publicIp &&
        allocationId == other.allocationId &&
        ptrRecord == other.ptrRecord &&
        ptrRecordUpdate == other.ptrRecordUpdate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, ptrRecord.hashCode);
    _$hash = $jc(_$hash, ptrRecordUpdate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AddressAttributeBuilder
    implements Builder<AddressAttribute, AddressAttributeBuilder> {
  _$AddressAttribute? _$v;

  String? _publicIp;
  String? get publicIp => _$this._publicIp;
  set publicIp(String? publicIp) => _$this._publicIp = publicIp;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  String? _ptrRecord;
  String? get ptrRecord => _$this._ptrRecord;
  set ptrRecord(String? ptrRecord) => _$this._ptrRecord = ptrRecord;

  PtrUpdateStatusBuilder? _ptrRecordUpdate;
  PtrUpdateStatusBuilder get ptrRecordUpdate =>
      _$this._ptrRecordUpdate ??= new PtrUpdateStatusBuilder();
  set ptrRecordUpdate(PtrUpdateStatusBuilder? ptrRecordUpdate) =>
      _$this._ptrRecordUpdate = ptrRecordUpdate;

  AddressAttributeBuilder();

  AddressAttributeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publicIp = $v.publicIp;
      _allocationId = $v.allocationId;
      _ptrRecord = $v.ptrRecord;
      _ptrRecordUpdate = $v.ptrRecordUpdate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressAttribute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddressAttribute;
  }

  @override
  void update(void Function(AddressAttributeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddressAttribute build() => _build();

  _$AddressAttribute _build() {
    _$AddressAttribute _$result;
    try {
      _$result = _$v ??
          new _$AddressAttribute._(
              publicIp: publicIp,
              allocationId: allocationId,
              ptrRecord: ptrRecord,
              ptrRecordUpdate: _ptrRecordUpdate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ptrRecordUpdate';
        _ptrRecordUpdate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AddressAttribute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
