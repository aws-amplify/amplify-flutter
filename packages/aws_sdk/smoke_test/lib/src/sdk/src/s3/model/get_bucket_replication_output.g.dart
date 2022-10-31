// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_replication_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketReplicationOutput extends GetBucketReplicationOutput {
  @override
  final _i3.ReplicationConfiguration? replicationConfiguration;

  factory _$GetBucketReplicationOutput(
          [void Function(GetBucketReplicationOutputBuilder)? updates]) =>
      (new GetBucketReplicationOutputBuilder()..update(updates))._build();

  _$GetBucketReplicationOutput._({this.replicationConfiguration}) : super._();

  @override
  GetBucketReplicationOutput rebuild(
          void Function(GetBucketReplicationOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketReplicationOutputBuilder toBuilder() =>
      new GetBucketReplicationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketReplicationOutput &&
        replicationConfiguration == other.replicationConfiguration;
  }

  @override
  int get hashCode {
    return $jf($jc(0, replicationConfiguration.hashCode));
  }
}

class GetBucketReplicationOutputBuilder
    implements
        Builder<GetBucketReplicationOutput, GetBucketReplicationOutputBuilder> {
  _$GetBucketReplicationOutput? _$v;

  _i3.ReplicationConfigurationBuilder? _replicationConfiguration;
  _i3.ReplicationConfigurationBuilder get replicationConfiguration =>
      _$this._replicationConfiguration ??=
          new _i3.ReplicationConfigurationBuilder();
  set replicationConfiguration(
          _i3.ReplicationConfigurationBuilder? replicationConfiguration) =>
      _$this._replicationConfiguration = replicationConfiguration;

  GetBucketReplicationOutputBuilder() {
    GetBucketReplicationOutput._init(this);
  }

  GetBucketReplicationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _replicationConfiguration = $v.replicationConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketReplicationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketReplicationOutput;
  }

  @override
  void update(void Function(GetBucketReplicationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketReplicationOutput build() => _build();

  _$GetBucketReplicationOutput _build() {
    _$GetBucketReplicationOutput _$result;
    try {
      _$result = _$v ??
          new _$GetBucketReplicationOutput._(
              replicationConfiguration: _replicationConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replicationConfiguration';
        _replicationConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetBucketReplicationOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
