// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_multicast_domain_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayMulticastDomainRequest
    extends DeleteTransitGatewayMulticastDomainRequest {
  @override
  final String? transitGatewayMulticastDomainId;
  @override
  final bool dryRun;

  factory _$DeleteTransitGatewayMulticastDomainRequest(
          [void Function(DeleteTransitGatewayMulticastDomainRequestBuilder)?
              updates]) =>
      (new DeleteTransitGatewayMulticastDomainRequestBuilder()..update(updates))
          ._build();

  _$DeleteTransitGatewayMulticastDomainRequest._(
      {this.transitGatewayMulticastDomainId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteTransitGatewayMulticastDomainRequest', 'dryRun');
  }

  @override
  DeleteTransitGatewayMulticastDomainRequest rebuild(
          void Function(DeleteTransitGatewayMulticastDomainRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayMulticastDomainRequestBuilder toBuilder() =>
      new DeleteTransitGatewayMulticastDomainRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayMulticastDomainRequest &&
        transitGatewayMulticastDomainId ==
            other.transitGatewayMulticastDomainId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayMulticastDomainId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTransitGatewayMulticastDomainRequestBuilder
    implements
        Builder<DeleteTransitGatewayMulticastDomainRequest,
            DeleteTransitGatewayMulticastDomainRequestBuilder> {
  _$DeleteTransitGatewayMulticastDomainRequest? _$v;

  String? _transitGatewayMulticastDomainId;
  String? get transitGatewayMulticastDomainId =>
      _$this._transitGatewayMulticastDomainId;
  set transitGatewayMulticastDomainId(
          String? transitGatewayMulticastDomainId) =>
      _$this._transitGatewayMulticastDomainId = transitGatewayMulticastDomainId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteTransitGatewayMulticastDomainRequestBuilder() {
    DeleteTransitGatewayMulticastDomainRequest._init(this);
  }

  DeleteTransitGatewayMulticastDomainRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomainId = $v.transitGatewayMulticastDomainId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayMulticastDomainRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayMulticastDomainRequest;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayMulticastDomainRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayMulticastDomainRequest build() => _build();

  _$DeleteTransitGatewayMulticastDomainRequest _build() {
    final _$result = _$v ??
        new _$DeleteTransitGatewayMulticastDomainRequest._(
            transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'DeleteTransitGatewayMulticastDomainRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
