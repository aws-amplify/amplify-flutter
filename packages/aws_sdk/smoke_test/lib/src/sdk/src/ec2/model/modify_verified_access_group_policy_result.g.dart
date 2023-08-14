// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_group_policy_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessGroupPolicyResult
    extends ModifyVerifiedAccessGroupPolicyResult {
  @override
  final bool policyEnabled;
  @override
  final String? policyDocument;

  factory _$ModifyVerifiedAccessGroupPolicyResult(
          [void Function(ModifyVerifiedAccessGroupPolicyResultBuilder)?
              updates]) =>
      (new ModifyVerifiedAccessGroupPolicyResultBuilder()..update(updates))
          ._build();

  _$ModifyVerifiedAccessGroupPolicyResult._(
      {required this.policyEnabled, this.policyDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(policyEnabled,
        r'ModifyVerifiedAccessGroupPolicyResult', 'policyEnabled');
  }

  @override
  ModifyVerifiedAccessGroupPolicyResult rebuild(
          void Function(ModifyVerifiedAccessGroupPolicyResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessGroupPolicyResultBuilder toBuilder() =>
      new ModifyVerifiedAccessGroupPolicyResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessGroupPolicyResult &&
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

class ModifyVerifiedAccessGroupPolicyResultBuilder
    implements
        Builder<ModifyVerifiedAccessGroupPolicyResult,
            ModifyVerifiedAccessGroupPolicyResultBuilder> {
  _$ModifyVerifiedAccessGroupPolicyResult? _$v;

  bool? _policyEnabled;
  bool? get policyEnabled => _$this._policyEnabled;
  set policyEnabled(bool? policyEnabled) =>
      _$this._policyEnabled = policyEnabled;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  ModifyVerifiedAccessGroupPolicyResultBuilder() {
    ModifyVerifiedAccessGroupPolicyResult._init(this);
  }

  ModifyVerifiedAccessGroupPolicyResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyEnabled = $v.policyEnabled;
      _policyDocument = $v.policyDocument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessGroupPolicyResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessGroupPolicyResult;
  }

  @override
  void update(
      void Function(ModifyVerifiedAccessGroupPolicyResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessGroupPolicyResult build() => _build();

  _$ModifyVerifiedAccessGroupPolicyResult _build() {
    final _$result = _$v ??
        new _$ModifyVerifiedAccessGroupPolicyResult._(
            policyEnabled: BuiltValueNullFieldError.checkNotNull(policyEnabled,
                r'ModifyVerifiedAccessGroupPolicyResult', 'policyEnabled'),
            policyDocument: policyDocument);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
