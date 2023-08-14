// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_multicast_domain_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayMulticastDomainResult
    extends DeleteTransitGatewayMulticastDomainResult {
  @override
  final TransitGatewayMulticastDomain? transitGatewayMulticastDomain;

  factory _$DeleteTransitGatewayMulticastDomainResult(
          [void Function(DeleteTransitGatewayMulticastDomainResultBuilder)?
              updates]) =>
      (new DeleteTransitGatewayMulticastDomainResultBuilder()..update(updates))
          ._build();

  _$DeleteTransitGatewayMulticastDomainResult._(
      {this.transitGatewayMulticastDomain})
      : super._();

  @override
  DeleteTransitGatewayMulticastDomainResult rebuild(
          void Function(DeleteTransitGatewayMulticastDomainResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayMulticastDomainResultBuilder toBuilder() =>
      new DeleteTransitGatewayMulticastDomainResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayMulticastDomainResult &&
        transitGatewayMulticastDomain == other.transitGatewayMulticastDomain;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayMulticastDomain.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTransitGatewayMulticastDomainResultBuilder
    implements
        Builder<DeleteTransitGatewayMulticastDomainResult,
            DeleteTransitGatewayMulticastDomainResultBuilder> {
  _$DeleteTransitGatewayMulticastDomainResult? _$v;

  TransitGatewayMulticastDomainBuilder? _transitGatewayMulticastDomain;
  TransitGatewayMulticastDomainBuilder get transitGatewayMulticastDomain =>
      _$this._transitGatewayMulticastDomain ??=
          new TransitGatewayMulticastDomainBuilder();
  set transitGatewayMulticastDomain(
          TransitGatewayMulticastDomainBuilder?
              transitGatewayMulticastDomain) =>
      _$this._transitGatewayMulticastDomain = transitGatewayMulticastDomain;

  DeleteTransitGatewayMulticastDomainResultBuilder();

  DeleteTransitGatewayMulticastDomainResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomain =
          $v.transitGatewayMulticastDomain?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayMulticastDomainResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayMulticastDomainResult;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayMulticastDomainResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayMulticastDomainResult build() => _build();

  _$DeleteTransitGatewayMulticastDomainResult _build() {
    _$DeleteTransitGatewayMulticastDomainResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteTransitGatewayMulticastDomainResult._(
              transitGatewayMulticastDomain:
                  _transitGatewayMulticastDomain?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayMulticastDomain';
        _transitGatewayMulticastDomain?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteTransitGatewayMulticastDomainResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
