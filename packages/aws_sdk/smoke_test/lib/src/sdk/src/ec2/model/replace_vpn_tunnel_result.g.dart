// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_vpn_tunnel_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplaceVpnTunnelResult extends ReplaceVpnTunnelResult {
  @override
  final bool return_;

  factory _$ReplaceVpnTunnelResult(
          [void Function(ReplaceVpnTunnelResultBuilder)? updates]) =>
      (new ReplaceVpnTunnelResultBuilder()..update(updates))._build();

  _$ReplaceVpnTunnelResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'ReplaceVpnTunnelResult', 'return_');
  }

  @override
  ReplaceVpnTunnelResult rebuild(
          void Function(ReplaceVpnTunnelResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplaceVpnTunnelResultBuilder toBuilder() =>
      new ReplaceVpnTunnelResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplaceVpnTunnelResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplaceVpnTunnelResultBuilder
    implements Builder<ReplaceVpnTunnelResult, ReplaceVpnTunnelResultBuilder> {
  _$ReplaceVpnTunnelResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ReplaceVpnTunnelResultBuilder() {
    ReplaceVpnTunnelResult._init(this);
  }

  ReplaceVpnTunnelResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplaceVpnTunnelResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplaceVpnTunnelResult;
  }

  @override
  void update(void Function(ReplaceVpnTunnelResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplaceVpnTunnelResult build() => _build();

  _$ReplaceVpnTunnelResult _build() {
    final _$result = _$v ??
        new _$ReplaceVpnTunnelResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'ReplaceVpnTunnelResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
