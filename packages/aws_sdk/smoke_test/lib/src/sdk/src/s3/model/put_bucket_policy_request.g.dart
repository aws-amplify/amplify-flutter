// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketPolicyRequest extends PutBucketPolicyRequest {
  @override
  final String bucket;
  @override
  final String? contentMd5;
  @override
  final _i3.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final bool? confirmRemoveSelfBucketAccess;
  @override
  final String policy;
  @override
  final String? expectedBucketOwner;

  factory _$PutBucketPolicyRequest(
          [void Function(PutBucketPolicyRequestBuilder)? updates]) =>
      (new PutBucketPolicyRequestBuilder()..update(updates))._build();

  _$PutBucketPolicyRequest._(
      {required this.bucket,
      this.contentMd5,
      this.checksumAlgorithm,
      this.confirmRemoveSelfBucketAccess,
      required this.policy,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketPolicyRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        policy, r'PutBucketPolicyRequest', 'policy');
  }

  @override
  PutBucketPolicyRequest rebuild(
          void Function(PutBucketPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketPolicyRequestBuilder toBuilder() =>
      new PutBucketPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketPolicyRequest &&
        bucket == other.bucket &&
        contentMd5 == other.contentMd5 &&
        checksumAlgorithm == other.checksumAlgorithm &&
        confirmRemoveSelfBucketAccess == other.confirmRemoveSelfBucketAccess &&
        policy == other.policy &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, confirmRemoveSelfBucketAccess.hashCode);
    _$hash = $jc(_$hash, policy.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketPolicyRequestBuilder
    implements Builder<PutBucketPolicyRequest, PutBucketPolicyRequestBuilder> {
  _$PutBucketPolicyRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _contentMd5;
  String? get contentMd5 => _$this._contentMd5;
  set contentMd5(String? contentMd5) => _$this._contentMd5 = contentMd5;

  _i3.ChecksumAlgorithm? _checksumAlgorithm;
  _i3.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i3.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  bool? _confirmRemoveSelfBucketAccess;
  bool? get confirmRemoveSelfBucketAccess =>
      _$this._confirmRemoveSelfBucketAccess;
  set confirmRemoveSelfBucketAccess(bool? confirmRemoveSelfBucketAccess) =>
      _$this._confirmRemoveSelfBucketAccess = confirmRemoveSelfBucketAccess;

  String? _policy;
  String? get policy => _$this._policy;
  set policy(String? policy) => _$this._policy = policy;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutBucketPolicyRequestBuilder() {
    PutBucketPolicyRequest._init(this);
  }

  PutBucketPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _contentMd5 = $v.contentMd5;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _confirmRemoveSelfBucketAccess = $v.confirmRemoveSelfBucketAccess;
      _policy = $v.policy;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketPolicyRequest;
  }

  @override
  void update(void Function(PutBucketPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketPolicyRequest build() => _build();

  _$PutBucketPolicyRequest _build() {
    final _$result = _$v ??
        new _$PutBucketPolicyRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'PutBucketPolicyRequest', 'bucket'),
            contentMd5: contentMd5,
            checksumAlgorithm: checksumAlgorithm,
            confirmRemoveSelfBucketAccess: confirmRemoveSelfBucketAccess,
            policy: BuiltValueNullFieldError.checkNotNull(
                policy, r'PutBucketPolicyRequest', 'policy'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
