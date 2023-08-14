// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_metadata_options_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceMetadataOptionsResponse
    extends InstanceMetadataOptionsResponse {
  @override
  final InstanceMetadataOptionsState? state;
  @override
  final HttpTokensState? httpTokens;
  @override
  final int httpPutResponseHopLimit;
  @override
  final InstanceMetadataEndpointState? httpEndpoint;
  @override
  final InstanceMetadataProtocolState? httpProtocolIpv6;
  @override
  final InstanceMetadataTagsState? instanceMetadataTags;

  factory _$InstanceMetadataOptionsResponse(
          [void Function(InstanceMetadataOptionsResponseBuilder)? updates]) =>
      (new InstanceMetadataOptionsResponseBuilder()..update(updates))._build();

  _$InstanceMetadataOptionsResponse._(
      {this.state,
      this.httpTokens,
      required this.httpPutResponseHopLimit,
      this.httpEndpoint,
      this.httpProtocolIpv6,
      this.instanceMetadataTags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(httpPutResponseHopLimit,
        r'InstanceMetadataOptionsResponse', 'httpPutResponseHopLimit');
  }

  @override
  InstanceMetadataOptionsResponse rebuild(
          void Function(InstanceMetadataOptionsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceMetadataOptionsResponseBuilder toBuilder() =>
      new InstanceMetadataOptionsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceMetadataOptionsResponse &&
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

class InstanceMetadataOptionsResponseBuilder
    implements
        Builder<InstanceMetadataOptionsResponse,
            InstanceMetadataOptionsResponseBuilder> {
  _$InstanceMetadataOptionsResponse? _$v;

  InstanceMetadataOptionsState? _state;
  InstanceMetadataOptionsState? get state => _$this._state;
  set state(InstanceMetadataOptionsState? state) => _$this._state = state;

  HttpTokensState? _httpTokens;
  HttpTokensState? get httpTokens => _$this._httpTokens;
  set httpTokens(HttpTokensState? httpTokens) =>
      _$this._httpTokens = httpTokens;

  int? _httpPutResponseHopLimit;
  int? get httpPutResponseHopLimit => _$this._httpPutResponseHopLimit;
  set httpPutResponseHopLimit(int? httpPutResponseHopLimit) =>
      _$this._httpPutResponseHopLimit = httpPutResponseHopLimit;

  InstanceMetadataEndpointState? _httpEndpoint;
  InstanceMetadataEndpointState? get httpEndpoint => _$this._httpEndpoint;
  set httpEndpoint(InstanceMetadataEndpointState? httpEndpoint) =>
      _$this._httpEndpoint = httpEndpoint;

  InstanceMetadataProtocolState? _httpProtocolIpv6;
  InstanceMetadataProtocolState? get httpProtocolIpv6 =>
      _$this._httpProtocolIpv6;
  set httpProtocolIpv6(InstanceMetadataProtocolState? httpProtocolIpv6) =>
      _$this._httpProtocolIpv6 = httpProtocolIpv6;

  InstanceMetadataTagsState? _instanceMetadataTags;
  InstanceMetadataTagsState? get instanceMetadataTags =>
      _$this._instanceMetadataTags;
  set instanceMetadataTags(InstanceMetadataTagsState? instanceMetadataTags) =>
      _$this._instanceMetadataTags = instanceMetadataTags;

  InstanceMetadataOptionsResponseBuilder() {
    InstanceMetadataOptionsResponse._init(this);
  }

  InstanceMetadataOptionsResponseBuilder get _$this {
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
  void replace(InstanceMetadataOptionsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceMetadataOptionsResponse;
  }

  @override
  void update(void Function(InstanceMetadataOptionsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceMetadataOptionsResponse build() => _build();

  _$InstanceMetadataOptionsResponse _build() {
    final _$result = _$v ??
        new _$InstanceMetadataOptionsResponse._(
            state: state,
            httpTokens: httpTokens,
            httpPutResponseHopLimit: BuiltValueNullFieldError.checkNotNull(
                httpPutResponseHopLimit,
                r'InstanceMetadataOptionsResponse',
                'httpPutResponseHopLimit'),
            httpEndpoint: httpEndpoint,
            httpProtocolIpv6: httpProtocolIpv6,
            instanceMetadataTags: instanceMetadataTags);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
