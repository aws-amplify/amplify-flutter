// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_endpoint_policy_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessEndpointPolicyRequest
    extends ModifyVerifiedAccessEndpointPolicyRequest {
  @override
  final String? verifiedAccessEndpointId;
  @override
  final bool policyEnabled;
  @override
  final String? policyDocument;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$ModifyVerifiedAccessEndpointPolicyRequest(
          [void Function(ModifyVerifiedAccessEndpointPolicyRequestBuilder)?
              updates]) =>
      (new ModifyVerifiedAccessEndpointPolicyRequestBuilder()..update(updates))
          ._build();

  _$ModifyVerifiedAccessEndpointPolicyRequest._(
      {this.verifiedAccessEndpointId,
      required this.policyEnabled,
      this.policyDocument,
      this.clientToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(policyEnabled,
        r'ModifyVerifiedAccessEndpointPolicyRequest', 'policyEnabled');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVerifiedAccessEndpointPolicyRequest', 'dryRun');
  }

  @override
  ModifyVerifiedAccessEndpointPolicyRequest rebuild(
          void Function(ModifyVerifiedAccessEndpointPolicyRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessEndpointPolicyRequestBuilder toBuilder() =>
      new ModifyVerifiedAccessEndpointPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessEndpointPolicyRequest &&
        verifiedAccessEndpointId == other.verifiedAccessEndpointId &&
        policyEnabled == other.policyEnabled &&
        policyDocument == other.policyDocument &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessEndpointId.hashCode);
    _$hash = $jc(_$hash, policyEnabled.hashCode);
    _$hash = $jc(_$hash, policyDocument.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVerifiedAccessEndpointPolicyRequestBuilder
    implements
        Builder<ModifyVerifiedAccessEndpointPolicyRequest,
            ModifyVerifiedAccessEndpointPolicyRequestBuilder> {
  _$ModifyVerifiedAccessEndpointPolicyRequest? _$v;

  String? _verifiedAccessEndpointId;
  String? get verifiedAccessEndpointId => _$this._verifiedAccessEndpointId;
  set verifiedAccessEndpointId(String? verifiedAccessEndpointId) =>
      _$this._verifiedAccessEndpointId = verifiedAccessEndpointId;

  bool? _policyEnabled;
  bool? get policyEnabled => _$this._policyEnabled;
  set policyEnabled(bool? policyEnabled) =>
      _$this._policyEnabled = policyEnabled;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyVerifiedAccessEndpointPolicyRequestBuilder() {
    ModifyVerifiedAccessEndpointPolicyRequest._init(this);
  }

  ModifyVerifiedAccessEndpointPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessEndpointId = $v.verifiedAccessEndpointId;
      _policyEnabled = $v.policyEnabled;
      _policyDocument = $v.policyDocument;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessEndpointPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessEndpointPolicyRequest;
  }

  @override
  void update(
      void Function(ModifyVerifiedAccessEndpointPolicyRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessEndpointPolicyRequest build() => _build();

  _$ModifyVerifiedAccessEndpointPolicyRequest _build() {
    final _$result = _$v ??
        new _$ModifyVerifiedAccessEndpointPolicyRequest._(
            verifiedAccessEndpointId: verifiedAccessEndpointId,
            policyEnabled: BuiltValueNullFieldError.checkNotNull(policyEnabled,
                r'ModifyVerifiedAccessEndpointPolicyRequest', 'policyEnabled'),
            policyDocument: policyDocument,
            clientToken: clientToken,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'ModifyVerifiedAccessEndpointPolicyRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
