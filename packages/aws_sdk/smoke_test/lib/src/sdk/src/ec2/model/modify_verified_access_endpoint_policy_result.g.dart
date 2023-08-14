// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_endpoint_policy_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessEndpointPolicyResult
    extends ModifyVerifiedAccessEndpointPolicyResult {
  @override
  final bool policyEnabled;
  @override
  final String? policyDocument;

  factory _$ModifyVerifiedAccessEndpointPolicyResult(
          [void Function(ModifyVerifiedAccessEndpointPolicyResultBuilder)?
              updates]) =>
      (new ModifyVerifiedAccessEndpointPolicyResultBuilder()..update(updates))
          ._build();

  _$ModifyVerifiedAccessEndpointPolicyResult._(
      {required this.policyEnabled, this.policyDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(policyEnabled,
        r'ModifyVerifiedAccessEndpointPolicyResult', 'policyEnabled');
  }

  @override
  ModifyVerifiedAccessEndpointPolicyResult rebuild(
          void Function(ModifyVerifiedAccessEndpointPolicyResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessEndpointPolicyResultBuilder toBuilder() =>
      new ModifyVerifiedAccessEndpointPolicyResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessEndpointPolicyResult &&
        policyEnabled == other.policyEnabled &&
        policyDocument == other.policyDocument;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyEnabled.hashCode);
    _$hash = $jc(_$hash, policyDocument.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVerifiedAccessEndpointPolicyResultBuilder
    implements
        Builder<ModifyVerifiedAccessEndpointPolicyResult,
            ModifyVerifiedAccessEndpointPolicyResultBuilder> {
  _$ModifyVerifiedAccessEndpointPolicyResult? _$v;

  bool? _policyEnabled;
  bool? get policyEnabled => _$this._policyEnabled;
  set policyEnabled(bool? policyEnabled) =>
      _$this._policyEnabled = policyEnabled;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  ModifyVerifiedAccessEndpointPolicyResultBuilder() {
    ModifyVerifiedAccessEndpointPolicyResult._init(this);
  }

  ModifyVerifiedAccessEndpointPolicyResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyEnabled = $v.policyEnabled;
      _policyDocument = $v.policyDocument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessEndpointPolicyResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessEndpointPolicyResult;
  }

  @override
  void update(
      void Function(ModifyVerifiedAccessEndpointPolicyResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessEndpointPolicyResult build() => _build();

  _$ModifyVerifiedAccessEndpointPolicyResult _build() {
    final _$result = _$v ??
        new _$ModifyVerifiedAccessEndpointPolicyResult._(
            policyEnabled: BuiltValueNullFieldError.checkNotNull(policyEnabled,
                r'ModifyVerifiedAccessEndpointPolicyResult', 'policyEnabled'),
            policyDocument: policyDocument);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
