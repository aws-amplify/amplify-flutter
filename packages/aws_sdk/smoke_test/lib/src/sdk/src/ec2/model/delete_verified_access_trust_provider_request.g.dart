// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_verified_access_trust_provider_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVerifiedAccessTrustProviderRequest
    extends DeleteVerifiedAccessTrustProviderRequest {
  @override
  final String? verifiedAccessTrustProviderId;
  @override
  final bool dryRun;
  @override
  final String? clientToken;

  factory _$DeleteVerifiedAccessTrustProviderRequest(
          [void Function(DeleteVerifiedAccessTrustProviderRequestBuilder)?
              updates]) =>
      (new DeleteVerifiedAccessTrustProviderRequestBuilder()..update(updates))
          ._build();

  _$DeleteVerifiedAccessTrustProviderRequest._(
      {this.verifiedAccessTrustProviderId,
      required this.dryRun,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteVerifiedAccessTrustProviderRequest', 'dryRun');
  }

  @override
  DeleteVerifiedAccessTrustProviderRequest rebuild(
          void Function(DeleteVerifiedAccessTrustProviderRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVerifiedAccessTrustProviderRequestBuilder toBuilder() =>
      new DeleteVerifiedAccessTrustProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVerifiedAccessTrustProviderRequest &&
        verifiedAccessTrustProviderId == other.verifiedAccessTrustProviderId &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessTrustProviderId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVerifiedAccessTrustProviderRequestBuilder
    implements
        Builder<DeleteVerifiedAccessTrustProviderRequest,
            DeleteVerifiedAccessTrustProviderRequestBuilder> {
  _$DeleteVerifiedAccessTrustProviderRequest? _$v;

  String? _verifiedAccessTrustProviderId;
  String? get verifiedAccessTrustProviderId =>
      _$this._verifiedAccessTrustProviderId;
  set verifiedAccessTrustProviderId(String? verifiedAccessTrustProviderId) =>
      _$this._verifiedAccessTrustProviderId = verifiedAccessTrustProviderId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  DeleteVerifiedAccessTrustProviderRequestBuilder() {
    DeleteVerifiedAccessTrustProviderRequest._init(this);
  }

  DeleteVerifiedAccessTrustProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessTrustProviderId = $v.verifiedAccessTrustProviderId;
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVerifiedAccessTrustProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVerifiedAccessTrustProviderRequest;
  }

  @override
  void update(
      void Function(DeleteVerifiedAccessTrustProviderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVerifiedAccessTrustProviderRequest build() => _build();

  _$DeleteVerifiedAccessTrustProviderRequest _build() {
    final _$result = _$v ??
        new _$DeleteVerifiedAccessTrustProviderRequest._(
            verifiedAccessTrustProviderId: verifiedAccessTrustProviderId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteVerifiedAccessTrustProviderRequest', 'dryRun'),
            clientToken: clientToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
