// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_policy_status_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketPolicyStatusOutput extends GetBucketPolicyStatusOutput {
  @override
  final _i3.PolicyStatus? policyStatus;

  factory _$GetBucketPolicyStatusOutput(
          [void Function(GetBucketPolicyStatusOutputBuilder)? updates]) =>
      (new GetBucketPolicyStatusOutputBuilder()..update(updates))._build();

  _$GetBucketPolicyStatusOutput._({this.policyStatus}) : super._();

  @override
  GetBucketPolicyStatusOutput rebuild(
          void Function(GetBucketPolicyStatusOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketPolicyStatusOutputBuilder toBuilder() =>
      new GetBucketPolicyStatusOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketPolicyStatusOutput &&
        policyStatus == other.policyStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketPolicyStatusOutputBuilder
    implements
        Builder<GetBucketPolicyStatusOutput,
            GetBucketPolicyStatusOutputBuilder> {
  _$GetBucketPolicyStatusOutput? _$v;

  _i3.PolicyStatusBuilder? _policyStatus;
  _i3.PolicyStatusBuilder get policyStatus =>
      _$this._policyStatus ??= new _i3.PolicyStatusBuilder();
  set policyStatus(_i3.PolicyStatusBuilder? policyStatus) =>
      _$this._policyStatus = policyStatus;

  GetBucketPolicyStatusOutputBuilder() {
    GetBucketPolicyStatusOutput._init(this);
  }

  GetBucketPolicyStatusOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyStatus = $v.policyStatus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketPolicyStatusOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketPolicyStatusOutput;
  }

  @override
  void update(void Function(GetBucketPolicyStatusOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketPolicyStatusOutput build() => _build();

  _$GetBucketPolicyStatusOutput _build() {
    _$GetBucketPolicyStatusOutput _$result;
    try {
      _$result = _$v ??
          new _$GetBucketPolicyStatusOutput._(
              policyStatus: _policyStatus?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policyStatus';
        _policyStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetBucketPolicyStatusOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
