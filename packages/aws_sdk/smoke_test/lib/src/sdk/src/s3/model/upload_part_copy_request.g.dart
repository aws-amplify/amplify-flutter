// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_part_copy_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadPartCopyRequest extends UploadPartCopyRequest {
  @override
  final String bucket;
  @override
  final String copySource;
  @override
  final String? copySourceIfMatch;
  @override
  final DateTime? copySourceIfModifiedSince;
  @override
  final String? copySourceIfNoneMatch;
  @override
  final DateTime? copySourceIfUnmodifiedSince;
  @override
  final String? copySourceRange;
  @override
  final String key;
  @override
  final int? partNumber;
  @override
  final String uploadId;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String? copySourceSseCustomerAlgorithm;
  @override
  final String? copySourceSseCustomerKey;
  @override
  final String? copySourceSseCustomerKeyMd5;
  @override
  final _i3.RequestPayer? requestPayer;
  @override
  final String? expectedBucketOwner;
  @override
  final String? expectedSourceBucketOwner;

  factory _$UploadPartCopyRequest(
          [void Function(UploadPartCopyRequestBuilder)? updates]) =>
      (new UploadPartCopyRequestBuilder()..update(updates))._build();

  _$UploadPartCopyRequest._(
      {required this.bucket,
      required this.copySource,
      this.copySourceIfMatch,
      this.copySourceIfModifiedSince,
      this.copySourceIfNoneMatch,
      this.copySourceIfUnmodifiedSince,
      this.copySourceRange,
      required this.key,
      this.partNumber,
      required this.uploadId,
      this.sseCustomerAlgorithm,
      this.sseCustomerKey,
      this.sseCustomerKeyMd5,
      this.copySourceSseCustomerAlgorithm,
      this.copySourceSseCustomerKey,
      this.copySourceSseCustomerKeyMd5,
      this.requestPayer,
      this.expectedBucketOwner,
      this.expectedSourceBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'UploadPartCopyRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        copySource, r'UploadPartCopyRequest', 'copySource');
    BuiltValueNullFieldError.checkNotNull(key, r'UploadPartCopyRequest', 'key');
    BuiltValueNullFieldError.checkNotNull(
        uploadId, r'UploadPartCopyRequest', 'uploadId');
  }

  @override
  UploadPartCopyRequest rebuild(
          void Function(UploadPartCopyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadPartCopyRequestBuilder toBuilder() =>
      new UploadPartCopyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadPartCopyRequest &&
        bucket == other.bucket &&
        copySource == other.copySource &&
        copySourceIfMatch == other.copySourceIfMatch &&
        copySourceIfModifiedSince == other.copySourceIfModifiedSince &&
        copySourceIfNoneMatch == other.copySourceIfNoneMatch &&
        copySourceIfUnmodifiedSince == other.copySourceIfUnmodifiedSince &&
        copySourceRange == other.copySourceRange &&
        key == other.key &&
        partNumber == other.partNumber &&
        uploadId == other.uploadId &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKey == other.sseCustomerKey &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        copySourceSseCustomerAlgorithm ==
            other.copySourceSseCustomerAlgorithm &&
        copySourceSseCustomerKey == other.copySourceSseCustomerKey &&
        copySourceSseCustomerKeyMd5 == other.copySourceSseCustomerKeyMd5 &&
        requestPayer == other.requestPayer &&
        expectedBucketOwner == other.expectedBucketOwner &&
        expectedSourceBucketOwner == other.expectedSourceBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, copySource.hashCode);
    _$hash = $jc(_$hash, copySourceIfMatch.hashCode);
    _$hash = $jc(_$hash, copySourceIfModifiedSince.hashCode);
    _$hash = $jc(_$hash, copySourceIfNoneMatch.hashCode);
    _$hash = $jc(_$hash, copySourceIfUnmodifiedSince.hashCode);
    _$hash = $jc(_$hash, copySourceRange.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, partNumber.hashCode);
    _$hash = $jc(_$hash, uploadId.hashCode);
    _$hash = $jc(_$hash, sseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, sseCustomerKey.hashCode);
    _$hash = $jc(_$hash, sseCustomerKeyMd5.hashCode);
    _$hash = $jc(_$hash, copySourceSseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, copySourceSseCustomerKey.hashCode);
    _$hash = $jc(_$hash, copySourceSseCustomerKeyMd5.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, expectedSourceBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UploadPartCopyRequestBuilder
    implements Builder<UploadPartCopyRequest, UploadPartCopyRequestBuilder> {
  _$UploadPartCopyRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _copySource;
  String? get copySource => _$this._copySource;
  set copySource(String? copySource) => _$this._copySource = copySource;

  String? _copySourceIfMatch;
  String? get copySourceIfMatch => _$this._copySourceIfMatch;
  set copySourceIfMatch(String? copySourceIfMatch) =>
      _$this._copySourceIfMatch = copySourceIfMatch;

  DateTime? _copySourceIfModifiedSince;
  DateTime? get copySourceIfModifiedSince => _$this._copySourceIfModifiedSince;
  set copySourceIfModifiedSince(DateTime? copySourceIfModifiedSince) =>
      _$this._copySourceIfModifiedSince = copySourceIfModifiedSince;

  String? _copySourceIfNoneMatch;
  String? get copySourceIfNoneMatch => _$this._copySourceIfNoneMatch;
  set copySourceIfNoneMatch(String? copySourceIfNoneMatch) =>
      _$this._copySourceIfNoneMatch = copySourceIfNoneMatch;

  DateTime? _copySourceIfUnmodifiedSince;
  DateTime? get copySourceIfUnmodifiedSince =>
      _$this._copySourceIfUnmodifiedSince;
  set copySourceIfUnmodifiedSince(DateTime? copySourceIfUnmodifiedSince) =>
      _$this._copySourceIfUnmodifiedSince = copySourceIfUnmodifiedSince;

  String? _copySourceRange;
  String? get copySourceRange => _$this._copySourceRange;
  set copySourceRange(String? copySourceRange) =>
      _$this._copySourceRange = copySourceRange;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  int? _partNumber;
  int? get partNumber => _$this._partNumber;
  set partNumber(int? partNumber) => _$this._partNumber = partNumber;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

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

  String? _copySourceSseCustomerAlgorithm;
  String? get copySourceSseCustomerAlgorithm =>
      _$this._copySourceSseCustomerAlgorithm;
  set copySourceSseCustomerAlgorithm(String? copySourceSseCustomerAlgorithm) =>
      _$this._copySourceSseCustomerAlgorithm = copySourceSseCustomerAlgorithm;

  String? _copySourceSseCustomerKey;
  String? get copySourceSseCustomerKey => _$this._copySourceSseCustomerKey;
  set copySourceSseCustomerKey(String? copySourceSseCustomerKey) =>
      _$this._copySourceSseCustomerKey = copySourceSseCustomerKey;

  String? _copySourceSseCustomerKeyMd5;
  String? get copySourceSseCustomerKeyMd5 =>
      _$this._copySourceSseCustomerKeyMd5;
  set copySourceSseCustomerKeyMd5(String? copySourceSseCustomerKeyMd5) =>
      _$this._copySourceSseCustomerKeyMd5 = copySourceSseCustomerKeyMd5;

  _i3.RequestPayer? _requestPayer;
  _i3.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i3.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _expectedSourceBucketOwner;
  String? get expectedSourceBucketOwner => _$this._expectedSourceBucketOwner;
  set expectedSourceBucketOwner(String? expectedSourceBucketOwner) =>
      _$this._expectedSourceBucketOwner = expectedSourceBucketOwner;

  UploadPartCopyRequestBuilder() {
    UploadPartCopyRequest._init(this);
  }

  UploadPartCopyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _copySource = $v.copySource;
      _copySourceIfMatch = $v.copySourceIfMatch;
      _copySourceIfModifiedSince = $v.copySourceIfModifiedSince;
      _copySourceIfNoneMatch = $v.copySourceIfNoneMatch;
      _copySourceIfUnmodifiedSince = $v.copySourceIfUnmodifiedSince;
      _copySourceRange = $v.copySourceRange;
      _key = $v.key;
      _partNumber = $v.partNumber;
      _uploadId = $v.uploadId;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKey = $v.sseCustomerKey;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _copySourceSseCustomerAlgorithm = $v.copySourceSseCustomerAlgorithm;
      _copySourceSseCustomerKey = $v.copySourceSseCustomerKey;
      _copySourceSseCustomerKeyMd5 = $v.copySourceSseCustomerKeyMd5;
      _requestPayer = $v.requestPayer;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _expectedSourceBucketOwner = $v.expectedSourceBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadPartCopyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadPartCopyRequest;
  }

  @override
  void update(void Function(UploadPartCopyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadPartCopyRequest build() => _build();

  _$UploadPartCopyRequest _build() {
    final _$result = _$v ??
        new _$UploadPartCopyRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'UploadPartCopyRequest', 'bucket'),
            copySource: BuiltValueNullFieldError.checkNotNull(
                copySource, r'UploadPartCopyRequest', 'copySource'),
            copySourceIfMatch: copySourceIfMatch,
            copySourceIfModifiedSince: copySourceIfModifiedSince,
            copySourceIfNoneMatch: copySourceIfNoneMatch,
            copySourceIfUnmodifiedSince: copySourceIfUnmodifiedSince,
            copySourceRange: copySourceRange,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'UploadPartCopyRequest', 'key'),
            partNumber: partNumber,
            uploadId: BuiltValueNullFieldError.checkNotNull(
                uploadId, r'UploadPartCopyRequest', 'uploadId'),
            sseCustomerAlgorithm: sseCustomerAlgorithm,
            sseCustomerKey: sseCustomerKey,
            sseCustomerKeyMd5: sseCustomerKeyMd5,
            copySourceSseCustomerAlgorithm: copySourceSseCustomerAlgorithm,
            copySourceSseCustomerKey: copySourceSseCustomerKey,
            copySourceSseCustomerKeyMd5: copySourceSseCustomerKeyMd5,
            requestPayer: requestPayer,
            expectedBucketOwner: expectedBucketOwner,
            expectedSourceBucketOwner: expectedSourceBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$UploadPartCopyRequestPayload extends UploadPartCopyRequestPayload {
  factory _$UploadPartCopyRequestPayload(
          [void Function(UploadPartCopyRequestPayloadBuilder)? updates]) =>
      (new UploadPartCopyRequestPayloadBuilder()..update(updates))._build();

  _$UploadPartCopyRequestPayload._() : super._();

  @override
  UploadPartCopyRequestPayload rebuild(
          void Function(UploadPartCopyRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadPartCopyRequestPayloadBuilder toBuilder() =>
      new UploadPartCopyRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadPartCopyRequestPayload;
  }

  @override
  int get hashCode {
    return 94100808;
  }
}

class UploadPartCopyRequestPayloadBuilder
    implements
        Builder<UploadPartCopyRequestPayload,
            UploadPartCopyRequestPayloadBuilder> {
  _$UploadPartCopyRequestPayload? _$v;

  UploadPartCopyRequestPayloadBuilder() {
    UploadPartCopyRequestPayload._init(this);
  }

  @override
  void replace(UploadPartCopyRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadPartCopyRequestPayload;
  }

  @override
  void update(void Function(UploadPartCopyRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadPartCopyRequestPayload build() => _build();

  _$UploadPartCopyRequestPayload _build() {
    final _$result = _$v ?? new _$UploadPartCopyRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
