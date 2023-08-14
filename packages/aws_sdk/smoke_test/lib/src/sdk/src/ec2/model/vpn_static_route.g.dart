// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpn_static_route.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpnStaticRoute extends VpnStaticRoute {
  @override
  final String? destinationCidrBlock;
  @override
  final VpnStaticRouteSource? source;
  @override
  final VpnState? state;

  factory _$VpnStaticRoute([void Function(VpnStaticRouteBuilder)? updates]) =>
      (new VpnStaticRouteBuilder()..update(updates))._build();

  _$VpnStaticRoute._({this.destinationCidrBlock, this.source, this.state})
      : super._();

  @override
  VpnStaticRoute rebuild(void Function(VpnStaticRouteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpnStaticRouteBuilder toBuilder() =>
      new VpnStaticRouteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpnStaticRoute &&
        destinationCidrBlock == other.destinationCidrBlock &&
        source == other.source &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpnStaticRouteBuilder
    implements Builder<VpnStaticRoute, VpnStaticRouteBuilder> {
  _$VpnStaticRoute? _$v;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  VpnStaticRouteSource? _source;
  VpnStaticRouteSource? get source => _$this._source;
  set source(VpnStaticRouteSource? source) => _$this._source = source;

  VpnState? _state;
  VpnState? get state => _$this._state;
  set state(VpnState? state) => _$this._state = state;

  VpnStaticRouteBuilder();

  VpnStaticRouteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationCidrBlock = $v.destinationCidrBlock;
      _source = $v.source;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpnStaticRoute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpnStaticRoute;
  }

  @override
  void update(void Function(VpnStaticRouteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpnStaticRoute build() => _build();

  _$VpnStaticRoute _build() {
    final _$result = _$v ??
        new _$VpnStaticRoute._(
            destinationCidrBlock: destinationCidrBlock,
            source: source,
            state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
