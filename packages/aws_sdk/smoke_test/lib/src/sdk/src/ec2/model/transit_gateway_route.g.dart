// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_route.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayRoute extends TransitGatewayRoute {
  @override
  final String? destinationCidrBlock;
  @override
  final String? prefixListId;
  @override
  final String? transitGatewayRouteTableAnnouncementId;
  @override
  final _i2.BuiltList<TransitGatewayRouteAttachment>? transitGatewayAttachments;
  @override
  final TransitGatewayRouteType? type;
  @override
  final TransitGatewayRouteState? state;

  factory _$TransitGatewayRoute(
          [void Function(TransitGatewayRouteBuilder)? updates]) =>
      (new TransitGatewayRouteBuilder()..update(updates))._build();

  _$TransitGatewayRoute._(
      {this.destinationCidrBlock,
      this.prefixListId,
      this.transitGatewayRouteTableAnnouncementId,
      this.transitGatewayAttachments,
      this.type,
      this.state})
      : super._();

  @override
  TransitGatewayRoute rebuild(
          void Function(TransitGatewayRouteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayRouteBuilder toBuilder() =>
      new TransitGatewayRouteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayRoute &&
        destinationCidrBlock == other.destinationCidrBlock &&
        prefixListId == other.prefixListId &&
        transitGatewayRouteTableAnnouncementId ==
            other.transitGatewayRouteTableAnnouncementId &&
        transitGatewayAttachments == other.transitGatewayAttachments &&
        type == other.type &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jc(_$hash, transitGatewayRouteTableAnnouncementId.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachments.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayRouteBuilder
    implements Builder<TransitGatewayRoute, TransitGatewayRouteBuilder> {
  _$TransitGatewayRoute? _$v;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  String? _prefixListId;
  String? get prefixListId => _$this._prefixListId;
  set prefixListId(String? prefixListId) => _$this._prefixListId = prefixListId;

  String? _transitGatewayRouteTableAnnouncementId;
  String? get transitGatewayRouteTableAnnouncementId =>
      _$this._transitGatewayRouteTableAnnouncementId;
  set transitGatewayRouteTableAnnouncementId(
          String? transitGatewayRouteTableAnnouncementId) =>
      _$this._transitGatewayRouteTableAnnouncementId =
          transitGatewayRouteTableAnnouncementId;

  _i2.ListBuilder<TransitGatewayRouteAttachment>? _transitGatewayAttachments;
  _i2.ListBuilder<TransitGatewayRouteAttachment>
      get transitGatewayAttachments => _$this._transitGatewayAttachments ??=
          new _i2.ListBuilder<TransitGatewayRouteAttachment>();
  set transitGatewayAttachments(
          _i2.ListBuilder<TransitGatewayRouteAttachment>?
              transitGatewayAttachments) =>
      _$this._transitGatewayAttachments = transitGatewayAttachments;

  TransitGatewayRouteType? _type;
  TransitGatewayRouteType? get type => _$this._type;
  set type(TransitGatewayRouteType? type) => _$this._type = type;

  TransitGatewayRouteState? _state;
  TransitGatewayRouteState? get state => _$this._state;
  set state(TransitGatewayRouteState? state) => _$this._state = state;

  TransitGatewayRouteBuilder();

  TransitGatewayRouteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationCidrBlock = $v.destinationCidrBlock;
      _prefixListId = $v.prefixListId;
      _transitGatewayRouteTableAnnouncementId =
          $v.transitGatewayRouteTableAnnouncementId;
      _transitGatewayAttachments = $v.transitGatewayAttachments?.toBuilder();
      _type = $v.type;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayRoute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayRoute;
  }

  @override
  void update(void Function(TransitGatewayRouteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayRoute build() => _build();

  _$TransitGatewayRoute _build() {
    _$TransitGatewayRoute _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayRoute._(
              destinationCidrBlock: destinationCidrBlock,
              prefixListId: prefixListId,
              transitGatewayRouteTableAnnouncementId:
                  transitGatewayRouteTableAnnouncementId,
              transitGatewayAttachments: _transitGatewayAttachments?.build(),
              type: type,
              state: state);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayAttachments';
        _transitGatewayAttachments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayRoute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
