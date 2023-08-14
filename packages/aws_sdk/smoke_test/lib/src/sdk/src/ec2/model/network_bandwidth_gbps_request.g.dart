// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_bandwidth_gbps_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkBandwidthGbpsRequest extends NetworkBandwidthGbpsRequest {
  @override
  final double min;
  @override
  final double max;

  factory _$NetworkBandwidthGbpsRequest(
          [void Function(NetworkBandwidthGbpsRequestBuilder)? updates]) =>
      (new NetworkBandwidthGbpsRequestBuilder()..update(updates))._build();

  _$NetworkBandwidthGbpsRequest._({required this.min, required this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        min, r'NetworkBandwidthGbpsRequest', 'min');
    BuiltValueNullFieldError.checkNotNull(
        max, r'NetworkBandwidthGbpsRequest', 'max');
  }

  @override
  NetworkBandwidthGbpsRequest rebuild(
          void Function(NetworkBandwidthGbpsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkBandwidthGbpsRequestBuilder toBuilder() =>
      new NetworkBandwidthGbpsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkBandwidthGbpsRequest &&
        min == other.min &&
        max == other.max;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkBandwidthGbpsRequestBuilder
    implements
        Builder<NetworkBandwidthGbpsRequest,
            NetworkBandwidthGbpsRequestBuilder> {
  _$NetworkBandwidthGbpsRequest? _$v;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  NetworkBandwidthGbpsRequestBuilder() {
    NetworkBandwidthGbpsRequest._init(this);
  }

  NetworkBandwidthGbpsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkBandwidthGbpsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkBandwidthGbpsRequest;
  }

  @override
  void update(void Function(NetworkBandwidthGbpsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkBandwidthGbpsRequest build() => _build();

  _$NetworkBandwidthGbpsRequest _build() {
    final _$result = _$v ??
        new _$NetworkBandwidthGbpsRequest._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'NetworkBandwidthGbpsRequest', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'NetworkBandwidthGbpsRequest', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
