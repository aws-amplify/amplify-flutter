// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_parts_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListPartsRequest extends ListPartsRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String key;
  @override
  final int? maxParts;
  @override
  final String? partNumberMarker;
  @override
  final _i3.RequestPayer? requestPayer;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String uploadId;

  factory _$ListPartsRequest(
          [void Function(ListPartsRequestBuilder)? updates]) =>
      (new ListPartsRequestBuilder()..update(updates))._build();

  _$ListPartsRequest._(
      {required this.bucket,
      this.expectedBucketOwner,
      required this.key,
      this.maxParts,
      this.partNumberMarker,
      this.requestPayer,
      this.sseCustomerAlgorithm,
      this.sseCustomerKey,
      this.sseCustomerKeyMd5,
      required this.uploadId})
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
        expectedBucketOwner == other.expectedBucketOwner &&
        key == other.key &&
        maxParts == other.maxParts &&
        partNumberMarker == other.partNumberMarker &&
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
                                    $jc($jc(0, bucket.hashCode),
                                        expectedBucketOwner.hashCode),
                                    key.hashCode),
                                maxParts.hashCode),
                            partNumberMarker.hashCode),
                        requestPayer.hashCode),
                    sseCustomerAlgorithm.hashCode),
                sseCustomerKey.hashCode),
            sseCustomerKeyMd5.hashCode),
        uploadId.hashCode));
  }
}

class ListPartsRequestBuilder
    implements Builder<ListPartsRequest, ListPartsRequestBuilder> {
  _$ListPartsRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

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

  _i3.RequestPayer? _requestPayer;
  _i3.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i3.RequestPayer? requestPayer) =>
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

  ListPartsRequestBuilder() {
    ListPartsRequest._init(this);
  }

  ListPartsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _key = $v.key;
      _maxParts = $v.maxParts;
      _partNumberMarker = $v.partNumberMarker;
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
            expectedBucketOwner: expectedBucketOwner,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'ListPartsRequest', 'key'),
            maxParts: maxParts,
            partNumberMarker: partNumberMarker,
            requestPayer: requestPayer,
            sseCustomerAlgorithm: sseCustomerAlgorithm,
            sseCustomerKey: sseCustomerKey,
            sseCustomerKeyMd5: sseCustomerKeyMd5,
            uploadId: BuiltValueNullFieldError.checkNotNull(
                uploadId, r'ListPartsRequest', 'uploadId'));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
