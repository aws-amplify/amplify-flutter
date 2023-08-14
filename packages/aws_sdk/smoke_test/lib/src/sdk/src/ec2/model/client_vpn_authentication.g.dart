// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_vpn_authentication.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientVpnAuthentication extends ClientVpnAuthentication {
  @override
  final ClientVpnAuthenticationType? type;
  @override
  final DirectoryServiceAuthentication? activeDirectory;
  @override
  final CertificateAuthentication? mutualAuthentication;
  @override
  final FederatedAuthentication? federatedAuthentication;

  factory _$ClientVpnAuthentication(
          [void Function(ClientVpnAuthenticationBuilder)? updates]) =>
      (new ClientVpnAuthenticationBuilder()..update(updates))._build();

  _$ClientVpnAuthentication._(
      {this.type,
      this.activeDirectory,
      this.mutualAuthentication,
      this.federatedAuthentication})
      : super._();

  @override
  ClientVpnAuthentication rebuild(
          void Function(ClientVpnAuthenticationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientVpnAuthenticationBuilder toBuilder() =>
      new ClientVpnAuthenticationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientVpnAuthentication &&
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

class ClientVpnAuthenticationBuilder
    implements
        Builder<ClientVpnAuthentication, ClientVpnAuthenticationBuilder> {
  _$ClientVpnAuthentication? _$v;

  ClientVpnAuthenticationType? _type;
  ClientVpnAuthenticationType? get type => _$this._type;
  set type(ClientVpnAuthenticationType? type) => _$this._type = type;

  DirectoryServiceAuthenticationBuilder? _activeDirectory;
  DirectoryServiceAuthenticationBuilder get activeDirectory =>
      _$this._activeDirectory ??= new DirectoryServiceAuthenticationBuilder();
  set activeDirectory(DirectoryServiceAuthenticationBuilder? activeDirectory) =>
      _$this._activeDirectory = activeDirectory;

  CertificateAuthenticationBuilder? _mutualAuthentication;
  CertificateAuthenticationBuilder get mutualAuthentication =>
      _$this._mutualAuthentication ??= new CertificateAuthenticationBuilder();
  set mutualAuthentication(
          CertificateAuthenticationBuilder? mutualAuthentication) =>
      _$this._mutualAuthentication = mutualAuthentication;

  FederatedAuthenticationBuilder? _federatedAuthentication;
  FederatedAuthenticationBuilder get federatedAuthentication =>
      _$this._federatedAuthentication ??= new FederatedAuthenticationBuilder();
  set federatedAuthentication(
          FederatedAuthenticationBuilder? federatedAuthentication) =>
      _$this._federatedAuthentication = federatedAuthentication;

  ClientVpnAuthenticationBuilder();

  ClientVpnAuthenticationBuilder get _$this {
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
  void replace(ClientVpnAuthentication other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientVpnAuthentication;
  }

  @override
  void update(void Function(ClientVpnAuthenticationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientVpnAuthentication build() => _build();

  _$ClientVpnAuthentication _build() {
    _$ClientVpnAuthentication _$result;
    try {
      _$result = _$v ??
          new _$ClientVpnAuthentication._(
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
            r'ClientVpnAuthentication', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
