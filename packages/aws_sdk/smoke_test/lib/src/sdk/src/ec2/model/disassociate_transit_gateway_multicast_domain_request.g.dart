// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_transit_gateway_multicast_domain_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateTransitGatewayMulticastDomainRequest
    extends DisassociateTransitGatewayMulticastDomainRequest {
  @override
  final String? transitGatewayMulticastDomainId;
  @override
  final String? transitGatewayAttachmentId;
  @override
  final _i3.BuiltList<String>? subnetIds;
  @override
  final bool dryRun;

  factory _$DisassociateTransitGatewayMulticastDomainRequest(
          [void Function(
                  DisassociateTransitGatewayMulticastDomainRequestBuilder)?
              updates]) =>
      (new DisassociateTransitGatewayMulticastDomainRequestBuilder()
            ..update(updates))
          ._build();

  _$DisassociateTransitGatewayMulticastDomainRequest._(
      {this.transitGatewayMulticastDomainId,
      this.transitGatewayAttachmentId,
      this.subnetIds,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisassociateTransitGatewayMulticastDomainRequest', 'dryRun');
  }

  @override
  DisassociateTransitGatewayMulticastDomainRequest rebuild(
          void Function(DisassociateTransitGatewayMulticastDomainRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateTransitGatewayMulticastDomainRequestBuilder toBuilder() =>
      new DisassociateTransitGatewayMulticastDomainRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateTransitGatewayMulticastDomainRequest &&
        transitGatewayMulticastDomainId ==
            other.transitGatewayMulticastDomainId &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        subnetIds == other.subnetIds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayMulticastDomainId.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, subnetIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateTransitGatewayMulticastDomainRequestBuilder
    implements
        Builder<DisassociateTransitGatewayMulticastDomainRequest,
            DisassociateTransitGatewayMulticastDomainRequestBuilder> {
  _$DisassociateTransitGatewayMulticastDomainRequest? _$v;

  String? _transitGatewayMulticastDomainId;
  String? get transitGatewayMulticastDomainId =>
      _$this._transitGatewayMulticastDomainId;
  set transitGatewayMulticastDomainId(
          String? transitGatewayMulticastDomainId) =>
      _$this._transitGatewayMulticastDomainId = transitGatewayMulticastDomainId;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  _i3.ListBuilder<String>? _subnetIds;
  _i3.ListBuilder<String> get subnetIds =>
      _$this._subnetIds ??= new _i3.ListBuilder<String>();
  set subnetIds(_i3.ListBuilder<String>? subnetIds) =>
      _$this._subnetIds = subnetIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisassociateTransitGatewayMulticastDomainRequestBuilder() {
    DisassociateTransitGatewayMulticastDomainRequest._init(this);
  }

  DisassociateTransitGatewayMulticastDomainRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomainId = $v.transitGatewayMulticastDomainId;
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _subnetIds = $v.subnetIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateTransitGatewayMulticastDomainRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateTransitGatewayMulticastDomainRequest;
  }

  @override
  void update(
      void Function(DisassociateTransitGatewayMulticastDomainRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateTransitGatewayMulticastDomainRequest build() => _build();

  _$DisassociateTransitGatewayMulticastDomainRequest _build() {
    _$DisassociateTransitGatewayMulticastDomainRequest _$result;
    try {
      _$result = _$v ??
          new _$DisassociateTransitGatewayMulticastDomainRequest._(
              transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
              transitGatewayAttachmentId: transitGatewayAttachmentId,
              subnetIds: _subnetIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'DisassociateTransitGatewayMulticastDomainRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subnetIds';
        _subnetIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisassociateTransitGatewayMulticastDomainRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
