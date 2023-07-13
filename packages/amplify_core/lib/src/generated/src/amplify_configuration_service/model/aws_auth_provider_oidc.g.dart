// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_auth_provider_oidc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSAuthProviderOidc extends AWSAuthProviderOidc {
  @override
  final String name;
  @override
  final String issuer;

  factory _$AWSAuthProviderOidc(
          [void Function(AWSAuthProviderOidcBuilder)? updates]) =>
      (new AWSAuthProviderOidcBuilder()..update(updates))._build();

  _$AWSAuthProviderOidc._({required this.name, required this.issuer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'AWSAuthProviderOidc', 'name');
    BuiltValueNullFieldError.checkNotNull(
        issuer, r'AWSAuthProviderOidc', 'issuer');
  }

  @override
  AWSAuthProviderOidc rebuild(
          void Function(AWSAuthProviderOidcBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSAuthProviderOidcBuilder toBuilder() =>
      new AWSAuthProviderOidcBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSAuthProviderOidc &&
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

class AWSAuthProviderOidcBuilder
    implements Builder<AWSAuthProviderOidc, AWSAuthProviderOidcBuilder> {
  _$AWSAuthProviderOidc? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _issuer;
  String? get issuer => _$this._issuer;
  set issuer(String? issuer) => _$this._issuer = issuer;

  AWSAuthProviderOidcBuilder() {
    AWSAuthProviderOidc._init(this);
  }

  AWSAuthProviderOidcBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _issuer = $v.issuer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSAuthProviderOidc other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSAuthProviderOidc;
  }

  @override
  void update(void Function(AWSAuthProviderOidcBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSAuthProviderOidc build() => _build();

  _$AWSAuthProviderOidc _build() {
    final _$result = _$v ??
        new _$AWSAuthProviderOidc._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AWSAuthProviderOidc', 'name'),
            issuer: BuiltValueNullFieldError.checkNotNull(
                issuer, r'AWSAuthProviderOidc', 'issuer'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
