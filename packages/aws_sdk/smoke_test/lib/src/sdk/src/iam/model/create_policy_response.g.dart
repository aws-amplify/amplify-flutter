// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_policy_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePolicyResponse extends CreatePolicyResponse {
  @override
  final _i2.Policy? policy;

  factory _$CreatePolicyResponse(
          [void Function(CreatePolicyResponseBuilder)? updates]) =>
      (new CreatePolicyResponseBuilder()..update(updates))._build();

  _$CreatePolicyResponse._({this.policy}) : super._();

  @override
  CreatePolicyResponse rebuild(
          void Function(CreatePolicyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePolicyResponseBuilder toBuilder() =>
      new CreatePolicyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePolicyResponse && policy == other.policy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreatePolicyResponseBuilder
    implements Builder<CreatePolicyResponse, CreatePolicyResponseBuilder> {
  _$CreatePolicyResponse? _$v;

  _i2.PolicyBuilder? _policy;
  _i2.PolicyBuilder get policy => _$this._policy ??= new _i2.PolicyBuilder();
  set policy(_i2.PolicyBuilder? policy) => _$this._policy = policy;

  CreatePolicyResponseBuilder() {
    CreatePolicyResponse._init(this);
  }

  CreatePolicyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policy = $v.policy?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePolicyResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePolicyResponse;
  }

  @override
  void update(void Function(CreatePolicyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePolicyResponse build() => _build();

  _$CreatePolicyResponse _build() {
    _$CreatePolicyResponse _$result;
    try {
      _$result = _$v ?? new _$CreatePolicyResponse._(policy: _policy?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policy';
        _policy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreatePolicyResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
