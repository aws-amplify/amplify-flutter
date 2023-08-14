// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_connect_request_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayConnectRequestOptions
    extends CreateTransitGatewayConnectRequestOptions {
  @override
  final ProtocolValue? protocol;

  factory _$CreateTransitGatewayConnectRequestOptions(
          [void Function(CreateTransitGatewayConnectRequestOptionsBuilder)?
              updates]) =>
      (new CreateTransitGatewayConnectRequestOptionsBuilder()..update(updates))
          ._build();

  _$CreateTransitGatewayConnectRequestOptions._({this.protocol}) : super._();

  @override
  CreateTransitGatewayConnectRequestOptions rebuild(
          void Function(CreateTransitGatewayConnectRequestOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayConnectRequestOptionsBuilder toBuilder() =>
      new CreateTransitGatewayConnectRequestOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayConnectRequestOptions &&
        protocol == other.protocol;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayConnectRequestOptionsBuilder
    implements
        Builder<CreateTransitGatewayConnectRequestOptions,
            CreateTransitGatewayConnectRequestOptionsBuilder> {
  _$CreateTransitGatewayConnectRequestOptions? _$v;

  ProtocolValue? _protocol;
  ProtocolValue? get protocol => _$this._protocol;
  set protocol(ProtocolValue? protocol) => _$this._protocol = protocol;

  CreateTransitGatewayConnectRequestOptionsBuilder();

  CreateTransitGatewayConnectRequestOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _protocol = $v.protocol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayConnectRequestOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayConnectRequestOptions;
  }

  @override
  void update(
      void Function(CreateTransitGatewayConnectRequestOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayConnectRequestOptions build() => _build();

  _$CreateTransitGatewayConnectRequestOptions _build() {
    final _$result = _$v ??
        new _$CreateTransitGatewayConnectRequestOptions._(protocol: protocol);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
