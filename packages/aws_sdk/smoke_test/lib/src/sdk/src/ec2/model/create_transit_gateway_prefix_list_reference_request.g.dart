// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_prefix_list_reference_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayPrefixListReferenceRequest
    extends CreateTransitGatewayPrefixListReferenceRequest {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final String? prefixListId;
  @override
  final String? transitGatewayAttachmentId;
  @override
  final bool blackhole;
  @override
  final bool dryRun;

  factory _$CreateTransitGatewayPrefixListReferenceRequest(
          [void Function(CreateTransitGatewayPrefixListReferenceRequestBuilder)?
              updates]) =>
      (new CreateTransitGatewayPrefixListReferenceRequestBuilder()
            ..update(updates))
          ._build();

  _$CreateTransitGatewayPrefixListReferenceRequest._(
      {this.transitGatewayRouteTableId,
      this.prefixListId,
      this.transitGatewayAttachmentId,
      required this.blackhole,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(blackhole,
        r'CreateTransitGatewayPrefixListReferenceRequest', 'blackhole');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTransitGatewayPrefixListReferenceRequest', 'dryRun');
  }

  @override
  CreateTransitGatewayPrefixListReferenceRequest rebuild(
          void Function(CreateTransitGatewayPrefixListReferenceRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayPrefixListReferenceRequestBuilder toBuilder() =>
      new CreateTransitGatewayPrefixListReferenceRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayPrefixListReferenceRequest &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        prefixListId == other.prefixListId &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        blackhole == other.blackhole &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, blackhole.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayPrefixListReferenceRequestBuilder
    implements
        Builder<CreateTransitGatewayPrefixListReferenceRequest,
            CreateTransitGatewayPrefixListReferenceRequestBuilder> {
  _$CreateTransitGatewayPrefixListReferenceRequest? _$v;

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

  String? _prefixListId;
  String? get prefixListId => _$this._prefixListId;
  set prefixListId(String? prefixListId) => _$this._prefixListId = prefixListId;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  bool? _blackhole;
  bool? get blackhole => _$this._blackhole;
  set blackhole(bool? blackhole) => _$this._blackhole = blackhole;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateTransitGatewayPrefixListReferenceRequestBuilder() {
    CreateTransitGatewayPrefixListReferenceRequest._init(this);
  }

  CreateTransitGatewayPrefixListReferenceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _prefixListId = $v.prefixListId;
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _blackhole = $v.blackhole;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayPrefixListReferenceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayPrefixListReferenceRequest;
  }

  @override
  void update(
      void Function(CreateTransitGatewayPrefixListReferenceRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayPrefixListReferenceRequest build() => _build();

  _$CreateTransitGatewayPrefixListReferenceRequest _build() {
    final _$result = _$v ??
        new _$CreateTransitGatewayPrefixListReferenceRequest._(
            transitGatewayRouteTableId: transitGatewayRouteTableId,
            prefixListId: prefixListId,
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            blackhole: BuiltValueNullFieldError.checkNotNull(blackhole,
                r'CreateTransitGatewayPrefixListReferenceRequest', 'blackhole'),
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'CreateTransitGatewayPrefixListReferenceRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
