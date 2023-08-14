// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peering_connection_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PeeringConnectionOptions extends PeeringConnectionOptions {
  @override
  final bool allowDnsResolutionFromRemoteVpc;
  @override
  final bool allowEgressFromLocalClassicLinkToRemoteVpc;
  @override
  final bool allowEgressFromLocalVpcToRemoteClassicLink;

  factory _$PeeringConnectionOptions(
          [void Function(PeeringConnectionOptionsBuilder)? updates]) =>
      (new PeeringConnectionOptionsBuilder()..update(updates))._build();

  _$PeeringConnectionOptions._(
      {required this.allowDnsResolutionFromRemoteVpc,
      required this.allowEgressFromLocalClassicLinkToRemoteVpc,
      required this.allowEgressFromLocalVpcToRemoteClassicLink})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(allowDnsResolutionFromRemoteVpc,
        r'PeeringConnectionOptions', 'allowDnsResolutionFromRemoteVpc');
    BuiltValueNullFieldError.checkNotNull(
        allowEgressFromLocalClassicLinkToRemoteVpc,
        r'PeeringConnectionOptions',
        'allowEgressFromLocalClassicLinkToRemoteVpc');
    BuiltValueNullFieldError.checkNotNull(
        allowEgressFromLocalVpcToRemoteClassicLink,
        r'PeeringConnectionOptions',
        'allowEgressFromLocalVpcToRemoteClassicLink');
  }

  @override
  PeeringConnectionOptions rebuild(
          void Function(PeeringConnectionOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeeringConnectionOptionsBuilder toBuilder() =>
      new PeeringConnectionOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeeringConnectionOptions &&
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

class PeeringConnectionOptionsBuilder
    implements
        Builder<PeeringConnectionOptions, PeeringConnectionOptionsBuilder> {
  _$PeeringConnectionOptions? _$v;

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

  PeeringConnectionOptionsBuilder() {
    PeeringConnectionOptions._init(this);
  }

  PeeringConnectionOptionsBuilder get _$this {
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
  void replace(PeeringConnectionOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PeeringConnectionOptions;
  }

  @override
  void update(void Function(PeeringConnectionOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PeeringConnectionOptions build() => _build();

  _$PeeringConnectionOptions _build() {
    final _$result = _$v ??
        new _$PeeringConnectionOptions._(
            allowDnsResolutionFromRemoteVpc:
                BuiltValueNullFieldError.checkNotNull(
                    allowDnsResolutionFromRemoteVpc,
                    r'PeeringConnectionOptions',
                    'allowDnsResolutionFromRemoteVpc'),
            allowEgressFromLocalClassicLinkToRemoteVpc:
                BuiltValueNullFieldError.checkNotNull(
                    allowEgressFromLocalClassicLinkToRemoteVpc,
                    r'PeeringConnectionOptions',
                    'allowEgressFromLocalClassicLinkToRemoteVpc'),
            allowEgressFromLocalVpcToRemoteClassicLink:
                BuiltValueNullFieldError.checkNotNull(
                    allowEgressFromLocalVpcToRemoteClassicLink,
                    r'PeeringConnectionOptions',
                    'allowEgressFromLocalVpcToRemoteClassicLink'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
