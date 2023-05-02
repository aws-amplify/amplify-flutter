// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.list_parts_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListPartsRequest extends ListPartsRequest {
  @override
  final String bucket;
  @override
  final String key;
  @override
  final int? maxParts;
  @override
  final String? partNumberMarker;
  @override
  final String uploadId;
  @override
  final _i3.RequestPayer? requestPayer;
  @override
  final String? expectedBucketOwner;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;

  factory _$ListPartsRequest(
          [void Function(ListPartsRequestBuilder)? updates]) =>
      (new ListPartsRequestBuilder()..update(updates))._build();

  _$ListPartsRequest._(
      {required this.bucket,
      required this.key,
      this.maxParts,
      this.partNumberMarker,
      required this.uploadId,
      this.requestPayer,
      this.expectedBucketOwner,
      this.sseCustomerAlgorithm,
      this.sseCustomerKey,
      this.sseCustomerKeyMd5})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'ListPartsRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(key, r'ListPartsRequest', 'key');
    BuiltValueNullFieldError.checkNotNull(
        uploadId, r'ListPartsRequest', 'uploadId');
  }

  @override
  ListPartsRequest rebuild(void Function(ListPartsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPartsRequestBuilder toBuilder() =>
      new ListPartsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPartsRequest &&
        bucket == other.bucket &&
        key == other.key &&
        maxParts == other.maxParts &&
        partNumberMarker == other.partNumberMarker &&
        uploadId == other.uploadId &&
        requestPayer == other.requestPayer &&
        expectedBucketOwner == other.expectedBucketOwner &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKey == other.sseCustomerKey &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, maxParts.hashCode);
    _$hash = $jc(_$hash, partNumberMarker.hashCode);
    _$hash = $jc(_$hash, uploadId.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, sseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, sseCustomerKey.hashCode);
    _$hash = $jc(_$hash, sseCustomerKeyMd5.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListPartsRequestBuilder
    implements Builder<ListPartsRequest, ListPartsRequestBuilder> {
  _$ListPartsRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  int? _maxParts;
  int? get maxParts => _$this._maxParts;
  set maxParts(int? maxParts) => _$this._maxParts = maxParts;

  String? _partNumberMarker;
  String? get partNumberMarker => _$this._partNumberMarker;
  set partNumberMarker(String? partNumberMarker) =>
      _$this._partNumberMarker = partNumberMarker;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  _i3.RequestPayer? _requestPayer;
  _i3.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i3.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

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

  ListPartsRequestBuilder() {
    ListPartsRequest._init(this);
  }

  ListPartsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _key = $v.key;
      _maxParts = $v.maxParts;
      _partNumberMarker = $v.partNumberMarker;
      _uploadId = $v.uploadId;
      _requestPayer = $v.requestPayer;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKey = $v.sseCustomerKey;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListPartsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListPartsRequest;
  }

  @override
  void update(void Function(ListPartsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListPartsRequest build() => _build();

  _$ListPartsRequest _build() {
    final _$result = _$v ??
        new _$ListPartsRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'ListPartsRequest', 'bucket'),
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'ListPartsRequest', 'key'),
            maxParts: maxParts,
            partNumberMarker: partNumberMarker,
            uploadId: BuiltValueNullFieldError.checkNotNull(
                uploadId, r'ListPartsRequest', 'uploadId'),
            requestPayer: requestPayer,
            expectedBucketOwner: expectedBucketOwner,
            sseCustomerAlgorithm: sseCustomerAlgorithm,
            sseCustomerKey: sseCustomerKey,
            sseCustomerKeyMd5: sseCustomerKeyMd5);
    replace(_$result);
    return _$result;
  }
}

class _$ListPartsRequestPayload extends ListPartsRequestPayload {
  factory _$ListPartsRequestPayload(
          [void Function(ListPartsRequestPayloadBuilder)? updates]) =>
      (new ListPartsRequestPayloadBuilder()..update(updates))._build();

  _$ListPartsRequestPayload._() : super._();

  @override
  ListPartsRequestPayload rebuild(
          void Function(ListPartsRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPartsRequestPayloadBuilder toBuilder() =>
      new ListPartsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPartsRequestPayload;
  }

  @override
  int get hashCode {
    return 591976742;
  }
}

class ListPartsRequestPayloadBuilder
    implements
        Builder<ListPartsRequestPayload, ListPartsRequestPayloadBuilder> {
  _$ListPartsRequestPayload? _$v;

  ListPartsRequestPayloadBuilder() {
    ListPartsRequestPayload._init(this);
  }

  @override
  void replace(ListPartsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListPartsRequestPayload;
  }

  @override
  void update(void Function(ListPartsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListPartsRequestPayload build() => _build();

  _$ListPartsRequestPayload _build() {
    final _$result = _$v ?? new _$ListPartsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
