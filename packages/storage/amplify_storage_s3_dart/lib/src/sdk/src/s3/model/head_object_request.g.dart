// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.head_object_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HeadObjectRequest extends HeadObjectRequest {
  @override
  final String bucket;
  @override
  final _i3.ChecksumMode? checksumMode;
  @override
  final String? expectedBucketOwner;
  @override
  final String? ifMatch;
  @override
  final DateTime? ifModifiedSince;
  @override
  final String? ifNoneMatch;
  @override
  final DateTime? ifUnmodifiedSince;
  @override
  final String key;
  @override
  final int? partNumber;
  @override
  final String? range;
  @override
  final _i4.RequestPayer? requestPayer;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String? versionId;

  factory _$HeadObjectRequest(
          [void Function(HeadObjectRequestBuilder)? updates]) =>
      (new HeadObjectRequestBuilder()..update(updates))._build();

  _$HeadObjectRequest._(
      {required this.bucket,
      this.checksumMode,
      this.expectedBucketOwner,
      this.ifMatch,
      this.ifModifiedSince,
      this.ifNoneMatch,
      this.ifUnmodifiedSince,
      required this.key,
      this.partNumber,
      this.range,
      this.requestPayer,
      this.sseCustomerAlgorithm,
      this.sseCustomerKey,
      this.sseCustomerKeyMd5,
      this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'HeadObjectRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(key, r'HeadObjectRequest', 'key');
  }

  @override
  HeadObjectRequest rebuild(void Function(HeadObjectRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HeadObjectRequestBuilder toBuilder() =>
      new HeadObjectRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HeadObjectRequest &&
        bucket == other.bucket &&
        checksumMode == other.checksumMode &&
        expectedBucketOwner == other.expectedBucketOwner &&
        ifMatch == other.ifMatch &&
        ifModifiedSince == other.ifModifiedSince &&
        ifNoneMatch == other.ifNoneMatch &&
        ifUnmodifiedSince == other.ifUnmodifiedSince &&
        key == other.key &&
        partNumber == other.partNumber &&
        range == other.range &&
        requestPayer == other.requestPayer &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKey == other.sseCustomerKey &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, checksumMode.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, ifMatch.hashCode);
    _$hash = $jc(_$hash, ifModifiedSince.hashCode);
    _$hash = $jc(_$hash, ifNoneMatch.hashCode);
    _$hash = $jc(_$hash, ifUnmodifiedSince.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, partNumber.hashCode);
    _$hash = $jc(_$hash, range.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, sseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, sseCustomerKey.hashCode);
    _$hash = $jc(_$hash, sseCustomerKeyMd5.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HeadObjectRequestBuilder
    implements Builder<HeadObjectRequest, HeadObjectRequestBuilder> {
  _$HeadObjectRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i3.ChecksumMode? _checksumMode;
  _i3.ChecksumMode? get checksumMode => _$this._checksumMode;
  set checksumMode(_i3.ChecksumMode? checksumMode) =>
      _$this._checksumMode = checksumMode;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _ifMatch;
  String? get ifMatch => _$this._ifMatch;
  set ifMatch(String? ifMatch) => _$this._ifMatch = ifMatch;

  DateTime? _ifModifiedSince;
  DateTime? get ifModifiedSince => _$this._ifModifiedSince;
  set ifModifiedSince(DateTime? ifModifiedSince) =>
      _$this._ifModifiedSince = ifModifiedSince;

  String? _ifNoneMatch;
  String? get ifNoneMatch => _$this._ifNoneMatch;
  set ifNoneMatch(String? ifNoneMatch) => _$this._ifNoneMatch = ifNoneMatch;

  DateTime? _ifUnmodifiedSince;
  DateTime? get ifUnmodifiedSince => _$this._ifUnmodifiedSince;
  set ifUnmodifiedSince(DateTime? ifUnmodifiedSince) =>
      _$this._ifUnmodifiedSince = ifUnmodifiedSince;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  int? _partNumber;
  int? get partNumber => _$this._partNumber;
  set partNumber(int? partNumber) => _$this._partNumber = partNumber;

  String? _range;
  String? get range => _$this._range;
  set range(String? range) => _$this._range = range;

  _i4.RequestPayer? _requestPayer;
  _i4.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i4.RequestPayer? requestPayer) =>
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

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  HeadObjectRequestBuilder() {
    HeadObjectRequest._init(this);
  }

  HeadObjectRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _checksumMode = $v.checksumMode;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _ifMatch = $v.ifMatch;
      _ifModifiedSince = $v.ifModifiedSince;
      _ifNoneMatch = $v.ifNoneMatch;
      _ifUnmodifiedSince = $v.ifUnmodifiedSince;
      _key = $v.key;
      _partNumber = $v.partNumber;
      _range = $v.range;
      _requestPayer = $v.requestPayer;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKey = $v.sseCustomerKey;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HeadObjectRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HeadObjectRequest;
  }

  @override
  void update(void Function(HeadObjectRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HeadObjectRequest build() => _build();

  _$HeadObjectRequest _build() {
    final _$result = _$v ??
        new _$HeadObjectRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'HeadObjectRequest', 'bucket'),
            checksumMode: checksumMode,
            expectedBucketOwner: expectedBucketOwner,
            ifMatch: ifMatch,
            ifModifiedSince: ifModifiedSince,
            ifNoneMatch: ifNoneMatch,
            ifUnmodifiedSince: ifUnmodifiedSince,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'HeadObjectRequest', 'key'),
            partNumber: partNumber,
            range: range,
            requestPayer: requestPayer,
            sseCustomerAlgorithm: sseCustomerAlgorithm,
            sseCustomerKey: sseCustomerKey,
            sseCustomerKeyMd5: sseCustomerKeyMd5,
            versionId: versionId);
    replace(_$result);
    return _$result;
  }
}

class _$HeadObjectRequestPayload extends HeadObjectRequestPayload {
  factory _$HeadObjectRequestPayload(
          [void Function(HeadObjectRequestPayloadBuilder)? updates]) =>
      (new HeadObjectRequestPayloadBuilder()..update(updates))._build();

  _$HeadObjectRequestPayload._() : super._();

  @override
  HeadObjectRequestPayload rebuild(
          void Function(HeadObjectRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HeadObjectRequestPayloadBuilder toBuilder() =>
      new HeadObjectRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HeadObjectRequestPayload;
  }

  @override
  int get hashCode {
    return 3842499;
  }
}

class HeadObjectRequestPayloadBuilder
    implements
        Builder<HeadObjectRequestPayload, HeadObjectRequestPayloadBuilder> {
  _$HeadObjectRequestPayload? _$v;

  HeadObjectRequestPayloadBuilder() {
    HeadObjectRequestPayload._init(this);
  }

  @override
  void replace(HeadObjectRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HeadObjectRequestPayload;
  }

  @override
  void update(void Function(HeadObjectRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HeadObjectRequestPayload build() => _build();

  _$HeadObjectRequestPayload _build() {
    final _$result = _$v ?? new _$HeadObjectRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
