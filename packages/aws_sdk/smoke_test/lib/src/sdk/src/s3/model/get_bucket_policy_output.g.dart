// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_policy_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketPolicyOutput extends GetBucketPolicyOutput {
  @override
  final String? policy;

  factory _$GetBucketPolicyOutput(
          [void Function(GetBucketPolicyOutputBuilder)? updates]) =>
      (new GetBucketPolicyOutputBuilder()..update(updates))._build();

  _$GetBucketPolicyOutput._({this.policy}) : super._();

  @override
  GetBucketPolicyOutput rebuild(
          void Function(GetBucketPolicyOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketPolicyOutputBuilder toBuilder() =>
      new GetBucketPolicyOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketPolicyOutput && policy == other.policy;
  }

  @override
  int get hashCode {
    return $jf($jc(0, policy.hashCode));
  }
}

class GetBucketPolicyOutputBuilder
    implements Builder<GetBucketPolicyOutput, GetBucketPolicyOutputBuilder> {
  _$GetBucketPolicyOutput? _$v;

  String? _policy;
  String? get policy => _$this._policy;
  set policy(String? policy) => _$this._policy = policy;

  GetBucketPolicyOutputBuilder() {
    GetBucketPolicyOutput._init(this);
  }

  GetBucketPolicyOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policy = $v.policy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketPolicyOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketPolicyOutput;
  }

  @override
  void update(void Function(GetBucketPolicyOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketPolicyOutput build() => _build();

  _$GetBucketPolicyOutput _build() {
    final _$result = _$v ?? new _$GetBucketPolicyOutput._(policy: policy);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
