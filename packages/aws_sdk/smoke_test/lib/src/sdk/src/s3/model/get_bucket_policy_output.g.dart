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
    var _$hash = 0;
    _$hash = $jc(_$hash, policy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
