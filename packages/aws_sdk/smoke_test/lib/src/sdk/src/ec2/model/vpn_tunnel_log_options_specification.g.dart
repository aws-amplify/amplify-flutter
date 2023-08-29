// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpn_tunnel_log_options_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpnTunnelLogOptionsSpecification
    extends VpnTunnelLogOptionsSpecification {
  @override
  final CloudWatchLogOptionsSpecification? cloudWatchLogOptions;

  factory _$VpnTunnelLogOptionsSpecification(
          [void Function(VpnTunnelLogOptionsSpecificationBuilder)? updates]) =>
      (new VpnTunnelLogOptionsSpecificationBuilder()..update(updates))._build();

  _$VpnTunnelLogOptionsSpecification._({this.cloudWatchLogOptions}) : super._();

  @override
  VpnTunnelLogOptionsSpecification rebuild(
          void Function(VpnTunnelLogOptionsSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpnTunnelLogOptionsSpecificationBuilder toBuilder() =>
      new VpnTunnelLogOptionsSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpnTunnelLogOptionsSpecification &&
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

class VpnTunnelLogOptionsSpecificationBuilder
    implements
        Builder<VpnTunnelLogOptionsSpecification,
            VpnTunnelLogOptionsSpecificationBuilder> {
  _$VpnTunnelLogOptionsSpecification? _$v;

  CloudWatchLogOptionsSpecificationBuilder? _cloudWatchLogOptions;
  CloudWatchLogOptionsSpecificationBuilder get cloudWatchLogOptions =>
      _$this._cloudWatchLogOptions ??=
          new CloudWatchLogOptionsSpecificationBuilder();
  set cloudWatchLogOptions(
          CloudWatchLogOptionsSpecificationBuilder? cloudWatchLogOptions) =>
      _$this._cloudWatchLogOptions = cloudWatchLogOptions;

  VpnTunnelLogOptionsSpecificationBuilder();

  VpnTunnelLogOptionsSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cloudWatchLogOptions = $v.cloudWatchLogOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpnTunnelLogOptionsSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpnTunnelLogOptionsSpecification;
  }

  @override
  void update(void Function(VpnTunnelLogOptionsSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpnTunnelLogOptionsSpecification build() => _build();

  _$VpnTunnelLogOptionsSpecification _build() {
    _$VpnTunnelLogOptionsSpecification _$result;
    try {
      _$result = _$v ??
          new _$VpnTunnelLogOptionsSpecification._(
              cloudWatchLogOptions: _cloudWatchLogOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cloudWatchLogOptions';
        _cloudWatchLogOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VpnTunnelLogOptionsSpecification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
