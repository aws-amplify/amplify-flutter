// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_transfer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddressTransfer extends AddressTransfer {
  @override
  final String? publicIp;
  @override
  final String? allocationId;
  @override
  final String? transferAccountId;
  @override
  final DateTime? transferOfferExpirationTimestamp;
  @override
  final DateTime? transferOfferAcceptedTimestamp;
  @override
  final AddressTransferStatus? addressTransferStatus;

  factory _$AddressTransfer([void Function(AddressTransferBuilder)? updates]) =>
      (new AddressTransferBuilder()..update(updates))._build();

  _$AddressTransfer._(
      {this.publicIp,
      this.allocationId,
      this.transferAccountId,
      this.transferOfferExpirationTimestamp,
      this.transferOfferAcceptedTimestamp,
      this.addressTransferStatus})
      : super._();

  @override
  AddressTransfer rebuild(void Function(AddressTransferBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressTransferBuilder toBuilder() =>
      new AddressTransferBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressTransfer &&
        publicIp == other.publicIp &&
        allocationId == other.allocationId &&
        transferAccountId == other.transferAccountId &&
        transferOfferExpirationTimestamp ==
            other.transferOfferExpirationTimestamp &&
        transferOfferAcceptedTimestamp ==
            other.transferOfferAcceptedTimestamp &&
        addressTransferStatus == other.addressTransferStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, transferAccountId.hashCode);
    _$hash = $jc(_$hash, transferOfferExpirationTimestamp.hashCode);
    _$hash = $jc(_$hash, transferOfferAcceptedTimestamp.hashCode);
    _$hash = $jc(_$hash, addressTransferStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AddressTransferBuilder
    implements Builder<AddressTransfer, AddressTransferBuilder> {
  _$AddressTransfer? _$v;

  String? _publicIp;
  String? get publicIp => _$this._publicIp;
  set publicIp(String? publicIp) => _$this._publicIp = publicIp;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  String? _transferAccountId;
  String? get transferAccountId => _$this._transferAccountId;
  set transferAccountId(String? transferAccountId) =>
      _$this._transferAccountId = transferAccountId;

  DateTime? _transferOfferExpirationTimestamp;
  DateTime? get transferOfferExpirationTimestamp =>
      _$this._transferOfferExpirationTimestamp;
  set transferOfferExpirationTimestamp(
          DateTime? transferOfferExpirationTimestamp) =>
      _$this._transferOfferExpirationTimestamp =
          transferOfferExpirationTimestamp;

  DateTime? _transferOfferAcceptedTimestamp;
  DateTime? get transferOfferAcceptedTimestamp =>
      _$this._transferOfferAcceptedTimestamp;
  set transferOfferAcceptedTimestamp(
          DateTime? transferOfferAcceptedTimestamp) =>
      _$this._transferOfferAcceptedTimestamp = transferOfferAcceptedTimestamp;

  AddressTransferStatus? _addressTransferStatus;
  AddressTransferStatus? get addressTransferStatus =>
      _$this._addressTransferStatus;
  set addressTransferStatus(AddressTransferStatus? addressTransferStatus) =>
      _$this._addressTransferStatus = addressTransferStatus;

  AddressTransferBuilder();

  AddressTransferBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publicIp = $v.publicIp;
      _allocationId = $v.allocationId;
      _transferAccountId = $v.transferAccountId;
      _transferOfferExpirationTimestamp = $v.transferOfferExpirationTimestamp;
      _transferOfferAcceptedTimestamp = $v.transferOfferAcceptedTimestamp;
      _addressTransferStatus = $v.addressTransferStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressTransfer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddressTransfer;
  }

  @override
  void update(void Function(AddressTransferBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddressTransfer build() => _build();

  _$AddressTransfer _build() {
    final _$result = _$v ??
        new _$AddressTransfer._(
            publicIp: publicIp,
            allocationId: allocationId,
            transferAccountId: transferAccountId,
            transferOfferExpirationTimestamp: transferOfferExpirationTimestamp,
            transferOfferAcceptedTimestamp: transferOfferAcceptedTimestamp,
            addressTransferStatus: addressTransferStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
