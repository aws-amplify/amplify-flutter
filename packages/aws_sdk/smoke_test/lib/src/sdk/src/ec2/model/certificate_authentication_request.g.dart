// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_authentication_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CertificateAuthenticationRequest
    extends CertificateAuthenticationRequest {
  @override
  final String? clientRootCertificateChainArn;

  factory _$CertificateAuthenticationRequest(
          [void Function(CertificateAuthenticationRequestBuilder)? updates]) =>
      (new CertificateAuthenticationRequestBuilder()..update(updates))._build();

  _$CertificateAuthenticationRequest._({this.clientRootCertificateChainArn})
      : super._();

  @override
  CertificateAuthenticationRequest rebuild(
          void Function(CertificateAuthenticationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CertificateAuthenticationRequestBuilder toBuilder() =>
      new CertificateAuthenticationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CertificateAuthenticationRequest &&
        clientRootCertificateChainArn == other.clientRootCertificateChainArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientRootCertificateChainArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CertificateAuthenticationRequestBuilder
    implements
        Builder<CertificateAuthenticationRequest,
            CertificateAuthenticationRequestBuilder> {
  _$CertificateAuthenticationRequest? _$v;

  String? _clientRootCertificateChainArn;
  String? get clientRootCertificateChainArn =>
      _$this._clientRootCertificateChainArn;
  set clientRootCertificateChainArn(String? clientRootCertificateChainArn) =>
      _$this._clientRootCertificateChainArn = clientRootCertificateChainArn;

  CertificateAuthenticationRequestBuilder();

  CertificateAuthenticationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientRootCertificateChainArn = $v.clientRootCertificateChainArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CertificateAuthenticationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CertificateAuthenticationRequest;
  }

  @override
  void update(void Function(CertificateAuthenticationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CertificateAuthenticationRequest build() => _build();

  _$CertificateAuthenticationRequest _build() {
    final _$result = _$v ??
        new _$CertificateAuthenticationRequest._(
            clientRootCertificateChainArn: clientRootCertificateChainArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
