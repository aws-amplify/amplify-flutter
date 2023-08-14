// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_metadata_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceMetadataOptionsRequest extends InstanceMetadataOptionsRequest {
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

  factory _$InstanceMetadataOptionsRequest(
          [void Function(InstanceMetadataOptionsRequestBuilder)? updates]) =>
      (new InstanceMetadataOptionsRequestBuilder()..update(updates))._build();

  _$InstanceMetadataOptionsRequest._(
      {this.httpTokens,
      required this.httpPutResponseHopLimit,
      this.httpEndpoint,
      this.httpProtocolIpv6,
      this.instanceMetadataTags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(httpPutResponseHopLimit,
        r'InstanceMetadataOptionsRequest', 'httpPutResponseHopLimit');
  }

  @override
  InstanceMetadataOptionsRequest rebuild(
          void Function(InstanceMetadataOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceMetadataOptionsRequestBuilder toBuilder() =>
      new InstanceMetadataOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceMetadataOptionsRequest &&
        httpTokens == other.httpTokens &&
        httpPutResponseHopLimit == other.httpPutResponseHopLimit &&
        httpEndpoint == other.httpEndpoint &&
        httpProtocolIpv6 == other.httpProtocolIpv6 &&
        instanceMetadataTags == other.instanceMetadataTags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, httpTokens.hashCode);
    _$hash = $jc(_$hash, httpPutResponseHopLimit.hashCode);
    _$hash = $jc(_$hash, httpEndpoint.hashCode);
    _$hash = $jc(_$hash, httpProtocolIpv6.hashCode);
    _$hash = $jc(_$hash, instanceMetadataTags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceMetadataOptionsRequestBuilder
    implements
        Builder<InstanceMetadataOptionsRequest,
            InstanceMetadataOptionsRequestBuilder> {
  _$InstanceMetadataOptionsRequest? _$v;

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

  InstanceMetadataOptionsRequestBuilder() {
    InstanceMetadataOptionsRequest._init(this);
  }

  InstanceMetadataOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(InstanceMetadataOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceMetadataOptionsRequest;
  }

  @override
  void update(void Function(InstanceMetadataOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceMetadataOptionsRequest build() => _build();

  _$InstanceMetadataOptionsRequest _build() {
    final _$result = _$v ??
        new _$InstanceMetadataOptionsRequest._(
            httpTokens: httpTokens,
            httpPutResponseHopLimit: BuiltValueNullFieldError.checkNotNull(
                httpPutResponseHopLimit,
                r'InstanceMetadataOptionsRequest',
                'httpPutResponseHopLimit'),
            httpEndpoint: httpEndpoint,
            httpProtocolIpv6: httpProtocolIpv6,
            instanceMetadataTags: instanceMetadataTags);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
