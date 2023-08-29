// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_route_table_announcement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayRouteTableAnnouncement
    extends TransitGatewayRouteTableAnnouncement {
  @override
  final String? transitGatewayRouteTableAnnouncementId;
  @override
  final String? transitGatewayId;
  @override
  final String? coreNetworkId;
  @override
  final String? peerTransitGatewayId;
  @override
  final String? peerCoreNetworkId;
  @override
  final String? peeringAttachmentId;
  @override
  final TransitGatewayRouteTableAnnouncementDirection? announcementDirection;
  @override
  final String? transitGatewayRouteTableId;
  @override
  final TransitGatewayRouteTableAnnouncementState? state;
  @override
  final DateTime? creationTime;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$TransitGatewayRouteTableAnnouncement(
          [void Function(TransitGatewayRouteTableAnnouncementBuilder)?
              updates]) =>
      (new TransitGatewayRouteTableAnnouncementBuilder()..update(updates))
          ._build();

  _$TransitGatewayRouteTableAnnouncement._(
      {this.transitGatewayRouteTableAnnouncementId,
      this.transitGatewayId,
      this.coreNetworkId,
      this.peerTransitGatewayId,
      this.peerCoreNetworkId,
      this.peeringAttachmentId,
      this.announcementDirection,
      this.transitGatewayRouteTableId,
      this.state,
      this.creationTime,
      this.tags})
      : super._();

  @override
  TransitGatewayRouteTableAnnouncement rebuild(
          void Function(TransitGatewayRouteTableAnnouncementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayRouteTableAnnouncementBuilder toBuilder() =>
      new TransitGatewayRouteTableAnnouncementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayRouteTableAnnouncement &&
        transitGatewayRouteTableAnnouncementId ==
            other.transitGatewayRouteTableAnnouncementId &&
        transitGatewayId == other.transitGatewayId &&
        coreNetworkId == other.coreNetworkId &&
        peerTransitGatewayId == other.peerTransitGatewayId &&
        peerCoreNetworkId == other.peerCoreNetworkId &&
        peeringAttachmentId == other.peeringAttachmentId &&
        announcementDirection == other.announcementDirection &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        state == other.state &&
        creationTime == other.creationTime &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableAnnouncementId.hashCode);
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, coreNetworkId.hashCode);
    _$hash = $jc(_$hash, peerTransitGatewayId.hashCode);
    _$hash = $jc(_$hash, peerCoreNetworkId.hashCode);
    _$hash = $jc(_$hash, peeringAttachmentId.hashCode);
    _$hash = $jc(_$hash, announcementDirection.hashCode);
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayRouteTableAnnouncementBuilder
    implements
        Builder<TransitGatewayRouteTableAnnouncement,
            TransitGatewayRouteTableAnnouncementBuilder> {
  _$TransitGatewayRouteTableAnnouncement? _$v;

  String? _transitGatewayRouteTableAnnouncementId;
  String? get transitGatewayRouteTableAnnouncementId =>
      _$this._transitGatewayRouteTableAnnouncementId;
  set transitGatewayRouteTableAnnouncementId(
          String? transitGatewayRouteTableAnnouncementId) =>
      _$this._transitGatewayRouteTableAnnouncementId =
          transitGatewayRouteTableAnnouncementId;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  String? _coreNetworkId;
  String? get coreNetworkId => _$this._coreNetworkId;
  set coreNetworkId(String? coreNetworkId) =>
      _$this._coreNetworkId = coreNetworkId;

  String? _peerTransitGatewayId;
  String? get peerTransitGatewayId => _$this._peerTransitGatewayId;
  set peerTransitGatewayId(String? peerTransitGatewayId) =>
      _$this._peerTransitGatewayId = peerTransitGatewayId;

  String? _peerCoreNetworkId;
  String? get peerCoreNetworkId => _$this._peerCoreNetworkId;
  set peerCoreNetworkId(String? peerCoreNetworkId) =>
      _$this._peerCoreNetworkId = peerCoreNetworkId;

  String? _peeringAttachmentId;
  String? get peeringAttachmentId => _$this._peeringAttachmentId;
  set peeringAttachmentId(String? peeringAttachmentId) =>
      _$this._peeringAttachmentId = peeringAttachmentId;

  TransitGatewayRouteTableAnnouncementDirection? _announcementDirection;
  TransitGatewayRouteTableAnnouncementDirection? get announcementDirection =>
      _$this._announcementDirection;
  set announcementDirection(
          TransitGatewayRouteTableAnnouncementDirection?
              announcementDirection) =>
      _$this._announcementDirection = announcementDirection;

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

  TransitGatewayRouteTableAnnouncementState? _state;
  TransitGatewayRouteTableAnnouncementState? get state => _$this._state;
  set state(TransitGatewayRouteTableAnnouncementState? state) =>
      _$this._state = state;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  TransitGatewayRouteTableAnnouncementBuilder();

  TransitGatewayRouteTableAnnouncementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableAnnouncementId =
          $v.transitGatewayRouteTableAnnouncementId;
      _transitGatewayId = $v.transitGatewayId;
      _coreNetworkId = $v.coreNetworkId;
      _peerTransitGatewayId = $v.peerTransitGatewayId;
      _peerCoreNetworkId = $v.peerCoreNetworkId;
      _peeringAttachmentId = $v.peeringAttachmentId;
      _announcementDirection = $v.announcementDirection;
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _state = $v.state;
      _creationTime = $v.creationTime;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayRouteTableAnnouncement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayRouteTableAnnouncement;
  }

  @override
  void update(
      void Function(TransitGatewayRouteTableAnnouncementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayRouteTableAnnouncement build() => _build();

  _$TransitGatewayRouteTableAnnouncement _build() {
    _$TransitGatewayRouteTableAnnouncement _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayRouteTableAnnouncement._(
              transitGatewayRouteTableAnnouncementId:
                  transitGatewayRouteTableAnnouncementId,
              transitGatewayId: transitGatewayId,
              coreNetworkId: coreNetworkId,
              peerTransitGatewayId: peerTransitGatewayId,
              peerCoreNetworkId: peerCoreNetworkId,
              peeringAttachmentId: peeringAttachmentId,
              announcementDirection: announcementDirection,
              transitGatewayRouteTableId: transitGatewayRouteTableId,
              state: state,
              creationTime: creationTime,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayRouteTableAnnouncement',
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
