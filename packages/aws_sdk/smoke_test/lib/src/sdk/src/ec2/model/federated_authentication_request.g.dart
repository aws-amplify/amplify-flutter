// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federated_authentication_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FederatedAuthenticationRequest extends FederatedAuthenticationRequest {
  @override
  final String? samlProviderArn;
  @override
  final String? selfServiceSamlProviderArn;

  factory _$FederatedAuthenticationRequest(
          [void Function(FederatedAuthenticationRequestBuilder)? updates]) =>
      (new FederatedAuthenticationRequestBuilder()..update(updates))._build();

  _$FederatedAuthenticationRequest._(
      {this.samlProviderArn, this.selfServiceSamlProviderArn})
      : super._();

  @override
  FederatedAuthenticationRequest rebuild(
          void Function(FederatedAuthenticationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FederatedAuthenticationRequestBuilder toBuilder() =>
      new FederatedAuthenticationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FederatedAuthenticationRequest &&
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

class FederatedAuthenticationRequestBuilder
    implements
        Builder<FederatedAuthenticationRequest,
            FederatedAuthenticationRequestBuilder> {
  _$FederatedAuthenticationRequest? _$v;

  String? _samlProviderArn;
  String? get samlProviderArn => _$this._samlProviderArn;
  set samlProviderArn(String? samlProviderArn) =>
      _$this._samlProviderArn = samlProviderArn;

  String? _selfServiceSamlProviderArn;
  String? get selfServiceSamlProviderArn => _$this._selfServiceSamlProviderArn;
  set selfServiceSamlProviderArn(String? selfServiceSamlProviderArn) =>
      _$this._selfServiceSamlProviderArn = selfServiceSamlProviderArn;

  FederatedAuthenticationRequestBuilder();

  FederatedAuthenticationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _samlProviderArn = $v.samlProviderArn;
      _selfServiceSamlProviderArn = $v.selfServiceSamlProviderArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FederatedAuthenticationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FederatedAuthenticationRequest;
  }

  @override
  void update(void Function(FederatedAuthenticationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FederatedAuthenticationRequest build() => _build();

  _$FederatedAuthenticationRequest _build() {
    final _$result = _$v ??
        new _$FederatedAuthenticationRequest._(
            samlProviderArn: samlProviderArn,
            selfServiceSamlProviderArn: selfServiceSamlProviderArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
