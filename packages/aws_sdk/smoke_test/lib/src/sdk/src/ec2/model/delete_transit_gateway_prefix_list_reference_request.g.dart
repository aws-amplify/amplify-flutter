// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_prefix_list_reference_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayPrefixListReferenceRequest
    extends DeleteTransitGatewayPrefixListReferenceRequest {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final String? prefixListId;
  @override
  final bool dryRun;

  factory _$DeleteTransitGatewayPrefixListReferenceRequest(
          [void Function(DeleteTransitGatewayPrefixListReferenceRequestBuilder)?
              updates]) =>
      (new DeleteTransitGatewayPrefixListReferenceRequestBuilder()
            ..update(updates))
          ._build();

  _$DeleteTransitGatewayPrefixListReferenceRequest._(
      {this.transitGatewayRouteTableId,
      this.prefixListId,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteTransitGatewayPrefixListReferenceRequest', 'dryRun');
  }

  @override
  DeleteTransitGatewayPrefixListReferenceRequest rebuild(
          void Function(DeleteTransitGatewayPrefixListReferenceRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayPrefixListReferenceRequestBuilder toBuilder() =>
      new DeleteTransitGatewayPrefixListReferenceRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayPrefixListReferenceRequest &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        prefixListId == other.prefixListId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTransitGatewayPrefixListReferenceRequestBuilder
    implements
        Builder<DeleteTransitGatewayPrefixListReferenceRequest,
            DeleteTransitGatewayPrefixListReferenceRequestBuilder> {
  _$DeleteTransitGatewayPrefixListReferenceRequest? _$v;

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

  String? _prefixListId;
  String? get prefixListId => _$this._prefixListId;
  set prefixListId(String? prefixListId) => _$this._prefixListId = prefixListId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteTransitGatewayPrefixListReferenceRequestBuilder() {
    DeleteTransitGatewayPrefixListReferenceRequest._init(this);
  }

  DeleteTransitGatewayPrefixListReferenceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _prefixListId = $v.prefixListId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayPrefixListReferenceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayPrefixListReferenceRequest;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayPrefixListReferenceRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayPrefixListReferenceRequest build() => _build();

  _$DeleteTransitGatewayPrefixListReferenceRequest _build() {
    final _$result = _$v ??
        new _$DeleteTransitGatewayPrefixListReferenceRequest._(
            transitGatewayRouteTableId: transitGatewayRouteTableId,
            prefixListId: prefixListId,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'DeleteTransitGatewayPrefixListReferenceRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
