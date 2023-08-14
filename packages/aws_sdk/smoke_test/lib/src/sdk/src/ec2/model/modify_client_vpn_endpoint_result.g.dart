// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_client_vpn_endpoint_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyClientVpnEndpointResult extends ModifyClientVpnEndpointResult {
  @override
  final bool return_;

  factory _$ModifyClientVpnEndpointResult(
          [void Function(ModifyClientVpnEndpointResultBuilder)? updates]) =>
      (new ModifyClientVpnEndpointResultBuilder()..update(updates))._build();

  _$ModifyClientVpnEndpointResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'ModifyClientVpnEndpointResult', 'return_');
  }

  @override
  ModifyClientVpnEndpointResult rebuild(
          void Function(ModifyClientVpnEndpointResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyClientVpnEndpointResultBuilder toBuilder() =>
      new ModifyClientVpnEndpointResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyClientVpnEndpointResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyClientVpnEndpointResultBuilder
    implements
        Builder<ModifyClientVpnEndpointResult,
            ModifyClientVpnEndpointResultBuilder> {
  _$ModifyClientVpnEndpointResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ModifyClientVpnEndpointResultBuilder() {
    ModifyClientVpnEndpointResult._init(this);
  }

  ModifyClientVpnEndpointResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyClientVpnEndpointResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyClientVpnEndpointResult;
  }

  @override
  void update(void Function(ModifyClientVpnEndpointResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyClientVpnEndpointResult build() => _build();

  _$ModifyClientVpnEndpointResult _build() {
    final _$result = _$v ??
        new _$ModifyClientVpnEndpointResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'ModifyClientVpnEndpointResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
