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
    var _$hash = 0;
    _$hash = $jc(_$hash, replicationConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
