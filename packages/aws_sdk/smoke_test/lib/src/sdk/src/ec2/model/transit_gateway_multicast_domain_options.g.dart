// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_multicast_domain_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayMulticastDomainOptions
    extends TransitGatewayMulticastDomainOptions {
  @override
  final Igmpv2SupportValue? igmpv2Support;
  @override
  final StaticSourcesSupportValue? staticSourcesSupport;
  @override
  final AutoAcceptSharedAssociationsValue? autoAcceptSharedAssociations;

  factory _$TransitGatewayMulticastDomainOptions(
          [void Function(TransitGatewayMulticastDomainOptionsBuilder)?
              updates]) =>
      (new TransitGatewayMulticastDomainOptionsBuilder()..update(updates))
          ._build();

  _$TransitGatewayMulticastDomainOptions._(
      {this.igmpv2Support,
      this.staticSourcesSupport,
      this.autoAcceptSharedAssociations})
      : super._();

  @override
  TransitGatewayMulticastDomainOptions rebuild(
          void Function(TransitGatewayMulticastDomainOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayMulticastDomainOptionsBuilder toBuilder() =>
      new TransitGatewayMulticastDomainOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayMulticastDomainOptions &&
        igmpv2Support == other.igmpv2Support &&
        staticSourcesSupport == other.staticSourcesSupport &&
        autoAcceptSharedAssociations == other.autoAcceptSharedAssociations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, igmpv2Support.hashCode);
    _$hash = $jc(_$hash, staticSourcesSupport.hashCode);
    _$hash = $jc(_$hash, autoAcceptSharedAssociations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayMulticastDomainOptionsBuilder
    implements
        Builder<TransitGatewayMulticastDomainOptions,
            TransitGatewayMulticastDomainOptionsBuilder> {
  _$TransitGatewayMulticastDomainOptions? _$v;

  Igmpv2SupportValue? _igmpv2Support;
  Igmpv2SupportValue? get igmpv2Support => _$this._igmpv2Support;
  set igmpv2Support(Igmpv2SupportValue? igmpv2Support) =>
      _$this._igmpv2Support = igmpv2Support;

  StaticSourcesSupportValue? _staticSourcesSupport;
  StaticSourcesSupportValue? get staticSourcesSupport =>
      _$this._staticSourcesSupport;
  set staticSourcesSupport(StaticSourcesSupportValue? staticSourcesSupport) =>
      _$this._staticSourcesSupport = staticSourcesSupport;

  AutoAcceptSharedAssociationsValue? _autoAcceptSharedAssociations;
  AutoAcceptSharedAssociationsValue? get autoAcceptSharedAssociations =>
      _$this._autoAcceptSharedAssociations;
  set autoAcceptSharedAssociations(
          AutoAcceptSharedAssociationsValue? autoAcceptSharedAssociations) =>
      _$this._autoAcceptSharedAssociations = autoAcceptSharedAssociations;

  TransitGatewayMulticastDomainOptionsBuilder();

  TransitGatewayMulticastDomainOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _igmpv2Support = $v.igmpv2Support;
      _staticSourcesSupport = $v.staticSourcesSupport;
      _autoAcceptSharedAssociations = $v.autoAcceptSharedAssociations;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayMulticastDomainOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayMulticastDomainOptions;
  }

  @override
  void update(
      void Function(TransitGatewayMulticastDomainOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayMulticastDomainOptions build() => _build();

  _$TransitGatewayMulticastDomainOptions _build() {
    final _$result = _$v ??
        new _$TransitGatewayMulticastDomainOptions._(
            igmpv2Support: igmpv2Support,
            staticSourcesSupport: staticSourcesSupport,
            autoAcceptSharedAssociations: autoAcceptSharedAssociations);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
