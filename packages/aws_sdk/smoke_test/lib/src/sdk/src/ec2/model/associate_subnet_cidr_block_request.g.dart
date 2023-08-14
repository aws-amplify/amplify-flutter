// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_subnet_cidr_block_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateSubnetCidrBlockRequest
    extends AssociateSubnetCidrBlockRequest {
  @override
  final String? ipv6CidrBlock;
  @override
  final String? subnetId;

  factory _$AssociateSubnetCidrBlockRequest(
          [void Function(AssociateSubnetCidrBlockRequestBuilder)? updates]) =>
      (new AssociateSubnetCidrBlockRequestBuilder()..update(updates))._build();

  _$AssociateSubnetCidrBlockRequest._({this.ipv6CidrBlock, this.subnetId})
      : super._();

  @override
  AssociateSubnetCidrBlockRequest rebuild(
          void Function(AssociateSubnetCidrBlockRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateSubnetCidrBlockRequestBuilder toBuilder() =>
      new AssociateSubnetCidrBlockRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateSubnetCidrBlockRequest &&
        ipv6CidrBlock == other.ipv6CidrBlock &&
        subnetId == other.subnetId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv6CidrBlock.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateSubnetCidrBlockRequestBuilder
    implements
        Builder<AssociateSubnetCidrBlockRequest,
            AssociateSubnetCidrBlockRequestBuilder> {
  _$AssociateSubnetCidrBlockRequest? _$v;

  String? _ipv6CidrBlock;
  String? get ipv6CidrBlock => _$this._ipv6CidrBlock;
  set ipv6CidrBlock(String? ipv6CidrBlock) =>
      _$this._ipv6CidrBlock = ipv6CidrBlock;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  AssociateSubnetCidrBlockRequestBuilder();

  AssociateSubnetCidrBlockRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6CidrBlock = $v.ipv6CidrBlock;
      _subnetId = $v.subnetId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateSubnetCidrBlockRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateSubnetCidrBlockRequest;
  }

  @override
  void update(void Function(AssociateSubnetCidrBlockRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateSubnetCidrBlockRequest build() => _build();

  _$AssociateSubnetCidrBlockRequest _build() {
    final _$result = _$v ??
        new _$AssociateSubnetCidrBlockRequest._(
            ipv6CidrBlock: ipv6CidrBlock, subnetId: subnetId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
