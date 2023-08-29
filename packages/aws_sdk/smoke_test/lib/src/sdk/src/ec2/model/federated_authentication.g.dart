// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federated_authentication.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FederatedAuthentication extends FederatedAuthentication {
  @override
  final String? samlProviderArn;
  @override
  final String? selfServiceSamlProviderArn;

  factory _$FederatedAuthentication(
          [void Function(FederatedAuthenticationBuilder)? updates]) =>
      (new FederatedAuthenticationBuilder()..update(updates))._build();

  _$FederatedAuthentication._(
      {this.samlProviderArn, this.selfServiceSamlProviderArn})
      : super._();

  @override
  FederatedAuthentication rebuild(
          void Function(FederatedAuthenticationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FederatedAuthenticationBuilder toBuilder() =>
      new FederatedAuthenticationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FederatedAuthentication &&
        samlProviderArn == other.samlProviderArn &&
        selfServiceSamlProviderArn == other.selfServiceSamlProviderArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, samlProviderArn.hashCode);
    _$hash = $jc(_$hash, selfServiceSamlProviderArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FederatedAuthenticationBuilder
    implements
        Builder<FederatedAuthentication, FederatedAuthenticationBuilder> {
  _$FederatedAuthentication? _$v;

  String? _samlProviderArn;
  String? get samlProviderArn => _$this._samlProviderArn;
  set samlProviderArn(String? samlProviderArn) =>
      _$this._samlProviderArn = samlProviderArn;

  String? _selfServiceSamlProviderArn;
  String? get selfServiceSamlProviderArn => _$this._selfServiceSamlProviderArn;
  set selfServiceSamlProviderArn(String? selfServiceSamlProviderArn) =>
      _$this._selfServiceSamlProviderArn = selfServiceSamlProviderArn;

  FederatedAuthenticationBuilder();

  FederatedAuthenticationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _samlProviderArn = $v.samlProviderArn;
      _selfServiceSamlProviderArn = $v.selfServiceSamlProviderArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FederatedAuthentication other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FederatedAuthentication;
  }

  @override
  void update(void Function(FederatedAuthenticationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FederatedAuthentication build() => _build();

  _$FederatedAuthentication _build() {
    final _$result = _$v ??
        new _$FederatedAuthentication._(
            samlProviderArn: samlProviderArn,
            selfServiceSamlProviderArn: selfServiceSamlProviderArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
