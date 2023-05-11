// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_policy_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPolicyResponse extends GetPolicyResponse {
  @override
  final _i2.Policy? policy;

  factory _$GetPolicyResponse(
          [void Function(GetPolicyResponseBuilder)? updates]) =>
      (new GetPolicyResponseBuilder()..update(updates))._build();

  _$GetPolicyResponse._({this.policy}) : super._();

  @override
  GetPolicyResponse rebuild(void Function(GetPolicyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPolicyResponseBuilder toBuilder() =>
      new GetPolicyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPolicyResponse && policy == other.policy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetPolicyResponseBuilder
    implements Builder<GetPolicyResponse, GetPolicyResponseBuilder> {
  _$GetPolicyResponse? _$v;

  _i2.PolicyBuilder? _policy;
  _i2.PolicyBuilder get policy => _$this._policy ??= new _i2.PolicyBuilder();
  set policy(_i2.PolicyBuilder? policy) => _$this._policy = policy;

  GetPolicyResponseBuilder() {
    GetPolicyResponse._init(this);
  }

  GetPolicyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policy = $v.policy?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPolicyResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetPolicyResponse;
  }

  @override
  void update(void Function(GetPolicyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPolicyResponse build() => _build();

  _$GetPolicyResponse _build() {
    _$GetPolicyResponse _$result;
    try {
      _$result = _$v ?? new _$GetPolicyResponse._(policy: _policy?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policy';
        _policy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetPolicyResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
