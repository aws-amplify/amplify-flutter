// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_connect_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayConnectResult
    extends DeleteTransitGatewayConnectResult {
  @override
  final TransitGatewayConnect? transitGatewayConnect;

  factory _$DeleteTransitGatewayConnectResult(
          [void Function(DeleteTransitGatewayConnectResultBuilder)? updates]) =>
      (new DeleteTransitGatewayConnectResultBuilder()..update(updates))
          ._build();

  _$DeleteTransitGatewayConnectResult._({this.transitGatewayConnect})
      : super._();

  @override
  DeleteTransitGatewayConnectResult rebuild(
          void Function(DeleteTransitGatewayConnectResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayConnectResultBuilder toBuilder() =>
      new DeleteTransitGatewayConnectResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayConnectResult &&
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

class DeleteTransitGatewayConnectResultBuilder
    implements
        Builder<DeleteTransitGatewayConnectResult,
            DeleteTransitGatewayConnectResultBuilder> {
  _$DeleteTransitGatewayConnectResult? _$v;

  TransitGatewayConnectBuilder? _transitGatewayConnect;
  TransitGatewayConnectBuilder get transitGatewayConnect =>
      _$this._transitGatewayConnect ??= new TransitGatewayConnectBuilder();
  set transitGatewayConnect(
          TransitGatewayConnectBuilder? transitGatewayConnect) =>
      _$this._transitGatewayConnect = transitGatewayConnect;

  DeleteTransitGatewayConnectResultBuilder();

  DeleteTransitGatewayConnectResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayConnect = $v.transitGatewayConnect?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayConnectResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayConnectResult;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayConnectResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayConnectResult build() => _build();

  _$DeleteTransitGatewayConnectResult _build() {
    _$DeleteTransitGatewayConnectResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteTransitGatewayConnectResult._(
              transitGatewayConnect: _transitGatewayConnect?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayConnect';
        _transitGatewayConnect?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteTransitGatewayConnectResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
