// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_replication_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketReplicationRequest extends PutBucketReplicationRequest {
  @override
  final String bucket;
  @override
  final String? contentMd5;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final _i2.ReplicationConfiguration replicationConfiguration;
  @override
  final String? token;
  @override
  final String? expectedBucketOwner;

  factory _$PutBucketReplicationRequest(
          [void Function(PutBucketReplicationRequestBuilder)? updates]) =>
      (new PutBucketReplicationRequestBuilder()..update(updates))._build();

  _$PutBucketReplicationRequest._(
      {required this.bucket,
      this.contentMd5,
      this.checksumAlgorithm,
      required this.replicationConfiguration,
      this.token,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketReplicationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(replicationConfiguration,
        r'PutBucketReplicationRequest', 'replicationConfiguration');
  }

  @override
  PutBucketReplicationRequest rebuild(
          void Function(PutBucketReplicationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketReplicationRequestBuilder toBuilder() =>
      new PutBucketReplicationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketReplicationRequest &&
        bucket == other.bucket &&
        contentMd5 == other.contentMd5 &&
        checksumAlgorithm == other.checksumAlgorithm &&
        replicationConfiguration == other.replicationConfiguration &&
        token == other.token &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, replicationConfiguration.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketReplicationRequestBuilder
    implements
        Builder<PutBucketReplicationRequest,
            PutBucketReplicationRequestBuilder> {
  _$PutBucketReplicationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _contentMd5;
  String? get contentMd5 => _$this._contentMd5;
  set contentMd5(String? contentMd5) => _$this._contentMd5 = contentMd5;

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  _i2.ReplicationConfigurationBuilder? _replicationConfiguration;
  _i2.ReplicationConfigurationBuilder get replicationConfiguration =>
      _$this._replicationConfiguration ??=
          new _i2.ReplicationConfigurationBuilder();
  set replicationConfiguration(
          _i2.ReplicationConfigurationBuilder? replicationConfiguration) =>
      _$this._replicationConfiguration = replicationConfiguration;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutBucketReplicationRequestBuilder() {
    PutBucketReplicationRequest._init(this);
  }

  PutBucketReplicationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _contentMd5 = $v.contentMd5;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _replicationConfiguration = $v.replicationConfiguration.toBuilder();
      _token = $v.token;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketReplicationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketReplicationRequest;
  }

  @override
  void update(void Function(PutBucketReplicationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketReplicationRequest build() => _build();

  _$PutBucketReplicationRequest _build() {
    _$PutBucketReplicationRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketReplicationRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketReplicationRequest', 'bucket'),
              contentMd5: contentMd5,
              checksumAlgorithm: checksumAlgorithm,
              replicationConfiguration: replicationConfiguration.build(),
              token: token,
              expectedBucketOwner: expectedBucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replicationConfiguration';
        replicationConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketReplicationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
