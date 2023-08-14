// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_attachment_propagation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayAttachmentPropagation
    extends TransitGatewayAttachmentPropagation {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final TransitGatewayPropagationState? state;

  factory _$TransitGatewayAttachmentPropagation(
          [void Function(TransitGatewayAttachmentPropagationBuilder)?
              updates]) =>
      (new TransitGatewayAttachmentPropagationBuilder()..update(updates))
          ._build();

  _$TransitGatewayAttachmentPropagation._(
      {this.transitGatewayRouteTableId, this.state})
      : super._();

  @override
  TransitGatewayAttachmentPropagation rebuild(
          void Function(TransitGatewayAttachmentPropagationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayAttachmentPropagationBuilder toBuilder() =>
      new TransitGatewayAttachmentPropagationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayAttachmentPropagation &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayAttachmentPropagationBuilder
    implements
        Builder<TransitGatewayAttachmentPropagation,
            TransitGatewayAttachmentPropagationBuilder> {
  _$TransitGatewayAttachmentPropagation? _$v;

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

  TransitGatewayPropagationState? _state;
  TransitGatewayPropagationState? get state => _$this._state;
  set state(TransitGatewayPropagationState? state) => _$this._state = state;

  TransitGatewayAttachmentPropagationBuilder();

  TransitGatewayAttachmentPropagationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayAttachmentPropagation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayAttachmentPropagation;
  }

  @override
  void update(
      void Function(TransitGatewayAttachmentPropagationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayAttachmentPropagation build() => _build();

  _$TransitGatewayAttachmentPropagation _build() {
    final _$result = _$v ??
        new _$TransitGatewayAttachmentPropagation._(
            transitGatewayRouteTableId: transitGatewayRouteTableId,
            state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
