// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ipam_scope_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateIpamScopeResult extends CreateIpamScopeResult {
  @override
  final IpamScope? ipamScope;

  factory _$CreateIpamScopeResult(
          [void Function(CreateIpamScopeResultBuilder)? updates]) =>
      (new CreateIpamScopeResultBuilder()..update(updates))._build();

  _$CreateIpamScopeResult._({this.ipamScope}) : super._();

  @override
  CreateIpamScopeResult rebuild(
          void Function(CreateIpamScopeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateIpamScopeResultBuilder toBuilder() =>
      new CreateIpamScopeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateIpamScopeResult && ipamScope == other.ipamScope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamScope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateIpamScopeResultBuilder
    implements Builder<CreateIpamScopeResult, CreateIpamScopeResultBuilder> {
  _$CreateIpamScopeResult? _$v;

  IpamScopeBuilder? _ipamScope;
  IpamScopeBuilder get ipamScope =>
      _$this._ipamScope ??= new IpamScopeBuilder();
  set ipamScope(IpamScopeBuilder? ipamScope) => _$this._ipamScope = ipamScope;

  CreateIpamScopeResultBuilder();

  CreateIpamScopeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamScope = $v.ipamScope?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateIpamScopeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateIpamScopeResult;
  }

  @override
  void update(void Function(CreateIpamScopeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateIpamScopeResult build() => _build();

  _$CreateIpamScopeResult _build() {
    _$CreateIpamScopeResult _$result;
    try {
      _$result =
          _$v ?? new _$CreateIpamScopeResult._(ipamScope: _ipamScope?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamScope';
        _ipamScope?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateIpamScopeResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
