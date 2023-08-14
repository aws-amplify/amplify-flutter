// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traffic_mirror_port_range_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrafficMirrorPortRangeRequest extends TrafficMirrorPortRangeRequest {
  @override
  final int fromPort;
  @override
  final int toPort;

  factory _$TrafficMirrorPortRangeRequest(
          [void Function(TrafficMirrorPortRangeRequestBuilder)? updates]) =>
      (new TrafficMirrorPortRangeRequestBuilder()..update(updates))._build();

  _$TrafficMirrorPortRangeRequest._(
      {required this.fromPort, required this.toPort})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fromPort, r'TrafficMirrorPortRangeRequest', 'fromPort');
    BuiltValueNullFieldError.checkNotNull(
        toPort, r'TrafficMirrorPortRangeRequest', 'toPort');
  }

  @override
  TrafficMirrorPortRangeRequest rebuild(
          void Function(TrafficMirrorPortRangeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrafficMirrorPortRangeRequestBuilder toBuilder() =>
      new TrafficMirrorPortRangeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrafficMirrorPortRangeRequest &&
        fromPort == other.fromPort &&
        toPort == other.toPort;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromPort.hashCode);
    _$hash = $jc(_$hash, toPort.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TrafficMirrorPortRangeRequestBuilder
    implements
        Builder<TrafficMirrorPortRangeRequest,
            TrafficMirrorPortRangeRequestBuilder> {
  _$TrafficMirrorPortRangeRequest? _$v;

  int? _fromPort;
  int? get fromPort => _$this._fromPort;
  set fromPort(int? fromPort) => _$this._fromPort = fromPort;

  int? _toPort;
  int? get toPort => _$this._toPort;
  set toPort(int? toPort) => _$this._toPort = toPort;

  TrafficMirrorPortRangeRequestBuilder() {
    TrafficMirrorPortRangeRequest._init(this);
  }

  TrafficMirrorPortRangeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromPort = $v.fromPort;
      _toPort = $v.toPort;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrafficMirrorPortRangeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrafficMirrorPortRangeRequest;
  }

  @override
  void update(void Function(TrafficMirrorPortRangeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrafficMirrorPortRangeRequest build() => _build();

  _$TrafficMirrorPortRangeRequest _build() {
    final _$result = _$v ??
        new _$TrafficMirrorPortRangeRequest._(
            fromPort: BuiltValueNullFieldError.checkNotNull(
                fromPort, r'TrafficMirrorPortRangeRequest', 'fromPort'),
            toPort: BuiltValueNullFieldError.checkNotNull(
                toPort, r'TrafficMirrorPortRangeRequest', 'toPort'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
