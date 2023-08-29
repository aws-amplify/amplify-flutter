// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayResult extends DeleteTransitGatewayResult {
  @override
  final TransitGateway? transitGateway;

  factory _$DeleteTransitGatewayResult(
          [void Function(DeleteTransitGatewayResultBuilder)? updates]) =>
      (new DeleteTransitGatewayResultBuilder()..update(updates))._build();

  _$DeleteTransitGatewayResult._({this.transitGateway}) : super._();

  @override
  DeleteTransitGatewayResult rebuild(
          void Function(DeleteTransitGatewayResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayResultBuilder toBuilder() =>
      new DeleteTransitGatewayResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayResult &&
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

class DeleteTransitGatewayResultBuilder
    implements
        Builder<DeleteTransitGatewayResult, DeleteTransitGatewayResultBuilder> {
  _$DeleteTransitGatewayResult? _$v;

  TransitGatewayBuilder? _transitGateway;
  TransitGatewayBuilder get transitGateway =>
      _$this._transitGateway ??= new TransitGatewayBuilder();
  set transitGateway(TransitGatewayBuilder? transitGateway) =>
      _$this._transitGateway = transitGateway;

  DeleteTransitGatewayResultBuilder();

  DeleteTransitGatewayResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGateway = $v.transitGateway?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayResult;
  }

  @override
  void update(void Function(DeleteTransitGatewayResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayResult build() => _build();

  _$DeleteTransitGatewayResult _build() {
    _$DeleteTransitGatewayResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteTransitGatewayResult._(
              transitGateway: _transitGateway?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGateway';
        _transitGateway?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteTransitGatewayResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
