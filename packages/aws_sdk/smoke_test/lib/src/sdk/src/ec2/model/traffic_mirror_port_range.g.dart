// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traffic_mirror_port_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrafficMirrorPortRange extends TrafficMirrorPortRange {
  @override
  final int fromPort;
  @override
  final int toPort;

  factory _$TrafficMirrorPortRange(
          [void Function(TrafficMirrorPortRangeBuilder)? updates]) =>
      (new TrafficMirrorPortRangeBuilder()..update(updates))._build();

  _$TrafficMirrorPortRange._({required this.fromPort, required this.toPort})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fromPort, r'TrafficMirrorPortRange', 'fromPort');
    BuiltValueNullFieldError.checkNotNull(
        toPort, r'TrafficMirrorPortRange', 'toPort');
  }

  @override
  TrafficMirrorPortRange rebuild(
          void Function(TrafficMirrorPortRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrafficMirrorPortRangeBuilder toBuilder() =>
      new TrafficMirrorPortRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrafficMirrorPortRange &&
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

class TrafficMirrorPortRangeBuilder
    implements Builder<TrafficMirrorPortRange, TrafficMirrorPortRangeBuilder> {
  _$TrafficMirrorPortRange? _$v;

  int? _fromPort;
  int? get fromPort => _$this._fromPort;
  set fromPort(int? fromPort) => _$this._fromPort = fromPort;

  int? _toPort;
  int? get toPort => _$this._toPort;
  set toPort(int? toPort) => _$this._toPort = toPort;

  TrafficMirrorPortRangeBuilder() {
    TrafficMirrorPortRange._init(this);
  }

  TrafficMirrorPortRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromPort = $v.fromPort;
      _toPort = $v.toPort;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrafficMirrorPortRange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrafficMirrorPortRange;
  }

  @override
  void update(void Function(TrafficMirrorPortRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrafficMirrorPortRange build() => _build();

  _$TrafficMirrorPortRange _build() {
    final _$result = _$v ??
        new _$TrafficMirrorPortRange._(
            fromPort: BuiltValueNullFieldError.checkNotNull(
                fromPort, r'TrafficMirrorPortRange', 'fromPort'),
            toPort: BuiltValueNullFieldError.checkNotNull(
                toPort, r'TrafficMirrorPortRange', 'toPort'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
