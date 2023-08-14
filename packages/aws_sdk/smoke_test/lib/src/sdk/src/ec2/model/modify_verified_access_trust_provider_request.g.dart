// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_trust_provider_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessTrustProviderRequest
    extends ModifyVerifiedAccessTrustProviderRequest {
  @override
  final String? verifiedAccessTrustProviderId;
  @override
  final ModifyVerifiedAccessTrustProviderOidcOptions? oidcOptions;
  @override
  final String? description;
  @override
  final bool dryRun;
  @override
  final String? clientToken;

  factory _$ModifyVerifiedAccessTrustProviderRequest(
          [void Function(ModifyVerifiedAccessTrustProviderRequestBuilder)?
              updates]) =>
      (new ModifyVerifiedAccessTrustProviderRequestBuilder()..update(updates))
          ._build();

  _$ModifyVerifiedAccessTrustProviderRequest._(
      {this.verifiedAccessTrustProviderId,
      this.oidcOptions,
      this.description,
      required this.dryRun,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVerifiedAccessTrustProviderRequest', 'dryRun');
  }

  @override
  ModifyVerifiedAccessTrustProviderRequest rebuild(
          void Function(ModifyVerifiedAccessTrustProviderRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessTrustProviderRequestBuilder toBuilder() =>
      new ModifyVerifiedAccessTrustProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessTrustProviderRequest &&
        verifiedAccessTrustProviderId == other.verifiedAccessTrustProviderId &&
        oidcOptions == other.oidcOptions &&
        description == other.description &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessTrustProviderId.hashCode);
    _$hash = $jc(_$hash, oidcOptions.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVerifiedAccessTrustProviderRequestBuilder
    implements
        Builder<ModifyVerifiedAccessTrustProviderRequest,
            ModifyVerifiedAccessTrustProviderRequestBuilder> {
  _$ModifyVerifiedAccessTrustProviderRequest? _$v;

  String? _verifiedAccessTrustProviderId;
  String? get verifiedAccessTrustProviderId =>
      _$this._verifiedAccessTrustProviderId;
  set verifiedAccessTrustProviderId(String? verifiedAccessTrustProviderId) =>
      _$this._verifiedAccessTrustProviderId = verifiedAccessTrustProviderId;

  ModifyVerifiedAccessTrustProviderOidcOptionsBuilder? _oidcOptions;
  ModifyVerifiedAccessTrustProviderOidcOptionsBuilder get oidcOptions =>
      _$this._oidcOptions ??=
          new ModifyVerifiedAccessTrustProviderOidcOptionsBuilder();
  set oidcOptions(
          ModifyVerifiedAccessTrustProviderOidcOptionsBuilder? oidcOptions) =>
      _$this._oidcOptions = oidcOptions;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  ModifyVerifiedAccessTrustProviderRequestBuilder() {
    ModifyVerifiedAccessTrustProviderRequest._init(this);
  }

  ModifyVerifiedAccessTrustProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessTrustProviderId = $v.verifiedAccessTrustProviderId;
      _oidcOptions = $v.oidcOptions?.toBuilder();
      _description = $v.description;
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessTrustProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessTrustProviderRequest;
  }

  @override
  void update(
      void Function(ModifyVerifiedAccessTrustProviderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessTrustProviderRequest build() => _build();

  _$ModifyVerifiedAccessTrustProviderRequest _build() {
    _$ModifyVerifiedAccessTrustProviderRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyVerifiedAccessTrustProviderRequest._(
              verifiedAccessTrustProviderId: verifiedAccessTrustProviderId,
              oidcOptions: _oidcOptions?.build(),
              description: description,
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'ModifyVerifiedAccessTrustProviderRequest', 'dryRun'),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'oidcOptions';
        _oidcOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVerifiedAccessTrustProviderRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
