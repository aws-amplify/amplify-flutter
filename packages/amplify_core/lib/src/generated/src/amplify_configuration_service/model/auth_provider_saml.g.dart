// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider_saml.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthProviderSaml extends AuthProviderSaml {
  @override
  final String name;
  @override
  final String? providerArn;

  factory _$AuthProviderSaml(
          [void Function(AuthProviderSamlBuilder)? updates]) =>
      (new AuthProviderSamlBuilder()..update(updates))._build();

  _$AuthProviderSaml._({required this.name, this.providerArn}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'AuthProviderSaml', 'name');
  }

  @override
  AuthProviderSaml rebuild(void Function(AuthProviderSamlBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthProviderSamlBuilder toBuilder() =>
      new AuthProviderSamlBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthProviderSaml &&
        name == other.name &&
        providerArn == other.providerArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, providerArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AuthProviderSamlBuilder
    implements Builder<AuthProviderSaml, AuthProviderSamlBuilder> {
  _$AuthProviderSaml? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _providerArn;
  String? get providerArn => _$this._providerArn;
  set providerArn(String? providerArn) => _$this._providerArn = providerArn;

  AuthProviderSamlBuilder();

  AuthProviderSamlBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _providerArn = $v.providerArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthProviderSaml other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthProviderSaml;
  }

  @override
  void update(void Function(AuthProviderSamlBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthProviderSaml build() => _build();

  _$AuthProviderSaml _build() {
    final _$result = _$v ??
        new _$AuthProviderSaml._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AuthProviderSaml', 'name'),
            providerArn: providerArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
