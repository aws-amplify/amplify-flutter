// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_vpc_cidr_block_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateVpcCidrBlockRequest
    extends DisassociateVpcCidrBlockRequest {
  @override
  final String? associationId;

  factory _$DisassociateVpcCidrBlockRequest(
          [void Function(DisassociateVpcCidrBlockRequestBuilder)? updates]) =>
      (new DisassociateVpcCidrBlockRequestBuilder()..update(updates))._build();

  _$DisassociateVpcCidrBlockRequest._({this.associationId}) : super._();

  @override
  DisassociateVpcCidrBlockRequest rebuild(
          void Function(DisassociateVpcCidrBlockRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateVpcCidrBlockRequestBuilder toBuilder() =>
      new DisassociateVpcCidrBlockRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateVpcCidrBlockRequest &&
        associationId == other.associationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateVpcCidrBlockRequestBuilder
    implements
        Builder<DisassociateVpcCidrBlockRequest,
            DisassociateVpcCidrBlockRequestBuilder> {
  _$DisassociateVpcCidrBlockRequest? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  DisassociateVpcCidrBlockRequestBuilder();

  DisassociateVpcCidrBlockRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateVpcCidrBlockRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateVpcCidrBlockRequest;
  }

  @override
  void update(void Function(DisassociateVpcCidrBlockRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateVpcCidrBlockRequest build() => _build();

  _$DisassociateVpcCidrBlockRequest _build() {
    final _$result = _$v ??
        new _$DisassociateVpcCidrBlockRequest._(associationId: associationId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
