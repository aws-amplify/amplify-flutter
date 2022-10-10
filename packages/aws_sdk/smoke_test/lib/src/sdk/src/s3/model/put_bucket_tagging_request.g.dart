// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_tagging_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketTaggingRequest extends PutBucketTaggingRequest {
  @override
  final String bucket;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? contentMd5;
  @override
  final String? expectedBucketOwner;
  @override
  final _i2.Tagging tagging;

  factory _$PutBucketTaggingRequest(
          [void Function(PutBucketTaggingRequestBuilder)? updates]) =>
      (new PutBucketTaggingRequestBuilder()..update(updates))._build();

  _$PutBucketTaggingRequest._(
      {required this.bucket,
      this.checksumAlgorithm,
      this.contentMd5,
      this.expectedBucketOwner,
      required this.tagging})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketTaggingRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        tagging, r'PutBucketTaggingRequest', 'tagging');
  }

  @override
  PutBucketTaggingRequest rebuild(
          void Function(PutBucketTaggingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketTaggingRequestBuilder toBuilder() =>
      new PutBucketTaggingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketTaggingRequest &&
        bucket == other.bucket &&
        checksumAlgorithm == other.checksumAlgorithm &&
        contentMd5 == other.contentMd5 &&
        expectedBucketOwner == other.expectedBucketOwner &&
        tagging == other.tagging;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, bucket.hashCode), checksumAlgorithm.hashCode),
                contentMd5.hashCode),
            expectedBucketOwner.hashCode),
        tagging.hashCode));
  }
}

class PutBucketTaggingRequestBuilder
    implements
        Builder<PutBucketTaggingRequest, PutBucketTaggingRequestBuilder> {
  _$PutBucketTaggingRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  String? _contentMd5;
  String? get contentMd5 => _$this._contentMd5;
  set contentMd5(String? contentMd5) => _$this._contentMd5 = contentMd5;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  _i2.TaggingBuilder? _tagging;
  _i2.TaggingBuilder get tagging =>
      _$this._tagging ??= new _i2.TaggingBuilder();
  set tagging(_i2.TaggingBuilder? tagging) => _$this._tagging = tagging;

  PutBucketTaggingRequestBuilder() {
    PutBucketTaggingRequest._init(this);
  }

  PutBucketTaggingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _contentMd5 = $v.contentMd5;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _tagging = $v.tagging.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketTaggingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketTaggingRequest;
  }

  @override
  void update(void Function(PutBucketTaggingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketTaggingRequest build() => _build();

  _$PutBucketTaggingRequest _build() {
    _$PutBucketTaggingRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketTaggingRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketTaggingRequest', 'bucket'),
              checksumAlgorithm: checksumAlgorithm,
              contentMd5: contentMd5,
              expectedBucketOwner: expectedBucketOwner,
              tagging: tagging.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagging';
        tagging.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketTaggingRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
