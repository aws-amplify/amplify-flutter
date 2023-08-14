// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attach_verified_access_trust_provider_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachVerifiedAccessTrustProviderRequest
    extends AttachVerifiedAccessTrustProviderRequest {
  @override
  final String? verifiedAccessInstanceId;
  @override
  final String? verifiedAccessTrustProviderId;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$AttachVerifiedAccessTrustProviderRequest(
          [void Function(AttachVerifiedAccessTrustProviderRequestBuilder)?
              updates]) =>
      (new AttachVerifiedAccessTrustProviderRequestBuilder()..update(updates))
          ._build();

  _$AttachVerifiedAccessTrustProviderRequest._(
      {this.verifiedAccessInstanceId,
      this.verifiedAccessTrustProviderId,
      this.clientToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AttachVerifiedAccessTrustProviderRequest', 'dryRun');
  }

  @override
  AttachVerifiedAccessTrustProviderRequest rebuild(
          void Function(AttachVerifiedAccessTrustProviderRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachVerifiedAccessTrustProviderRequestBuilder toBuilder() =>
      new AttachVerifiedAccessTrustProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachVerifiedAccessTrustProviderRequest &&
        verifiedAccessInstanceId == other.verifiedAccessInstanceId &&
        verifiedAccessTrustProviderId == other.verifiedAccessTrustProviderId &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessInstanceId.hashCode);
    _$hash = $jc(_$hash, verifiedAccessTrustProviderId.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttachVerifiedAccessTrustProviderRequestBuilder
    implements
        Builder<AttachVerifiedAccessTrustProviderRequest,
            AttachVerifiedAccessTrustProviderRequestBuilder> {
  _$AttachVerifiedAccessTrustProviderRequest? _$v;

  String? _verifiedAccessInstanceId;
  String? get verifiedAccessInstanceId => _$this._verifiedAccessInstanceId;
  set verifiedAccessInstanceId(String? verifiedAccessInstanceId) =>
      _$this._verifiedAccessInstanceId = verifiedAccessInstanceId;

  String? _verifiedAccessTrustProviderId;
  String? get verifiedAccessTrustProviderId =>
      _$this._verifiedAccessTrustProviderId;
  set verifiedAccessTrustProviderId(String? verifiedAccessTrustProviderId) =>
      _$this._verifiedAccessTrustProviderId = verifiedAccessTrustProviderId;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AttachVerifiedAccessTrustProviderRequestBuilder() {
    AttachVerifiedAccessTrustProviderRequest._init(this);
  }

  AttachVerifiedAccessTrustProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessInstanceId = $v.verifiedAccessInstanceId;
      _verifiedAccessTrustProviderId = $v.verifiedAccessTrustProviderId;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachVerifiedAccessTrustProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachVerifiedAccessTrustProviderRequest;
  }

  @override
  void update(
      void Function(AttachVerifiedAccessTrustProviderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachVerifiedAccessTrustProviderRequest build() => _build();

  _$AttachVerifiedAccessTrustProviderRequest _build() {
    final _$result = _$v ??
        new _$AttachVerifiedAccessTrustProviderRequest._(
            verifiedAccessInstanceId: verifiedAccessInstanceId,
            verifiedAccessTrustProviderId: verifiedAccessTrustProviderId,
            clientToken: clientToken,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'AttachVerifiedAccessTrustProviderRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
