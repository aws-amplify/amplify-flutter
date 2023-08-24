// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider_oidc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthProviderOidc extends AuthProviderOidc {
  @override
  final String name;
  @override
  final String issuer;

  factory _$AuthProviderOidc(
          [void Function(AuthProviderOidcBuilder)? updates]) =>
      (new AuthProviderOidcBuilder()..update(updates))._build();

  _$AuthProviderOidc._({required this.name, required this.issuer}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'AuthProviderOidc', 'name');
    BuiltValueNullFieldError.checkNotNull(
        issuer, r'AuthProviderOidc', 'issuer');
  }

  @override
  AuthProviderOidc rebuild(void Function(AuthProviderOidcBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthProviderOidcBuilder toBuilder() =>
      new AuthProviderOidcBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthProviderOidc &&
        name == other.name &&
        issuer == other.issuer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, issuer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AuthProviderOidcBuilder
    implements Builder<AuthProviderOidc, AuthProviderOidcBuilder> {
  _$AuthProviderOidc? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _issuer;
  String? get issuer => _$this._issuer;
  set issuer(String? issuer) => _$this._issuer = issuer;

  AuthProviderOidcBuilder();

  AuthProviderOidcBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _issuer = $v.issuer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthProviderOidc other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthProviderOidc;
  }

  @override
  void update(void Function(AuthProviderOidcBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthProviderOidc build() => _build();

  _$AuthProviderOidc _build() {
    final _$result = _$v ??
        new _$AuthProviderOidc._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AuthProviderOidc', 'name'),
            issuer: BuiltValueNullFieldError.checkNotNull(
                issuer, r'AuthProviderOidc', 'issuer'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
