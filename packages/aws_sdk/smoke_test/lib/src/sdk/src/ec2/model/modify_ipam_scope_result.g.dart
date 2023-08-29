// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_ipam_scope_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyIpamScopeResult extends ModifyIpamScopeResult {
  @override
  final IpamScope? ipamScope;

  factory _$ModifyIpamScopeResult(
          [void Function(ModifyIpamScopeResultBuilder)? updates]) =>
      (new ModifyIpamScopeResultBuilder()..update(updates))._build();

  _$ModifyIpamScopeResult._({this.ipamScope}) : super._();

  @override
  ModifyIpamScopeResult rebuild(
          void Function(ModifyIpamScopeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyIpamScopeResultBuilder toBuilder() =>
      new ModifyIpamScopeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyIpamScopeResult && ipamScope == other.ipamScope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamScope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyIpamScopeResultBuilder
    implements Builder<ModifyIpamScopeResult, ModifyIpamScopeResultBuilder> {
  _$ModifyIpamScopeResult? _$v;

  IpamScopeBuilder? _ipamScope;
  IpamScopeBuilder get ipamScope =>
      _$this._ipamScope ??= new IpamScopeBuilder();
  set ipamScope(IpamScopeBuilder? ipamScope) => _$this._ipamScope = ipamScope;

  ModifyIpamScopeResultBuilder();

  ModifyIpamScopeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamScope = $v.ipamScope?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyIpamScopeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyIpamScopeResult;
  }

  @override
  void update(void Function(ModifyIpamScopeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyIpamScopeResult build() => _build();

  _$ModifyIpamScopeResult _build() {
    _$ModifyIpamScopeResult _$result;
    try {
      _$result =
          _$v ?? new _$ModifyIpamScopeResult._(ipamScope: _ipamScope?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamScope';
        _ipamScope?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyIpamScopeResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
