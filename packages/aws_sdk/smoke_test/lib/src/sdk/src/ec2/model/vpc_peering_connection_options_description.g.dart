// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpc_peering_connection_options_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpcPeeringConnectionOptionsDescription
    extends VpcPeeringConnectionOptionsDescription {
  @override
  final bool allowDnsResolutionFromRemoteVpc;
  @override
  final bool allowEgressFromLocalClassicLinkToRemoteVpc;
  @override
  final bool allowEgressFromLocalVpcToRemoteClassicLink;

  factory _$VpcPeeringConnectionOptionsDescription(
          [void Function(VpcPeeringConnectionOptionsDescriptionBuilder)?
              updates]) =>
      (new VpcPeeringConnectionOptionsDescriptionBuilder()..update(updates))
          ._build();

  _$VpcPeeringConnectionOptionsDescription._(
      {required this.allowDnsResolutionFromRemoteVpc,
      required this.allowEgressFromLocalClassicLinkToRemoteVpc,
      required this.allowEgressFromLocalVpcToRemoteClassicLink})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        allowDnsResolutionFromRemoteVpc,
        r'VpcPeeringConnectionOptionsDescription',
        'allowDnsResolutionFromRemoteVpc');
    BuiltValueNullFieldError.checkNotNull(
        allowEgressFromLocalClassicLinkToRemoteVpc,
        r'VpcPeeringConnectionOptionsDescription',
        'allowEgressFromLocalClassicLinkToRemoteVpc');
    BuiltValueNullFieldError.checkNotNull(
        allowEgressFromLocalVpcToRemoteClassicLink,
        r'VpcPeeringConnectionOptionsDescription',
        'allowEgressFromLocalVpcToRemoteClassicLink');
  }

  @override
  VpcPeeringConnectionOptionsDescription rebuild(
          void Function(VpcPeeringConnectionOptionsDescriptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpcPeeringConnectionOptionsDescriptionBuilder toBuilder() =>
      new VpcPeeringConnectionOptionsDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpcPeeringConnectionOptionsDescription &&
        allowDnsResolutionFromRemoteVpc ==
            other.allowDnsResolutionFromRemoteVpc &&
        allowEgressFromLocalClassicLinkToRemoteVpc ==
            other.allowEgressFromLocalClassicLinkToRemoteVpc &&
        allowEgressFromLocalVpcToRemoteClassicLink ==
            other.allowEgressFromLocalVpcToRemoteClassicLink;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowDnsResolutionFromRemoteVpc.hashCode);
    _$hash = $jc(_$hash, allowEgressFromLocalClassicLinkToRemoteVpc.hashCode);
    _$hash = $jc(_$hash, allowEgressFromLocalVpcToRemoteClassicLink.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpcPeeringConnectionOptionsDescriptionBuilder
    implements
        Builder<VpcPeeringConnectionOptionsDescription,
            VpcPeeringConnectionOptionsDescriptionBuilder> {
  _$VpcPeeringConnectionOptionsDescription? _$v;

  bool? _allowDnsResolutionFromRemoteVpc;
  bool? get allowDnsResolutionFromRemoteVpc =>
      _$this._allowDnsResolutionFromRemoteVpc;
  set allowDnsResolutionFromRemoteVpc(bool? allowDnsResolutionFromRemoteVpc) =>
      _$this._allowDnsResolutionFromRemoteVpc = allowDnsResolutionFromRemoteVpc;

  bool? _allowEgressFromLocalClassicLinkToRemoteVpc;
  bool? get allowEgressFromLocalClassicLinkToRemoteVpc =>
      _$this._allowEgressFromLocalClassicLinkToRemoteVpc;
  set allowEgressFromLocalClassicLinkToRemoteVpc(
          bool? allowEgressFromLocalClassicLinkToRemoteVpc) =>
      _$this._allowEgressFromLocalClassicLinkToRemoteVpc =
          allowEgressFromLocalClassicLinkToRemoteVpc;

  bool? _allowEgressFromLocalVpcToRemoteClassicLink;
  bool? get allowEgressFromLocalVpcToRemoteClassicLink =>
      _$this._allowEgressFromLocalVpcToRemoteClassicLink;
  set allowEgressFromLocalVpcToRemoteClassicLink(
          bool? allowEgressFromLocalVpcToRemoteClassicLink) =>
      _$this._allowEgressFromLocalVpcToRemoteClassicLink =
          allowEgressFromLocalVpcToRemoteClassicLink;

  VpcPeeringConnectionOptionsDescriptionBuilder() {
    VpcPeeringConnectionOptionsDescription._init(this);
  }

  VpcPeeringConnectionOptionsDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowDnsResolutionFromRemoteVpc = $v.allowDnsResolutionFromRemoteVpc;
      _allowEgressFromLocalClassicLinkToRemoteVpc =
          $v.allowEgressFromLocalClassicLinkToRemoteVpc;
      _allowEgressFromLocalVpcToRemoteClassicLink =
          $v.allowEgressFromLocalVpcToRemoteClassicLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpcPeeringConnectionOptionsDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpcPeeringConnectionOptionsDescription;
  }

  @override
  void update(
      void Function(VpcPeeringConnectionOptionsDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpcPeeringConnectionOptionsDescription build() => _build();

  _$VpcPeeringConnectionOptionsDescription _build() {
    final _$result = _$v ??
        new _$VpcPeeringConnectionOptionsDescription._(
            allowDnsResolutionFromRemoteVpc:
                BuiltValueNullFieldError.checkNotNull(
                    allowDnsResolutionFromRemoteVpc,
                    r'VpcPeeringConnectionOptionsDescription',
                    'allowDnsResolutionFromRemoteVpc'),
            allowEgressFromLocalClassicLinkToRemoteVpc:
                BuiltValueNullFieldError.checkNotNull(
                    allowEgressFromLocalClassicLinkToRemoteVpc,
                    r'VpcPeeringConnectionOptionsDescription',
                    'allowEgressFromLocalClassicLinkToRemoteVpc'),
            allowEgressFromLocalVpcToRemoteClassicLink:
                BuiltValueNullFieldError.checkNotNull(
                    allowEgressFromLocalVpcToRemoteClassicLink,
                    r'VpcPeeringConnectionOptionsDescription',
                    'allowEgressFromLocalVpcToRemoteClassicLink'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
