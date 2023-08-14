// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_verified_access_group_policy_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVerifiedAccessGroupPolicyRequest
    extends GetVerifiedAccessGroupPolicyRequest {
  @override
  final String? verifiedAccessGroupId;
  @override
  final bool dryRun;

  factory _$GetVerifiedAccessGroupPolicyRequest(
          [void Function(GetVerifiedAccessGroupPolicyRequestBuilder)?
              updates]) =>
      (new GetVerifiedAccessGroupPolicyRequestBuilder()..update(updates))
          ._build();

  _$GetVerifiedAccessGroupPolicyRequest._(
      {this.verifiedAccessGroupId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetVerifiedAccessGroupPolicyRequest', 'dryRun');
  }

  @override
  GetVerifiedAccessGroupPolicyRequest rebuild(
          void Function(GetVerifiedAccessGroupPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVerifiedAccessGroupPolicyRequestBuilder toBuilder() =>
      new GetVerifiedAccessGroupPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVerifiedAccessGroupPolicyRequest &&
        verifiedAccessGroupId == other.verifiedAccessGroupId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessGroupId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetVerifiedAccessGroupPolicyRequestBuilder
    implements
        Builder<GetVerifiedAccessGroupPolicyRequest,
            GetVerifiedAccessGroupPolicyRequestBuilder> {
  _$GetVerifiedAccessGroupPolicyRequest? _$v;

  String? _verifiedAccessGroupId;
  String? get verifiedAccessGroupId => _$this._verifiedAccessGroupId;
  set verifiedAccessGroupId(String? verifiedAccessGroupId) =>
      _$this._verifiedAccessGroupId = verifiedAccessGroupId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetVerifiedAccessGroupPolicyRequestBuilder() {
    GetVerifiedAccessGroupPolicyRequest._init(this);
  }

  GetVerifiedAccessGroupPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessGroupId = $v.verifiedAccessGroupId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVerifiedAccessGroupPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVerifiedAccessGroupPolicyRequest;
  }

  @override
  void update(
      void Function(GetVerifiedAccessGroupPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVerifiedAccessGroupPolicyRequest build() => _build();

  _$GetVerifiedAccessGroupPolicyRequest _build() {
    final _$result = _$v ??
        new _$GetVerifiedAccessGroupPolicyRequest._(
            verifiedAccessGroupId: verifiedAccessGroupId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetVerifiedAccessGroupPolicyRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
