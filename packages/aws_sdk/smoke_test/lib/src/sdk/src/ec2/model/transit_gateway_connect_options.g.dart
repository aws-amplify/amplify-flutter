// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_connect_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayConnectOptions extends TransitGatewayConnectOptions {
  @override
  final ProtocolValue? protocol;

  factory _$TransitGatewayConnectOptions(
          [void Function(TransitGatewayConnectOptionsBuilder)? updates]) =>
      (new TransitGatewayConnectOptionsBuilder()..update(updates))._build();

  _$TransitGatewayConnectOptions._({this.protocol}) : super._();

  @override
  TransitGatewayConnectOptions rebuild(
          void Function(TransitGatewayConnectOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayConnectOptionsBuilder toBuilder() =>
      new TransitGatewayConnectOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayConnectOptions && protocol == other.protocol;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayConnectOptionsBuilder
    implements
        Builder<TransitGatewayConnectOptions,
            TransitGatewayConnectOptionsBuilder> {
  _$TransitGatewayConnectOptions? _$v;

  ProtocolValue? _protocol;
  ProtocolValue? get protocol => _$this._protocol;
  set protocol(ProtocolValue? protocol) => _$this._protocol = protocol;

  TransitGatewayConnectOptionsBuilder();

  TransitGatewayConnectOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _protocol = $v.protocol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayConnectOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayConnectOptions;
  }

  @override
  void update(void Function(TransitGatewayConnectOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayConnectOptions build() => _build();

  _$TransitGatewayConnectOptions _build() {
    final _$result =
        _$v ?? new _$TransitGatewayConnectOptions._(protocol: protocol);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
