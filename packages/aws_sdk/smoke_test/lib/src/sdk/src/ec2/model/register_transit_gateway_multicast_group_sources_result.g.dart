// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_transit_gateway_multicast_group_sources_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterTransitGatewayMulticastGroupSourcesResult
    extends RegisterTransitGatewayMulticastGroupSourcesResult {
  @override
  final TransitGatewayMulticastRegisteredGroupSources?
      registeredMulticastGroupSources;

  factory _$RegisterTransitGatewayMulticastGroupSourcesResult(
          [void Function(
                  RegisterTransitGatewayMulticastGroupSourcesResultBuilder)?
              updates]) =>
      (new RegisterTransitGatewayMulticastGroupSourcesResultBuilder()
            ..update(updates))
          ._build();

  _$RegisterTransitGatewayMulticastGroupSourcesResult._(
      {this.registeredMulticastGroupSources})
      : super._();

  @override
  RegisterTransitGatewayMulticastGroupSourcesResult rebuild(
          void Function(
                  RegisterTransitGatewayMulticastGroupSourcesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterTransitGatewayMulticastGroupSourcesResultBuilder toBuilder() =>
      new RegisterTransitGatewayMulticastGroupSourcesResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterTransitGatewayMulticastGroupSourcesResult &&
        registeredMulticastGroupSources ==
            other.registeredMulticastGroupSources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, registeredMulticastGroupSources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RegisterTransitGatewayMulticastGroupSourcesResultBuilder
    implements
        Builder<RegisterTransitGatewayMulticastGroupSourcesResult,
            RegisterTransitGatewayMulticastGroupSourcesResultBuilder> {
  _$RegisterTransitGatewayMulticastGroupSourcesResult? _$v;

  TransitGatewayMulticastRegisteredGroupSourcesBuilder?
      _registeredMulticastGroupSources;
  TransitGatewayMulticastRegisteredGroupSourcesBuilder
      get registeredMulticastGroupSources =>
          _$this._registeredMulticastGroupSources ??=
              new TransitGatewayMulticastRegisteredGroupSourcesBuilder();
  set registeredMulticastGroupSources(
          TransitGatewayMulticastRegisteredGroupSourcesBuilder?
              registeredMulticastGroupSources) =>
      _$this._registeredMulticastGroupSources = registeredMulticastGroupSources;

  RegisterTransitGatewayMulticastGroupSourcesResultBuilder();

  RegisterTransitGatewayMulticastGroupSourcesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _registeredMulticastGroupSources =
          $v.registeredMulticastGroupSources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterTransitGatewayMulticastGroupSourcesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterTransitGatewayMulticastGroupSourcesResult;
  }

  @override
  void update(
      void Function(RegisterTransitGatewayMulticastGroupSourcesResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterTransitGatewayMulticastGroupSourcesResult build() => _build();

  _$RegisterTransitGatewayMulticastGroupSourcesResult _build() {
    _$RegisterTransitGatewayMulticastGroupSourcesResult _$result;
    try {
      _$result = _$v ??
          new _$RegisterTransitGatewayMulticastGroupSourcesResult._(
              registeredMulticastGroupSources:
                  _registeredMulticastGroupSources?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'registeredMulticastGroupSources';
        _registeredMulticastGroupSources?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RegisterTransitGatewayMulticastGroupSourcesResult',
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
