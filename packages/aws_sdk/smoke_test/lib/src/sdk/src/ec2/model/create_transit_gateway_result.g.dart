// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayResult extends CreateTransitGatewayResult {
  @override
  final TransitGateway? transitGateway;

  factory _$CreateTransitGatewayResult(
          [void Function(CreateTransitGatewayResultBuilder)? updates]) =>
      (new CreateTransitGatewayResultBuilder()..update(updates))._build();

  _$CreateTransitGatewayResult._({this.transitGateway}) : super._();

  @override
  CreateTransitGatewayResult rebuild(
          void Function(CreateTransitGatewayResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayResultBuilder toBuilder() =>
      new CreateTransitGatewayResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayResult &&
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

class CreateTransitGatewayResultBuilder
    implements
        Builder<CreateTransitGatewayResult, CreateTransitGatewayResultBuilder> {
  _$CreateTransitGatewayResult? _$v;

  TransitGatewayBuilder? _transitGateway;
  TransitGatewayBuilder get transitGateway =>
      _$this._transitGateway ??= new TransitGatewayBuilder();
  set transitGateway(TransitGatewayBuilder? transitGateway) =>
      _$this._transitGateway = transitGateway;

  CreateTransitGatewayResultBuilder();

  CreateTransitGatewayResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGateway = $v.transitGateway?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayResult;
  }

  @override
  void update(void Function(CreateTransitGatewayResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayResult build() => _build();

  _$CreateTransitGatewayResult _build() {
    _$CreateTransitGatewayResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayResult._(
              transitGateway: _transitGateway?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGateway';
        _transitGateway?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
