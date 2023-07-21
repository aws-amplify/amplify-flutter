// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_auth_provider_saml.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSAuthProviderSaml extends AWSAuthProviderSaml {
  @override
  final String name;
  @override
  final String? providerArn;

  factory _$AWSAuthProviderSaml(
          [void Function(AWSAuthProviderSamlBuilder)? updates]) =>
      (new AWSAuthProviderSamlBuilder()..update(updates))._build();

  _$AWSAuthProviderSaml._({required this.name, this.providerArn}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'AWSAuthProviderSaml', 'name');
  }

  @override
  AWSAuthProviderSaml rebuild(
          void Function(AWSAuthProviderSamlBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSAuthProviderSamlBuilder toBuilder() =>
      new AWSAuthProviderSamlBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSAuthProviderSaml &&
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

class AWSAuthProviderSamlBuilder
    implements Builder<AWSAuthProviderSaml, AWSAuthProviderSamlBuilder> {
  _$AWSAuthProviderSaml? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _providerArn;
  String? get providerArn => _$this._providerArn;
  set providerArn(String? providerArn) => _$this._providerArn = providerArn;

  AWSAuthProviderSamlBuilder();

  AWSAuthProviderSamlBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _providerArn = $v.providerArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSAuthProviderSaml other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSAuthProviderSaml;
  }

  @override
  void update(void Function(AWSAuthProviderSamlBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSAuthProviderSaml build() => _build();

  _$AWSAuthProviderSaml _build() {
    final _$result = _$v ??
        new _$AWSAuthProviderSaml._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AWSAuthProviderSaml', 'name'),
            providerArn: providerArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
