// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_peering_attachment_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayPeeringAttachmentOptions
    extends TransitGatewayPeeringAttachmentOptions {
  @override
  final DynamicRoutingValue? dynamicRouting;

  factory _$TransitGatewayPeeringAttachmentOptions(
          [void Function(TransitGatewayPeeringAttachmentOptionsBuilder)?
              updates]) =>
      (new TransitGatewayPeeringAttachmentOptionsBuilder()..update(updates))
          ._build();

  _$TransitGatewayPeeringAttachmentOptions._({this.dynamicRouting}) : super._();

  @override
  TransitGatewayPeeringAttachmentOptions rebuild(
          void Function(TransitGatewayPeeringAttachmentOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayPeeringAttachmentOptionsBuilder toBuilder() =>
      new TransitGatewayPeeringAttachmentOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayPeeringAttachmentOptions &&
        dynamicRouting == other.dynamicRouting;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dynamicRouting.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayPeeringAttachmentOptionsBuilder
    implements
        Builder<TransitGatewayPeeringAttachmentOptions,
            TransitGatewayPeeringAttachmentOptionsBuilder> {
  _$TransitGatewayPeeringAttachmentOptions? _$v;

  DynamicRoutingValue? _dynamicRouting;
  DynamicRoutingValue? get dynamicRouting => _$this._dynamicRouting;
  set dynamicRouting(DynamicRoutingValue? dynamicRouting) =>
      _$this._dynamicRouting = dynamicRouting;

  TransitGatewayPeeringAttachmentOptionsBuilder();

  TransitGatewayPeeringAttachmentOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dynamicRouting = $v.dynamicRouting;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayPeeringAttachmentOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayPeeringAttachmentOptions;
  }

  @override
  void update(
      void Function(TransitGatewayPeeringAttachmentOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayPeeringAttachmentOptions build() => _build();

  _$TransitGatewayPeeringAttachmentOptions _build() {
    final _$result = _$v ??
        new _$TransitGatewayPeeringAttachmentOptions._(
            dynamicRouting: dynamicRouting);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
