// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_filter_port_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestFilterPortRange extends RequestFilterPortRange {
  @override
  final int fromPort;
  @override
  final int toPort;

  factory _$RequestFilterPortRange(
          [void Function(RequestFilterPortRangeBuilder)? updates]) =>
      (new RequestFilterPortRangeBuilder()..update(updates))._build();

  _$RequestFilterPortRange._({required this.fromPort, required this.toPort})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fromPort, r'RequestFilterPortRange', 'fromPort');
    BuiltValueNullFieldError.checkNotNull(
        toPort, r'RequestFilterPortRange', 'toPort');
  }

  @override
  RequestFilterPortRange rebuild(
          void Function(RequestFilterPortRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestFilterPortRangeBuilder toBuilder() =>
      new RequestFilterPortRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestFilterPortRange &&
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

class RequestFilterPortRangeBuilder
    implements Builder<RequestFilterPortRange, RequestFilterPortRangeBuilder> {
  _$RequestFilterPortRange? _$v;

  int? _fromPort;
  int? get fromPort => _$this._fromPort;
  set fromPort(int? fromPort) => _$this._fromPort = fromPort;

  int? _toPort;
  int? get toPort => _$this._toPort;
  set toPort(int? toPort) => _$this._toPort = toPort;

  RequestFilterPortRangeBuilder() {
    RequestFilterPortRange._init(this);
  }

  RequestFilterPortRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromPort = $v.fromPort;
      _toPort = $v.toPort;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestFilterPortRange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestFilterPortRange;
  }

  @override
  void update(void Function(RequestFilterPortRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestFilterPortRange build() => _build();

  _$RequestFilterPortRange _build() {
    final _$result = _$v ??
        new _$RequestFilterPortRange._(
            fromPort: BuiltValueNullFieldError.checkNotNull(
                fromPort, r'RequestFilterPortRange', 'fromPort'),
            toPort: BuiltValueNullFieldError.checkNotNull(
                toPort, r'RequestFilterPortRange', 'toPort'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
