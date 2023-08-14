// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_verified_access_group_policy_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVerifiedAccessGroupPolicyResult
    extends GetVerifiedAccessGroupPolicyResult {
  @override
  final bool policyEnabled;
  @override
  final String? policyDocument;

  factory _$GetVerifiedAccessGroupPolicyResult(
          [void Function(GetVerifiedAccessGroupPolicyResultBuilder)?
              updates]) =>
      (new GetVerifiedAccessGroupPolicyResultBuilder()..update(updates))
          ._build();

  _$GetVerifiedAccessGroupPolicyResult._(
      {required this.policyEnabled, this.policyDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyEnabled, r'GetVerifiedAccessGroupPolicyResult', 'policyEnabled');
  }

  @override
  GetVerifiedAccessGroupPolicyResult rebuild(
          void Function(GetVerifiedAccessGroupPolicyResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVerifiedAccessGroupPolicyResultBuilder toBuilder() =>
      new GetVerifiedAccessGroupPolicyResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVerifiedAccessGroupPolicyResult &&
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

class GetVerifiedAccessGroupPolicyResultBuilder
    implements
        Builder<GetVerifiedAccessGroupPolicyResult,
            GetVerifiedAccessGroupPolicyResultBuilder> {
  _$GetVerifiedAccessGroupPolicyResult? _$v;

  bool? _policyEnabled;
  bool? get policyEnabled => _$this._policyEnabled;
  set policyEnabled(bool? policyEnabled) =>
      _$this._policyEnabled = policyEnabled;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  GetVerifiedAccessGroupPolicyResultBuilder() {
    GetVerifiedAccessGroupPolicyResult._init(this);
  }

  GetVerifiedAccessGroupPolicyResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyEnabled = $v.policyEnabled;
      _policyDocument = $v.policyDocument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVerifiedAccessGroupPolicyResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVerifiedAccessGroupPolicyResult;
  }

  @override
  void update(
      void Function(GetVerifiedAccessGroupPolicyResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVerifiedAccessGroupPolicyResult build() => _build();

  _$GetVerifiedAccessGroupPolicyResult _build() {
    final _$result = _$v ??
        new _$GetVerifiedAccessGroupPolicyResult._(
            policyEnabled: BuiltValueNullFieldError.checkNotNull(policyEnabled,
                r'GetVerifiedAccessGroupPolicyResult', 'policyEnabled'),
            policyDocument: policyDocument);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
