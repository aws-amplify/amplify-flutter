// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_address_transfers_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAddressTransfersResult extends DescribeAddressTransfersResult {
  @override
  final _i2.BuiltList<AddressTransfer>? addressTransfers;
  @override
  final String? nextToken;

  factory _$DescribeAddressTransfersResult(
          [void Function(DescribeAddressTransfersResultBuilder)? updates]) =>
      (new DescribeAddressTransfersResultBuilder()..update(updates))._build();

  _$DescribeAddressTransfersResult._({this.addressTransfers, this.nextToken})
      : super._();

  @override
  DescribeAddressTransfersResult rebuild(
          void Function(DescribeAddressTransfersResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAddressTransfersResultBuilder toBuilder() =>
      new DescribeAddressTransfersResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAddressTransfersResult &&
        addressTransfers == other.addressTransfers &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, addressTransfers.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAddressTransfersResultBuilder
    implements
        Builder<DescribeAddressTransfersResult,
            DescribeAddressTransfersResultBuilder> {
  _$DescribeAddressTransfersResult? _$v;

  _i2.ListBuilder<AddressTransfer>? _addressTransfers;
  _i2.ListBuilder<AddressTransfer> get addressTransfers =>
      _$this._addressTransfers ??= new _i2.ListBuilder<AddressTransfer>();
  set addressTransfers(_i2.ListBuilder<AddressTransfer>? addressTransfers) =>
      _$this._addressTransfers = addressTransfers;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeAddressTransfersResultBuilder();

  DescribeAddressTransfersResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addressTransfers = $v.addressTransfers?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAddressTransfersResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAddressTransfersResult;
  }

  @override
  void update(void Function(DescribeAddressTransfersResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAddressTransfersResult build() => _build();

  _$DescribeAddressTransfersResult _build() {
    _$DescribeAddressTransfersResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeAddressTransfersResult._(
              addressTransfers: _addressTransfers?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addressTransfers';
        _addressTransfers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAddressTransfersResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
