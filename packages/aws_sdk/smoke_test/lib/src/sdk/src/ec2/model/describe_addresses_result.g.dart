// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_addresses_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAddressesResult extends DescribeAddressesResult {
  @override
  final _i2.BuiltList<Address>? addresses;

  factory _$DescribeAddressesResult(
          [void Function(DescribeAddressesResultBuilder)? updates]) =>
      (new DescribeAddressesResultBuilder()..update(updates))._build();

  _$DescribeAddressesResult._({this.addresses}) : super._();

  @override
  DescribeAddressesResult rebuild(
          void Function(DescribeAddressesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAddressesResultBuilder toBuilder() =>
      new DescribeAddressesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAddressesResult && addresses == other.addresses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, addresses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAddressesResultBuilder
    implements
        Builder<DescribeAddressesResult, DescribeAddressesResultBuilder> {
  _$DescribeAddressesResult? _$v;

  _i2.ListBuilder<Address>? _addresses;
  _i2.ListBuilder<Address> get addresses =>
      _$this._addresses ??= new _i2.ListBuilder<Address>();
  set addresses(_i2.ListBuilder<Address>? addresses) =>
      _$this._addresses = addresses;

  DescribeAddressesResultBuilder();

  DescribeAddressesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addresses = $v.addresses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAddressesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAddressesResult;
  }

  @override
  void update(void Function(DescribeAddressesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAddressesResult build() => _build();

  _$DescribeAddressesResult _build() {
    _$DescribeAddressesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeAddressesResult._(addresses: _addresses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addresses';
        _addresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAddressesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
