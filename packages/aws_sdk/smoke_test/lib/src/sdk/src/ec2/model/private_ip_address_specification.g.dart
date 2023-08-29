// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_ip_address_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrivateIpAddressSpecification extends PrivateIpAddressSpecification {
  @override
  final bool primary;
  @override
  final String? privateIpAddress;

  factory _$PrivateIpAddressSpecification(
          [void Function(PrivateIpAddressSpecificationBuilder)? updates]) =>
      (new PrivateIpAddressSpecificationBuilder()..update(updates))._build();

  _$PrivateIpAddressSpecification._(
      {required this.primary, this.privateIpAddress})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        primary, r'PrivateIpAddressSpecification', 'primary');
  }

  @override
  PrivateIpAddressSpecification rebuild(
          void Function(PrivateIpAddressSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrivateIpAddressSpecificationBuilder toBuilder() =>
      new PrivateIpAddressSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrivateIpAddressSpecification &&
        primary == other.primary &&
        privateIpAddress == other.privateIpAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, primary.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PrivateIpAddressSpecificationBuilder
    implements
        Builder<PrivateIpAddressSpecification,
            PrivateIpAddressSpecificationBuilder> {
  _$PrivateIpAddressSpecification? _$v;

  bool? _primary;
  bool? get primary => _$this._primary;
  set primary(bool? primary) => _$this._primary = primary;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  PrivateIpAddressSpecificationBuilder() {
    PrivateIpAddressSpecification._init(this);
  }

  PrivateIpAddressSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _primary = $v.primary;
      _privateIpAddress = $v.privateIpAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrivateIpAddressSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrivateIpAddressSpecification;
  }

  @override
  void update(void Function(PrivateIpAddressSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrivateIpAddressSpecification build() => _build();

  _$PrivateIpAddressSpecification _build() {
    final _$result = _$v ??
        new _$PrivateIpAddressSpecification._(
            primary: BuiltValueNullFieldError.checkNotNull(
                primary, r'PrivateIpAddressSpecification', 'primary'),
            privateIpAddress: privateIpAddress);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
