// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_peering_attachment_request_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayPeeringAttachmentRequestOptions
    extends CreateTransitGatewayPeeringAttachmentRequestOptions {
  @override
  final DynamicRoutingValue? dynamicRouting;

  factory _$CreateTransitGatewayPeeringAttachmentRequestOptions(
          [void Function(
                  CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder)?
              updates]) =>
      (new CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder()
            ..update(updates))
          ._build();

  _$CreateTransitGatewayPeeringAttachmentRequestOptions._({this.dynamicRouting})
      : super._();

  @override
  CreateTransitGatewayPeeringAttachmentRequestOptions rebuild(
          void Function(
                  CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder toBuilder() =>
      new CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayPeeringAttachmentRequestOptions &&
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

class CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder
    implements
        Builder<CreateTransitGatewayPeeringAttachmentRequestOptions,
            CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder> {
  _$CreateTransitGatewayPeeringAttachmentRequestOptions? _$v;

  DynamicRoutingValue? _dynamicRouting;
  DynamicRoutingValue? get dynamicRouting => _$this._dynamicRouting;
  set dynamicRouting(DynamicRoutingValue? dynamicRouting) =>
      _$this._dynamicRouting = dynamicRouting;

  CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder();

  CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dynamicRouting = $v.dynamicRouting;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayPeeringAttachmentRequestOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayPeeringAttachmentRequestOptions;
  }

  @override
  void update(
      void Function(CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayPeeringAttachmentRequestOptions build() => _build();

  _$CreateTransitGatewayPeeringAttachmentRequestOptions _build() {
    final _$result = _$v ??
        new _$CreateTransitGatewayPeeringAttachmentRequestOptions._(
            dynamicRouting: dynamicRouting);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
