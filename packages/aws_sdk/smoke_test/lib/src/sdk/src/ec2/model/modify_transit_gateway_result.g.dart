// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_transit_gateway_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyTransitGatewayResult extends ModifyTransitGatewayResult {
  @override
  final TransitGateway? transitGateway;

  factory _$ModifyTransitGatewayResult(
          [void Function(ModifyTransitGatewayResultBuilder)? updates]) =>
      (new ModifyTransitGatewayResultBuilder()..update(updates))._build();

  _$ModifyTransitGatewayResult._({this.transitGateway}) : super._();

  @override
  ModifyTransitGatewayResult rebuild(
          void Function(ModifyTransitGatewayResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyTransitGatewayResultBuilder toBuilder() =>
      new ModifyTransitGatewayResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyTransitGatewayResult &&
        transitGateway == other.transitGateway;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGateway.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyTransitGatewayResultBuilder
    implements
        Builder<ModifyTransitGatewayResult, ModifyTransitGatewayResultBuilder> {
  _$ModifyTransitGatewayResult? _$v;

  TransitGatewayBuilder? _transitGateway;
  TransitGatewayBuilder get transitGateway =>
      _$this._transitGateway ??= new TransitGatewayBuilder();
  set transitGateway(TransitGatewayBuilder? transitGateway) =>
      _$this._transitGateway = transitGateway;

  ModifyTransitGatewayResultBuilder();

  ModifyTransitGatewayResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGateway = $v.transitGateway?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyTransitGatewayResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyTransitGatewayResult;
  }

  @override
  void update(void Function(ModifyTransitGatewayResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyTransitGatewayResult build() => _build();

  _$ModifyTransitGatewayResult _build() {
    _$ModifyTransitGatewayResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyTransitGatewayResult._(
              transitGateway: _transitGateway?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGateway';
        _transitGateway?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyTransitGatewayResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
