// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peering_connection_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PeeringConnectionOptionsRequest
    extends PeeringConnectionOptionsRequest {
  @override
  final bool allowDnsResolutionFromRemoteVpc;
  @override
  final bool allowEgressFromLocalClassicLinkToRemoteVpc;
  @override
  final bool allowEgressFromLocalVpcToRemoteClassicLink;

  factory _$PeeringConnectionOptionsRequest(
          [void Function(PeeringConnectionOptionsRequestBuilder)? updates]) =>
      (new PeeringConnectionOptionsRequestBuilder()..update(updates))._build();

  _$PeeringConnectionOptionsRequest._(
      {required this.allowDnsResolutionFromRemoteVpc,
      required this.allowEgressFromLocalClassicLinkToRemoteVpc,
      required this.allowEgressFromLocalVpcToRemoteClassicLink})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(allowDnsResolutionFromRemoteVpc,
        r'PeeringConnectionOptionsRequest', 'allowDnsResolutionFromRemoteVpc');
    BuiltValueNullFieldError.checkNotNull(
        allowEgressFromLocalClassicLinkToRemoteVpc,
        r'PeeringConnectionOptionsRequest',
        'allowEgressFromLocalClassicLinkToRemoteVpc');
    BuiltValueNullFieldError.checkNotNull(
        allowEgressFromLocalVpcToRemoteClassicLink,
        r'PeeringConnectionOptionsRequest',
        'allowEgressFromLocalVpcToRemoteClassicLink');
  }

  @override
  PeeringConnectionOptionsRequest rebuild(
          void Function(PeeringConnectionOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeeringConnectionOptionsRequestBuilder toBuilder() =>
      new PeeringConnectionOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeeringConnectionOptionsRequest &&
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

class PeeringConnectionOptionsRequestBuilder
    implements
        Builder<PeeringConnectionOptionsRequest,
            PeeringConnectionOptionsRequestBuilder> {
  _$PeeringConnectionOptionsRequest? _$v;

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

  PeeringConnectionOptionsRequestBuilder() {
    PeeringConnectionOptionsRequest._init(this);
  }

  PeeringConnectionOptionsRequestBuilder get _$this {
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
  void replace(PeeringConnectionOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PeeringConnectionOptionsRequest;
  }

  @override
  void update(void Function(PeeringConnectionOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PeeringConnectionOptionsRequest build() => _build();

  _$PeeringConnectionOptionsRequest _build() {
    final _$result = _$v ??
        new _$PeeringConnectionOptionsRequest._(
            allowDnsResolutionFromRemoteVpc:
                BuiltValueNullFieldError.checkNotNull(
                    allowDnsResolutionFromRemoteVpc,
                    r'PeeringConnectionOptionsRequest',
                    'allowDnsResolutionFromRemoteVpc'),
            allowEgressFromLocalClassicLinkToRemoteVpc:
                BuiltValueNullFieldError.checkNotNull(
                    allowEgressFromLocalClassicLinkToRemoteVpc,
                    r'PeeringConnectionOptionsRequest',
                    'allowEgressFromLocalClassicLinkToRemoteVpc'),
            allowEgressFromLocalVpcToRemoteClassicLink:
                BuiltValueNullFieldError.checkNotNull(
                    allowEgressFromLocalVpcToRemoteClassicLink,
                    r'PeeringConnectionOptionsRequest',
                    'allowEgressFromLocalVpcToRemoteClassicLink'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
