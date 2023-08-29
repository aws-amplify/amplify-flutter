// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_verified_access_endpoint_policy_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVerifiedAccessEndpointPolicyRequest
    extends GetVerifiedAccessEndpointPolicyRequest {
  @override
  final String? verifiedAccessEndpointId;
  @override
  final bool dryRun;

  factory _$GetVerifiedAccessEndpointPolicyRequest(
          [void Function(GetVerifiedAccessEndpointPolicyRequestBuilder)?
              updates]) =>
      (new GetVerifiedAccessEndpointPolicyRequestBuilder()..update(updates))
          ._build();

  _$GetVerifiedAccessEndpointPolicyRequest._(
      {this.verifiedAccessEndpointId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetVerifiedAccessEndpointPolicyRequest', 'dryRun');
  }

  @override
  GetVerifiedAccessEndpointPolicyRequest rebuild(
          void Function(GetVerifiedAccessEndpointPolicyRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVerifiedAccessEndpointPolicyRequestBuilder toBuilder() =>
      new GetVerifiedAccessEndpointPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVerifiedAccessEndpointPolicyRequest &&
        verifiedAccessEndpointId == other.verifiedAccessEndpointId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessEndpointId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetVerifiedAccessEndpointPolicyRequestBuilder
    implements
        Builder<GetVerifiedAccessEndpointPolicyRequest,
            GetVerifiedAccessEndpointPolicyRequestBuilder> {
  _$GetVerifiedAccessEndpointPolicyRequest? _$v;

  String? _verifiedAccessEndpointId;
  String? get verifiedAccessEndpointId => _$this._verifiedAccessEndpointId;
  set verifiedAccessEndpointId(String? verifiedAccessEndpointId) =>
      _$this._verifiedAccessEndpointId = verifiedAccessEndpointId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetVerifiedAccessEndpointPolicyRequestBuilder() {
    GetVerifiedAccessEndpointPolicyRequest._init(this);
  }

  GetVerifiedAccessEndpointPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessEndpointId = $v.verifiedAccessEndpointId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVerifiedAccessEndpointPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVerifiedAccessEndpointPolicyRequest;
  }

  @override
  void update(
      void Function(GetVerifiedAccessEndpointPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVerifiedAccessEndpointPolicyRequest build() => _build();

  _$GetVerifiedAccessEndpointPolicyRequest _build() {
    final _$result = _$v ??
        new _$GetVerifiedAccessEndpointPolicyRequest._(
            verifiedAccessEndpointId: verifiedAccessEndpointId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetVerifiedAccessEndpointPolicyRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
