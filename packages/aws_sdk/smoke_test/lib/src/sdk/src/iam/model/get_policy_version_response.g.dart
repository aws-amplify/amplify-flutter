// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_policy_version_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPolicyVersionResponse extends GetPolicyVersionResponse {
  @override
  final _i2.PolicyVersion? policyVersion;

  factory _$GetPolicyVersionResponse(
          [void Function(GetPolicyVersionResponseBuilder)? updates]) =>
      (new GetPolicyVersionResponseBuilder()..update(updates))._build();

  _$GetPolicyVersionResponse._({this.policyVersion}) : super._();

  @override
  GetPolicyVersionResponse rebuild(
          void Function(GetPolicyVersionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPolicyVersionResponseBuilder toBuilder() =>
      new GetPolicyVersionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPolicyVersionResponse &&
        policyVersion == other.policyVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetPolicyVersionResponseBuilder
    implements
        Builder<GetPolicyVersionResponse, GetPolicyVersionResponseBuilder> {
  _$GetPolicyVersionResponse? _$v;

  _i2.PolicyVersionBuilder? _policyVersion;
  _i2.PolicyVersionBuilder get policyVersion =>
      _$this._policyVersion ??= new _i2.PolicyVersionBuilder();
  set policyVersion(_i2.PolicyVersionBuilder? policyVersion) =>
      _$this._policyVersion = policyVersion;

  GetPolicyVersionResponseBuilder() {
    GetPolicyVersionResponse._init(this);
  }

  GetPolicyVersionResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyVersion = $v.policyVersion?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPolicyVersionResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetPolicyVersionResponse;
  }

  @override
  void update(void Function(GetPolicyVersionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPolicyVersionResponse build() => _build();

  _$GetPolicyVersionResponse _build() {
    _$GetPolicyVersionResponse _$result;
    try {
      _$result = _$v ??
          new _$GetPolicyVersionResponse._(
              policyVersion: _policyVersion?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policyVersion';
        _policyVersion?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetPolicyVersionResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
