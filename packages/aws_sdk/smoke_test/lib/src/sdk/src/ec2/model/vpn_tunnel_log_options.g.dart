// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpn_tunnel_log_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpnTunnelLogOptions extends VpnTunnelLogOptions {
  @override
  final CloudWatchLogOptions? cloudWatchLogOptions;

  factory _$VpnTunnelLogOptions(
          [void Function(VpnTunnelLogOptionsBuilder)? updates]) =>
      (new VpnTunnelLogOptionsBuilder()..update(updates))._build();

  _$VpnTunnelLogOptions._({this.cloudWatchLogOptions}) : super._();

  @override
  VpnTunnelLogOptions rebuild(
          void Function(VpnTunnelLogOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpnTunnelLogOptionsBuilder toBuilder() =>
      new VpnTunnelLogOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpnTunnelLogOptions &&
        cloudWatchLogOptions == other.cloudWatchLogOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cloudWatchLogOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpnTunnelLogOptionsBuilder
    implements Builder<VpnTunnelLogOptions, VpnTunnelLogOptionsBuilder> {
  _$VpnTunnelLogOptions? _$v;

  CloudWatchLogOptionsBuilder? _cloudWatchLogOptions;
  CloudWatchLogOptionsBuilder get cloudWatchLogOptions =>
      _$this._cloudWatchLogOptions ??= new CloudWatchLogOptionsBuilder();
  set cloudWatchLogOptions(CloudWatchLogOptionsBuilder? cloudWatchLogOptions) =>
      _$this._cloudWatchLogOptions = cloudWatchLogOptions;

  VpnTunnelLogOptionsBuilder();

  VpnTunnelLogOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cloudWatchLogOptions = $v.cloudWatchLogOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpnTunnelLogOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpnTunnelLogOptions;
  }

  @override
  void update(void Function(VpnTunnelLogOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpnTunnelLogOptions build() => _build();

  _$VpnTunnelLogOptions _build() {
    _$VpnTunnelLogOptions _$result;
    try {
      _$result = _$v ??
          new _$VpnTunnelLogOptions._(
              cloudWatchLogOptions: _cloudWatchLogOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cloudWatchLogOptions';
        _cloudWatchLogOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VpnTunnelLogOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
