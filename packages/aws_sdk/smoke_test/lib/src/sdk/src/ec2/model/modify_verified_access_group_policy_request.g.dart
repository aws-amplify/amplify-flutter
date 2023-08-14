// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_group_policy_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessGroupPolicyRequest
    extends ModifyVerifiedAccessGroupPolicyRequest {
  @override
  final String? verifiedAccessGroupId;
  @override
  final bool policyEnabled;
  @override
  final String? policyDocument;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$ModifyVerifiedAccessGroupPolicyRequest(
          [void Function(ModifyVerifiedAccessGroupPolicyRequestBuilder)?
              updates]) =>
      (new ModifyVerifiedAccessGroupPolicyRequestBuilder()..update(updates))
          ._build();

  _$ModifyVerifiedAccessGroupPolicyRequest._(
      {this.verifiedAccessGroupId,
      required this.policyEnabled,
      this.policyDocument,
      this.clientToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(policyEnabled,
        r'ModifyVerifiedAccessGroupPolicyRequest', 'policyEnabled');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVerifiedAccessGroupPolicyRequest', 'dryRun');
  }

  @override
  ModifyVerifiedAccessGroupPolicyRequest rebuild(
          void Function(ModifyVerifiedAccessGroupPolicyRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessGroupPolicyRequestBuilder toBuilder() =>
      new ModifyVerifiedAccessGroupPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessGroupPolicyRequest &&
        verifiedAccessGroupId == other.verifiedAccessGroupId &&
        policyEnabled == other.policyEnabled &&
        policyDocument == other.policyDocument &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessGroupId.hashCode);
    _$hash = $jc(_$hash, policyEnabled.hashCode);
    _$hash = $jc(_$hash, policyDocument.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVerifiedAccessGroupPolicyRequestBuilder
    implements
        Builder<ModifyVerifiedAccessGroupPolicyRequest,
            ModifyVerifiedAccessGroupPolicyRequestBuilder> {
  _$ModifyVerifiedAccessGroupPolicyRequest? _$v;

  String? _verifiedAccessGroupId;
  String? get verifiedAccessGroupId => _$this._verifiedAccessGroupId;
  set verifiedAccessGroupId(String? verifiedAccessGroupId) =>
      _$this._verifiedAccessGroupId = verifiedAccessGroupId;

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

  ModifyVerifiedAccessGroupPolicyRequestBuilder() {
    ModifyVerifiedAccessGroupPolicyRequest._init(this);
  }

  ModifyVerifiedAccessGroupPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessGroupId = $v.verifiedAccessGroupId;
      _policyEnabled = $v.policyEnabled;
      _policyDocument = $v.policyDocument;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessGroupPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessGroupPolicyRequest;
  }

  @override
  void update(
      void Function(ModifyVerifiedAccessGroupPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessGroupPolicyRequest build() => _build();

  _$ModifyVerifiedAccessGroupPolicyRequest _build() {
    final _$result = _$v ??
        new _$ModifyVerifiedAccessGroupPolicyRequest._(
            verifiedAccessGroupId: verifiedAccessGroupId,
            policyEnabled: BuiltValueNullFieldError.checkNotNull(policyEnabled,
                r'ModifyVerifiedAccessGroupPolicyRequest', 'policyEnabled'),
            policyDocument: policyDocument,
            clientToken: clientToken,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyVerifiedAccessGroupPolicyRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
