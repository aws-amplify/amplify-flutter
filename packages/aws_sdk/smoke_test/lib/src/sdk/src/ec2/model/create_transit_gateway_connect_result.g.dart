// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_connect_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayConnectResult
    extends CreateTransitGatewayConnectResult {
  @override
  final TransitGatewayConnect? transitGatewayConnect;

  factory _$CreateTransitGatewayConnectResult(
          [void Function(CreateTransitGatewayConnectResultBuilder)? updates]) =>
      (new CreateTransitGatewayConnectResultBuilder()..update(updates))
          ._build();

  _$CreateTransitGatewayConnectResult._({this.transitGatewayConnect})
      : super._();

  @override
  CreateTransitGatewayConnectResult rebuild(
          void Function(CreateTransitGatewayConnectResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayConnectResultBuilder toBuilder() =>
      new CreateTransitGatewayConnectResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayConnectResult &&
        transitGatewayConnect == other.transitGatewayConnect;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayConnect.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayConnectResultBuilder
    implements
        Builder<CreateTransitGatewayConnectResult,
            CreateTransitGatewayConnectResultBuilder> {
  _$CreateTransitGatewayConnectResult? _$v;

  TransitGatewayConnectBuilder? _transitGatewayConnect;
  TransitGatewayConnectBuilder get transitGatewayConnect =>
      _$this._transitGatewayConnect ??= new TransitGatewayConnectBuilder();
  set transitGatewayConnect(
          TransitGatewayConnectBuilder? transitGatewayConnect) =>
      _$this._transitGatewayConnect = transitGatewayConnect;

  CreateTransitGatewayConnectResultBuilder();

  CreateTransitGatewayConnectResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayConnect = $v.transitGatewayConnect?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayConnectResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayConnectResult;
  }

  @override
  void update(
      void Function(CreateTransitGatewayConnectResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayConnectResult build() => _build();

  _$CreateTransitGatewayConnectResult _build() {
    _$CreateTransitGatewayConnectResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayConnectResult._(
              transitGatewayConnect: _transitGatewayConnect?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayConnect';
        _transitGatewayConnect?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayConnectResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
