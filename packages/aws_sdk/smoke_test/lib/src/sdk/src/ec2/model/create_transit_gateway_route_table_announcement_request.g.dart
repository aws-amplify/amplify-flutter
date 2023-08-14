// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_route_table_announcement_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayRouteTableAnnouncementRequest
    extends CreateTransitGatewayRouteTableAnnouncementRequest {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final String? peeringAttachmentId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateTransitGatewayRouteTableAnnouncementRequest(
          [void Function(
                  CreateTransitGatewayRouteTableAnnouncementRequestBuilder)?
              updates]) =>
      (new CreateTransitGatewayRouteTableAnnouncementRequestBuilder()
            ..update(updates))
          ._build();

  _$CreateTransitGatewayRouteTableAnnouncementRequest._(
      {this.transitGatewayRouteTableId,
      this.peeringAttachmentId,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTransitGatewayRouteTableAnnouncementRequest', 'dryRun');
  }

  @override
  CreateTransitGatewayRouteTableAnnouncementRequest rebuild(
          void Function(
                  CreateTransitGatewayRouteTableAnnouncementRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayRouteTableAnnouncementRequestBuilder toBuilder() =>
      new CreateTransitGatewayRouteTableAnnouncementRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayRouteTableAnnouncementRequest &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        peeringAttachmentId == other.peeringAttachmentId &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, peeringAttachmentId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayRouteTableAnnouncementRequestBuilder
    implements
        Builder<CreateTransitGatewayRouteTableAnnouncementRequest,
            CreateTransitGatewayRouteTableAnnouncementRequestBuilder> {
  _$CreateTransitGatewayRouteTableAnnouncementRequest? _$v;

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

  String? _peeringAttachmentId;
  String? get peeringAttachmentId => _$this._peeringAttachmentId;
  set peeringAttachmentId(String? peeringAttachmentId) =>
      _$this._peeringAttachmentId = peeringAttachmentId;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateTransitGatewayRouteTableAnnouncementRequestBuilder() {
    CreateTransitGatewayRouteTableAnnouncementRequest._init(this);
  }

  CreateTransitGatewayRouteTableAnnouncementRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _peeringAttachmentId = $v.peeringAttachmentId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayRouteTableAnnouncementRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayRouteTableAnnouncementRequest;
  }

  @override
  void update(
      void Function(CreateTransitGatewayRouteTableAnnouncementRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayRouteTableAnnouncementRequest build() => _build();

  _$CreateTransitGatewayRouteTableAnnouncementRequest _build() {
    _$CreateTransitGatewayRouteTableAnnouncementRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayRouteTableAnnouncementRequest._(
              transitGatewayRouteTableId: transitGatewayRouteTableId,
              peeringAttachmentId: peeringAttachmentId,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'CreateTransitGatewayRouteTableAnnouncementRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayRouteTableAnnouncementRequest',
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
