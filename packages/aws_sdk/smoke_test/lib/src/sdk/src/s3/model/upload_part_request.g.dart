// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.upload_part_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadPartRequest extends UploadPartRequest {
  @override
  final _i2.Stream<List<int>>? body;
  @override
  final String bucket;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;
  @override
  final _i5.Int64? contentLength;
  @override
  final String? contentMd5;
  @override
  final String? expectedBucketOwner;
  @override
  final String key;
  @override
  final int partNumber;
  @override
  final _i6.RequestPayer? requestPayer;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String uploadId;

  factory _$UploadPartRequest(
          [void Function(UploadPartRequestBuilder)? updates]) =>
      (new UploadPartRequestBuilder()..update(updates))._build();

  _$UploadPartRequest._(
      {this.body,
      required this.bucket,
      this.checksumAlgorithm,
      this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256,
      this.contentLength,
      this.contentMd5,
      this.expectedBucketOwner,
      required this.key,
      required this.partNumber,
      this.requestPayer,
      this.sseCustomerAlgorithm,
      this.sseCustomerKey,
      this.sseCustomerKeyMd5,
      required this.uploadId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'UploadPartRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(key, r'UploadPartRequest', 'key');
    BuiltValueNullFieldError.checkNotNull(
        partNumber, r'UploadPartRequest', 'partNumber');
    BuiltValueNullFieldError.checkNotNull(
        uploadId, r'UploadPartRequest', 'uploadId');
  }

  @override
  UploadPartRequest rebuild(void Function(UploadPartRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadPartRequestBuilder toBuilder() =>
      new UploadPartRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadPartRequest &&
        body == other.body &&
        bucket == other.bucket &&
        checksumAlgorithm == other.checksumAlgorithm &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        contentLength == other.contentLength &&
        contentMd5 == other.contentMd5 &&
        expectedBucketOwner == other.expectedBucketOwner &&
        key == other.key &&
        partNumber == other.partNumber &&
        requestPayer == other.requestPayer &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKey == other.sseCustomerKey &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        uploadId == other.uploadId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        body
                                                                            .hashCode),
                                                                    bucket
                                                                        .hashCode),
                                                                checksumAlgorithm
                                                                    .hashCode),
                                                            checksumCrc32
                                                                .hashCode),
                                                        checksumCrc32C
                                                            .hashCode),
                                                    checksumSha1.hashCode),
                                                checksumSha256.hashCode),
                                            contentLength.hashCode),
                                        contentMd5.hashCode),
                                    expectedBucketOwner.hashCode),
                                key.hashCode),
                            partNumber.hashCode),
                        requestPayer.hashCode),
                    sseCustomerAlgorithm.hashCode),
                sseCustomerKey.hashCode),
            sseCustomerKeyMd5.hashCode),
        uploadId.hashCode));
  }
}

class UploadPartRequestBuilder
    implements Builder<UploadPartRequest, UploadPartRequestBuilder> {
  _$UploadPartRequest? _$v;

  _i2.Stream<List<int>>? _body;
  _i2.Stream<List<int>>? get body => _$this._body;
  set body(_i2.Stream<List<int>>? body) => _$this._body = body;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  String? _checksumCrc32;
  String? get checksumCrc32 => _$this._checksumCrc32;
  set checksumCrc32(String? checksumCrc32) =>
      _$this._checksumCrc32 = checksumCrc32;

  String? _checksumCrc32C;
  String? get checksumCrc32C => _$this._checksumCrc32C;
  set checksumCrc32C(String? checksumCrc32C) =>
      _$this._checksumCrc32C = checksumCrc32C;

  String? _checksumSha1;
  String? get checksumSha1 => _$this._checksumSha1;
  set checksumSha1(String? checksumSha1) => _$this._checksumSha1 = checksumSha1;

  String? _checksumSha256;
  String? get checksumSha256 => _$this._checksumSha256;
  set checksumSha256(String? checksumSha256) =>
      _$this._checksumSha256 = checksumSha256;

  _i5.Int64? _contentLength;
  _i5.Int64? get contentLength => _$this._contentLength;
  set contentLength(_i5.Int64? contentLength) =>
      _$this._contentLength = contentLength;

  String? _contentMd5;
  String? get contentMd5 => _$this._contentMd5;
  set contentMd5(String? contentMd5) => _$this._contentMd5 = contentMd5;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  int? _partNumber;
  int? get partNumber => _$this._partNumber;
  set partNumber(int? partNumber) => _$this._partNumber = partNumber;

  _i6.RequestPayer? _requestPayer;
  _i6.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i6.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _sseCustomerAlgorithm;
  String? get sseCustomerAlgorithm => _$this._sseCustomerAlgorithm;
  set sseCustomerAlgorithm(String? sseCustomerAlgorithm) =>
      _$this._sseCustomerAlgorithm = sseCustomerAlgorithm;

  String? _sseCustomerKey;
  String? get sseCustomerKey => _$this._sseCustomerKey;
  set sseCustomerKey(String? sseCustomerKey) =>
      _$this._sseCustomerKey = sseCustomerKey;

  String? _sseCustomerKeyMd5;
  String? get sseCustomerKeyMd5 => _$this._sseCustomerKeyMd5;
  set sseCustomerKeyMd5(String? sseCustomerKeyMd5) =>
      _$this._sseCustomerKeyMd5 = sseCustomerKeyMd5;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  UploadPartRequestBuilder() {
    UploadPartRequest._init(this);
  }

  UploadPartRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _bucket = $v.bucket;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _contentLength = $v.contentLength;
      _contentMd5 = $v.contentMd5;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _key = $v.key;
      _partNumber = $v.partNumber;
      _requestPayer = $v.requestPayer;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKey = $v.sseCustomerKey;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _uploadId = $v.uploadId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadPartRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadPartRequest;
  }

  @override
  void update(void Function(UploadPartRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadPartRequest build() => _build();

  _$UploadPartRequest _build() {
    final _$result = _$v ??
        new _$UploadPartRequest._(
            body: body,
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'UploadPartRequest', 'bucket'),
            checksumAlgorithm: checksumAlgorithm,
            checksumCrc32: checksumCrc32,
            checksumCrc32C: checksumCrc32C,
            checksumSha1: checksumSha1,
            checksumSha256: checksumSha256,
            contentLength: contentLength,
            contentMd5: contentMd5,
            expectedBucketOwner: expectedBucketOwner,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'UploadPartRequest', 'key'),
            partNumber: BuiltValueNullFieldError.checkNotNull(
                partNumber, r'UploadPartRequest', 'partNumber'),
            requestPayer: requestPayer,
            sseCustomerAlgorithm: sseCustomerAlgorithm,
            sseCustomerKey: sseCustomerKey,
            sseCustomerKeyMd5: sseCustomerKeyMd5,
            uploadId: BuiltValueNullFieldError.checkNotNull(
                uploadId, r'UploadPartRequest', 'uploadId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
