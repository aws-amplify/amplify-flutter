// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_authentication.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CertificateAuthentication extends CertificateAuthentication {
  @override
  final String? clientRootCertificateChain;

  factory _$CertificateAuthentication(
          [void Function(CertificateAuthenticationBuilder)? updates]) =>
      (new CertificateAuthenticationBuilder()..update(updates))._build();

  _$CertificateAuthentication._({this.clientRootCertificateChain}) : super._();

  @override
  CertificateAuthentication rebuild(
          void Function(CertificateAuthenticationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CertificateAuthenticationBuilder toBuilder() =>
      new CertificateAuthenticationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CertificateAuthentication &&
        clientRootCertificateChain == other.clientRootCertificateChain;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientRootCertificateChain.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CertificateAuthenticationBuilder
    implements
        Builder<CertificateAuthentication, CertificateAuthenticationBuilder> {
  _$CertificateAuthentication? _$v;

  String? _clientRootCertificateChain;
  String? get clientRootCertificateChain => _$this._clientRootCertificateChain;
  set clientRootCertificateChain(String? clientRootCertificateChain) =>
      _$this._clientRootCertificateChain = clientRootCertificateChain;

  CertificateAuthenticationBuilder();

  CertificateAuthenticationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientRootCertificateChain = $v.clientRootCertificateChain;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CertificateAuthentication other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CertificateAuthentication;
  }

  @override
  void update(void Function(CertificateAuthenticationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CertificateAuthentication build() => _build();

  _$CertificateAuthentication _build() {
    final _$result = _$v ??
        new _$CertificateAuthentication._(
            clientRootCertificateChain: clientRootCertificateChain);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
