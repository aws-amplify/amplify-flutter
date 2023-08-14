// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_vpn_authentication_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientVpnAuthenticationRequest extends ClientVpnAuthenticationRequest {
  @override
  final ClientVpnAuthenticationType? type;
  @override
  final DirectoryServiceAuthenticationRequest? activeDirectory;
  @override
  final CertificateAuthenticationRequest? mutualAuthentication;
  @override
  final FederatedAuthenticationRequest? federatedAuthentication;

  factory _$ClientVpnAuthenticationRequest(
          [void Function(ClientVpnAuthenticationRequestBuilder)? updates]) =>
      (new ClientVpnAuthenticationRequestBuilder()..update(updates))._build();

  _$ClientVpnAuthenticationRequest._(
      {this.type,
      this.activeDirectory,
      this.mutualAuthentication,
      this.federatedAuthentication})
      : super._();

  @override
  ClientVpnAuthenticationRequest rebuild(
          void Function(ClientVpnAuthenticationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientVpnAuthenticationRequestBuilder toBuilder() =>
      new ClientVpnAuthenticationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientVpnAuthenticationRequest &&
        type == other.type &&
        activeDirectory == other.activeDirectory &&
        mutualAuthentication == other.mutualAuthentication &&
        federatedAuthentication == other.federatedAuthentication;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, activeDirectory.hashCode);
    _$hash = $jc(_$hash, mutualAuthentication.hashCode);
    _$hash = $jc(_$hash, federatedAuthentication.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClientVpnAuthenticationRequestBuilder
    implements
        Builder<ClientVpnAuthenticationRequest,
            ClientVpnAuthenticationRequestBuilder> {
  _$ClientVpnAuthenticationRequest? _$v;

  ClientVpnAuthenticationType? _type;
  ClientVpnAuthenticationType? get type => _$this._type;
  set type(ClientVpnAuthenticationType? type) => _$this._type = type;

  DirectoryServiceAuthenticationRequestBuilder? _activeDirectory;
  DirectoryServiceAuthenticationRequestBuilder get activeDirectory =>
      _$this._activeDirectory ??=
          new DirectoryServiceAuthenticationRequestBuilder();
  set activeDirectory(
          DirectoryServiceAuthenticationRequestBuilder? activeDirectory) =>
      _$this._activeDirectory = activeDirectory;

  CertificateAuthenticationRequestBuilder? _mutualAuthentication;
  CertificateAuthenticationRequestBuilder get mutualAuthentication =>
      _$this._mutualAuthentication ??=
          new CertificateAuthenticationRequestBuilder();
  set mutualAuthentication(
          CertificateAuthenticationRequestBuilder? mutualAuthentication) =>
      _$this._mutualAuthentication = mutualAuthentication;

  FederatedAuthenticationRequestBuilder? _federatedAuthentication;
  FederatedAuthenticationRequestBuilder get federatedAuthentication =>
      _$this._federatedAuthentication ??=
          new FederatedAuthenticationRequestBuilder();
  set federatedAuthentication(
          FederatedAuthenticationRequestBuilder? federatedAuthentication) =>
      _$this._federatedAuthentication = federatedAuthentication;

  ClientVpnAuthenticationRequestBuilder();

  ClientVpnAuthenticationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _activeDirectory = $v.activeDirectory?.toBuilder();
      _mutualAuthentication = $v.mutualAuthentication?.toBuilder();
      _federatedAuthentication = $v.federatedAuthentication?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientVpnAuthenticationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientVpnAuthenticationRequest;
  }

  @override
  void update(void Function(ClientVpnAuthenticationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientVpnAuthenticationRequest build() => _build();

  _$ClientVpnAuthenticationRequest _build() {
    _$ClientVpnAuthenticationRequest _$result;
    try {
      _$result = _$v ??
          new _$ClientVpnAuthenticationRequest._(
              type: type,
              activeDirectory: _activeDirectory?.build(),
              mutualAuthentication: _mutualAuthentication?.build(),
              federatedAuthentication: _federatedAuthentication?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activeDirectory';
        _activeDirectory?.build();
        _$failedField = 'mutualAuthentication';
        _mutualAuthentication?.build();
        _$failedField = 'federatedAuthentication';
        _federatedAuthentication?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClientVpnAuthenticationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
