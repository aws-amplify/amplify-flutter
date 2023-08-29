// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_route_table_announcement_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayRouteTableAnnouncementResult
    extends CreateTransitGatewayRouteTableAnnouncementResult {
  @override
  final TransitGatewayRouteTableAnnouncement?
      transitGatewayRouteTableAnnouncement;

  factory _$CreateTransitGatewayRouteTableAnnouncementResult(
          [void Function(
                  CreateTransitGatewayRouteTableAnnouncementResultBuilder)?
              updates]) =>
      (new CreateTransitGatewayRouteTableAnnouncementResultBuilder()
            ..update(updates))
          ._build();

  _$CreateTransitGatewayRouteTableAnnouncementResult._(
      {this.transitGatewayRouteTableAnnouncement})
      : super._();

  @override
  CreateTransitGatewayRouteTableAnnouncementResult rebuild(
          void Function(CreateTransitGatewayRouteTableAnnouncementResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayRouteTableAnnouncementResultBuilder toBuilder() =>
      new CreateTransitGatewayRouteTableAnnouncementResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayRouteTableAnnouncementResult &&
        transitGatewayRouteTableAnnouncement ==
            other.transitGatewayRouteTableAnnouncement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableAnnouncement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayRouteTableAnnouncementResultBuilder
    implements
        Builder<CreateTransitGatewayRouteTableAnnouncementResult,
            CreateTransitGatewayRouteTableAnnouncementResultBuilder> {
  _$CreateTransitGatewayRouteTableAnnouncementResult? _$v;

  TransitGatewayRouteTableAnnouncementBuilder?
      _transitGatewayRouteTableAnnouncement;
  TransitGatewayRouteTableAnnouncementBuilder
      get transitGatewayRouteTableAnnouncement =>
          _$this._transitGatewayRouteTableAnnouncement ??=
              new TransitGatewayRouteTableAnnouncementBuilder();
  set transitGatewayRouteTableAnnouncement(
          TransitGatewayRouteTableAnnouncementBuilder?
              transitGatewayRouteTableAnnouncement) =>
      _$this._transitGatewayRouteTableAnnouncement =
          transitGatewayRouteTableAnnouncement;

  CreateTransitGatewayRouteTableAnnouncementResultBuilder();

  CreateTransitGatewayRouteTableAnnouncementResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableAnnouncement =
          $v.transitGatewayRouteTableAnnouncement?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayRouteTableAnnouncementResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayRouteTableAnnouncementResult;
  }

  @override
  void update(
      void Function(CreateTransitGatewayRouteTableAnnouncementResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayRouteTableAnnouncementResult build() => _build();

  _$CreateTransitGatewayRouteTableAnnouncementResult _build() {
    _$CreateTransitGatewayRouteTableAnnouncementResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayRouteTableAnnouncementResult._(
              transitGatewayRouteTableAnnouncement:
                  _transitGatewayRouteTableAnnouncement?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayRouteTableAnnouncement';
        _transitGatewayRouteTableAnnouncement?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayRouteTableAnnouncementResult',
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
