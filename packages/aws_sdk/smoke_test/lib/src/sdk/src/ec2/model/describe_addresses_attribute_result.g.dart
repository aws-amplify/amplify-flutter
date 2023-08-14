// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_addresses_attribute_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAddressesAttributeResult
    extends DescribeAddressesAttributeResult {
  @override
  final _i2.BuiltList<AddressAttribute>? addresses;
  @override
  final String? nextToken;

  factory _$DescribeAddressesAttributeResult(
          [void Function(DescribeAddressesAttributeResultBuilder)? updates]) =>
      (new DescribeAddressesAttributeResultBuilder()..update(updates))._build();

  _$DescribeAddressesAttributeResult._({this.addresses, this.nextToken})
      : super._();

  @override
  DescribeAddressesAttributeResult rebuild(
          void Function(DescribeAddressesAttributeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAddressesAttributeResultBuilder toBuilder() =>
      new DescribeAddressesAttributeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAddressesAttributeResult &&
        addresses == other.addresses &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, addresses.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAddressesAttributeResultBuilder
    implements
        Builder<DescribeAddressesAttributeResult,
            DescribeAddressesAttributeResultBuilder> {
  _$DescribeAddressesAttributeResult? _$v;

  _i2.ListBuilder<AddressAttribute>? _addresses;
  _i2.ListBuilder<AddressAttribute> get addresses =>
      _$this._addresses ??= new _i2.ListBuilder<AddressAttribute>();
  set addresses(_i2.ListBuilder<AddressAttribute>? addresses) =>
      _$this._addresses = addresses;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeAddressesAttributeResultBuilder();

  DescribeAddressesAttributeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addresses = $v.addresses?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAddressesAttributeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAddressesAttributeResult;
  }

  @override
  void update(void Function(DescribeAddressesAttributeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAddressesAttributeResult build() => _build();

  _$DescribeAddressesAttributeResult _build() {
    _$DescribeAddressesAttributeResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeAddressesAttributeResult._(
              addresses: _addresses?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addresses';
        _addresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAddressesAttributeResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
