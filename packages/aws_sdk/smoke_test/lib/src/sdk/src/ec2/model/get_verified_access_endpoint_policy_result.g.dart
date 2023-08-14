// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_verified_access_endpoint_policy_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVerifiedAccessEndpointPolicyResult
    extends GetVerifiedAccessEndpointPolicyResult {
  @override
  final bool policyEnabled;
  @override
  final String? policyDocument;

  factory _$GetVerifiedAccessEndpointPolicyResult(
          [void Function(GetVerifiedAccessEndpointPolicyResultBuilder)?
              updates]) =>
      (new GetVerifiedAccessEndpointPolicyResultBuilder()..update(updates))
          ._build();

  _$GetVerifiedAccessEndpointPolicyResult._(
      {required this.policyEnabled, this.policyDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(policyEnabled,
        r'GetVerifiedAccessEndpointPolicyResult', 'policyEnabled');
  }

  @override
  GetVerifiedAccessEndpointPolicyResult rebuild(
          void Function(GetVerifiedAccessEndpointPolicyResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVerifiedAccessEndpointPolicyResultBuilder toBuilder() =>
      new GetVerifiedAccessEndpointPolicyResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVerifiedAccessEndpointPolicyResult &&
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

class GetVerifiedAccessEndpointPolicyResultBuilder
    implements
        Builder<GetVerifiedAccessEndpointPolicyResult,
            GetVerifiedAccessEndpointPolicyResultBuilder> {
  _$GetVerifiedAccessEndpointPolicyResult? _$v;

  bool? _policyEnabled;
  bool? get policyEnabled => _$this._policyEnabled;
  set policyEnabled(bool? policyEnabled) =>
      _$this._policyEnabled = policyEnabled;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  GetVerifiedAccessEndpointPolicyResultBuilder() {
    GetVerifiedAccessEndpointPolicyResult._init(this);
  }

  GetVerifiedAccessEndpointPolicyResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyEnabled = $v.policyEnabled;
      _policyDocument = $v.policyDocument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVerifiedAccessEndpointPolicyResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVerifiedAccessEndpointPolicyResult;
  }

  @override
  void update(
      void Function(GetVerifiedAccessEndpointPolicyResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVerifiedAccessEndpointPolicyResult build() => _build();

  _$GetVerifiedAccessEndpointPolicyResult _build() {
    final _$result = _$v ??
        new _$GetVerifiedAccessEndpointPolicyResult._(
            policyEnabled: BuiltValueNullFieldError.checkNotNull(policyEnabled,
                r'GetVerifiedAccessEndpointPolicyResult', 'policyEnabled'),
            policyDocument: policyDocument);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
