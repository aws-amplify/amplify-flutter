// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_subnet_cidr_block_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateSubnetCidrBlockRequest
    extends DisassociateSubnetCidrBlockRequest {
  @override
  final String? associationId;

  factory _$DisassociateSubnetCidrBlockRequest(
          [void Function(DisassociateSubnetCidrBlockRequestBuilder)?
              updates]) =>
      (new DisassociateSubnetCidrBlockRequestBuilder()..update(updates))
          ._build();

  _$DisassociateSubnetCidrBlockRequest._({this.associationId}) : super._();

  @override
  DisassociateSubnetCidrBlockRequest rebuild(
          void Function(DisassociateSubnetCidrBlockRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateSubnetCidrBlockRequestBuilder toBuilder() =>
      new DisassociateSubnetCidrBlockRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateSubnetCidrBlockRequest &&
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

class DisassociateSubnetCidrBlockRequestBuilder
    implements
        Builder<DisassociateSubnetCidrBlockRequest,
            DisassociateSubnetCidrBlockRequestBuilder> {
  _$DisassociateSubnetCidrBlockRequest? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  DisassociateSubnetCidrBlockRequestBuilder();

  DisassociateSubnetCidrBlockRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateSubnetCidrBlockRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateSubnetCidrBlockRequest;
  }

  @override
  void update(
      void Function(DisassociateSubnetCidrBlockRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateSubnetCidrBlockRequest build() => _build();

  _$DisassociateSubnetCidrBlockRequest _build() {
    final _$result = _$v ??
        new _$DisassociateSubnetCidrBlockRequest._(
            associationId: associationId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
