// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_instance_metadata_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateInstanceMetadataOptions
    extends LaunchTemplateInstanceMetadataOptions {
  @override
  final LaunchTemplateInstanceMetadataOptionsState? state;
  @override
  final LaunchTemplateHttpTokensState? httpTokens;
  @override
  final int httpPutResponseHopLimit;
  @override
  final LaunchTemplateInstanceMetadataEndpointState? httpEndpoint;
  @override
  final LaunchTemplateInstanceMetadataProtocolIpv6? httpProtocolIpv6;
  @override
  final LaunchTemplateInstanceMetadataTagsState? instanceMetadataTags;

  factory _$LaunchTemplateInstanceMetadataOptions(
          [void Function(LaunchTemplateInstanceMetadataOptionsBuilder)?
              updates]) =>
      (new LaunchTemplateInstanceMetadataOptionsBuilder()..update(updates))
          ._build();

  _$LaunchTemplateInstanceMetadataOptions._(
      {this.state,
      this.httpTokens,
      required this.httpPutResponseHopLimit,
      this.httpEndpoint,
      this.httpProtocolIpv6,
      this.instanceMetadataTags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(httpPutResponseHopLimit,
        r'LaunchTemplateInstanceMetadataOptions', 'httpPutResponseHopLimit');
  }

  @override
  LaunchTemplateInstanceMetadataOptions rebuild(
          void Function(LaunchTemplateInstanceMetadataOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateInstanceMetadataOptionsBuilder toBuilder() =>
      new LaunchTemplateInstanceMetadataOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateInstanceMetadataOptions &&
        state == other.state &&
        httpTokens == other.httpTokens &&
        httpPutResponseHopLimit == other.httpPutResponseHopLimit &&
        httpEndpoint == other.httpEndpoint &&
        httpProtocolIpv6 == other.httpProtocolIpv6 &&
        instanceMetadataTags == other.instanceMetadataTags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, httpTokens.hashCode);
    _$hash = $jc(_$hash, httpPutResponseHopLimit.hashCode);
    _$hash = $jc(_$hash, httpEndpoint.hashCode);
    _$hash = $jc(_$hash, httpProtocolIpv6.hashCode);
    _$hash = $jc(_$hash, instanceMetadataTags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateInstanceMetadataOptionsBuilder
    implements
        Builder<LaunchTemplateInstanceMetadataOptions,
            LaunchTemplateInstanceMetadataOptionsBuilder> {
  _$LaunchTemplateInstanceMetadataOptions? _$v;

  LaunchTemplateInstanceMetadataOptionsState? _state;
  LaunchTemplateInstanceMetadataOptionsState? get state => _$this._state;
  set state(LaunchTemplateInstanceMetadataOptionsState? state) =>
      _$this._state = state;

  LaunchTemplateHttpTokensState? _httpTokens;
  LaunchTemplateHttpTokensState? get httpTokens => _$this._httpTokens;
  set httpTokens(LaunchTemplateHttpTokensState? httpTokens) =>
      _$this._httpTokens = httpTokens;

  int? _httpPutResponseHopLimit;
  int? get httpPutResponseHopLimit => _$this._httpPutResponseHopLimit;
  set httpPutResponseHopLimit(int? httpPutResponseHopLimit) =>
      _$this._httpPutResponseHopLimit = httpPutResponseHopLimit;

  LaunchTemplateInstanceMetadataEndpointState? _httpEndpoint;
  LaunchTemplateInstanceMetadataEndpointState? get httpEndpoint =>
      _$this._httpEndpoint;
  set httpEndpoint(LaunchTemplateInstanceMetadataEndpointState? httpEndpoint) =>
      _$this._httpEndpoint = httpEndpoint;

  LaunchTemplateInstanceMetadataProtocolIpv6? _httpProtocolIpv6;
  LaunchTemplateInstanceMetadataProtocolIpv6? get httpProtocolIpv6 =>
      _$this._httpProtocolIpv6;
  set httpProtocolIpv6(
          LaunchTemplateInstanceMetadataProtocolIpv6? httpProtocolIpv6) =>
      _$this._httpProtocolIpv6 = httpProtocolIpv6;

  LaunchTemplateInstanceMetadataTagsState? _instanceMetadataTags;
  LaunchTemplateInstanceMetadataTagsState? get instanceMetadataTags =>
      _$this._instanceMetadataTags;
  set instanceMetadataTags(
          LaunchTemplateInstanceMetadataTagsState? instanceMetadataTags) =>
      _$this._instanceMetadataTags = instanceMetadataTags;

  LaunchTemplateInstanceMetadataOptionsBuilder() {
    LaunchTemplateInstanceMetadataOptions._init(this);
  }

  LaunchTemplateInstanceMetadataOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _httpTokens = $v.httpTokens;
      _httpPutResponseHopLimit = $v.httpPutResponseHopLimit;
      _httpEndpoint = $v.httpEndpoint;
      _httpProtocolIpv6 = $v.httpProtocolIpv6;
      _instanceMetadataTags = $v.instanceMetadataTags;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateInstanceMetadataOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateInstanceMetadataOptions;
  }

  @override
  void update(
      void Function(LaunchTemplateInstanceMetadataOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateInstanceMetadataOptions build() => _build();

  _$LaunchTemplateInstanceMetadataOptions _build() {
    final _$result = _$v ??
        new _$LaunchTemplateInstanceMetadataOptions._(
            state: state,
            httpTokens: httpTokens,
            httpPutResponseHopLimit: BuiltValueNullFieldError.checkNotNull(
                httpPutResponseHopLimit,
                r'LaunchTemplateInstanceMetadataOptions',
                'httpPutResponseHopLimit'),
            httpEndpoint: httpEndpoint,
            httpProtocolIpv6: httpProtocolIpv6,
            instanceMetadataTags: instanceMetadataTags);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
