// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.get_object_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectRequest extends GetObjectRequest {
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
  final String? responseCacheControl;
  @override
  final String? responseContentDisposition;
  @override
  final String? responseContentEncoding;
  @override
  final String? responseContentLanguage;
  @override
  final String? responseContentType;
  @override
  final DateTime? responseExpires;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String? versionId;

  factory _$GetObjectRequest(
          [void Function(GetObjectRequestBuilder)? updates]) =>
      (new GetObjectRequestBuilder()..update(updates))._build();

  _$GetObjectRequest._(
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
      this.responseCacheControl,
      this.responseContentDisposition,
      this.responseContentEncoding,
      this.responseContentLanguage,
      this.responseContentType,
      this.responseExpires,
      this.sseCustomerAlgorithm,
      this.sseCustomerKey,
      this.sseCustomerKeyMd5,
      this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetObjectRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(key, r'GetObjectRequest', 'key');
  }

  @override
  GetObjectRequest rebuild(void Function(GetObjectRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectRequestBuilder toBuilder() =>
      new GetObjectRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectRequest &&
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
        responseCacheControl == other.responseCacheControl &&
        responseContentDisposition == other.responseContentDisposition &&
        responseContentEncoding == other.responseContentEncoding &&
        responseContentLanguage == other.responseContentLanguage &&
        responseContentType == other.responseContentType &&
        responseExpires == other.responseExpires &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKey == other.sseCustomerKey &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        versionId == other.versionId;
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
                                                                        $jc(
                                                                            $jc($jc($jc(0, bucket.hashCode), checksumMode.hashCode),
                                                                                expectedBucketOwner.hashCode),
                                                                            ifMatch.hashCode),
                                                                        ifModifiedSince.hashCode),
                                                                    ifNoneMatch.hashCode),
                                                                ifUnmodifiedSince.hashCode),
                                                            key.hashCode),
                                                        partNumber.hashCode),
                                                    range.hashCode),
                                                requestPayer.hashCode),
                                            responseCacheControl.hashCode),
                                        responseContentDisposition.hashCode),
                                    responseContentEncoding.hashCode),
                                responseContentLanguage.hashCode),
                            responseContentType.hashCode),
                        responseExpires.hashCode),
                    sseCustomerAlgorithm.hashCode),
                sseCustomerKey.hashCode),
            sseCustomerKeyMd5.hashCode),
        versionId.hashCode));
  }
}

class GetObjectRequestBuilder
    implements Builder<GetObjectRequest, GetObjectRequestBuilder> {
  _$GetObjectRequest? _$v;

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

  String? _responseCacheControl;
  String? get responseCacheControl => _$this._responseCacheControl;
  set responseCacheControl(String? responseCacheControl) =>
      _$this._responseCacheControl = responseCacheControl;

  String? _responseContentDisposition;
  String? get responseContentDisposition => _$this._responseContentDisposition;
  set responseContentDisposition(String? responseContentDisposition) =>
      _$this._responseContentDisposition = responseContentDisposition;

  String? _responseContentEncoding;
  String? get responseContentEncoding => _$this._responseContentEncoding;
  set responseContentEncoding(String? responseContentEncoding) =>
      _$this._responseContentEncoding = responseContentEncoding;

  String? _responseContentLanguage;
  String? get responseContentLanguage => _$this._responseContentLanguage;
  set responseContentLanguage(String? responseContentLanguage) =>
      _$this._responseContentLanguage = responseContentLanguage;

  String? _responseContentType;
  String? get responseContentType => _$this._responseContentType;
  set responseContentType(String? responseContentType) =>
      _$this._responseContentType = responseContentType;

  DateTime? _responseExpires;
  DateTime? get responseExpires => _$this._responseExpires;
  set responseExpires(DateTime? responseExpires) =>
      _$this._responseExpires = responseExpires;

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

  GetObjectRequestBuilder() {
    GetObjectRequest._init(this);
  }

  GetObjectRequestBuilder get _$this {
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
      _responseCacheControl = $v.responseCacheControl;
      _responseContentDisposition = $v.responseContentDisposition;
      _responseContentEncoding = $v.responseContentEncoding;
      _responseContentLanguage = $v.responseContentLanguage;
      _responseContentType = $v.responseContentType;
      _responseExpires = $v.responseExpires;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKey = $v.sseCustomerKey;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectRequest;
  }

  @override
  void update(void Function(GetObjectRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectRequest build() => _build();

  _$GetObjectRequest _build() {
    final _$result = _$v ??
        new _$GetObjectRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetObjectRequest', 'bucket'),
            checksumMode: checksumMode,
            expectedBucketOwner: expectedBucketOwner,
            ifMatch: ifMatch,
            ifModifiedSince: ifModifiedSince,
            ifNoneMatch: ifNoneMatch,
            ifUnmodifiedSince: ifUnmodifiedSince,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GetObjectRequest', 'key'),
            partNumber: partNumber,
            range: range,
            requestPayer: requestPayer,
            responseCacheControl: responseCacheControl,
            responseContentDisposition: responseContentDisposition,
            responseContentEncoding: responseContentEncoding,
            responseContentLanguage: responseContentLanguage,
            responseContentType: responseContentType,
            responseExpires: responseExpires,
            sseCustomerAlgorithm: sseCustomerAlgorithm,
            sseCustomerKey: sseCustomerKey,
            sseCustomerKeyMd5: sseCustomerKeyMd5,
            versionId: versionId);
    replace(_$result);
    return _$result;
  }
}

class _$GetObjectRequestPayload extends GetObjectRequestPayload {
  factory _$GetObjectRequestPayload(
          [void Function(GetObjectRequestPayloadBuilder)? updates]) =>
      (new GetObjectRequestPayloadBuilder()..update(updates))._build();

  _$GetObjectRequestPayload._() : super._();

  @override
  GetObjectRequestPayload rebuild(
          void Function(GetObjectRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectRequestPayloadBuilder toBuilder() =>
      new GetObjectRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectRequestPayload;
  }

  @override
  int get hashCode {
    return 267380927;
  }
}

class GetObjectRequestPayloadBuilder
    implements
        Builder<GetObjectRequestPayload, GetObjectRequestPayloadBuilder> {
  _$GetObjectRequestPayload? _$v;

  GetObjectRequestPayloadBuilder() {
    GetObjectRequestPayload._init(this);
  }

  @override
  void replace(GetObjectRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectRequestPayload;
  }

  @override
  void update(void Function(GetObjectRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectRequestPayload build() => _build();

  _$GetObjectRequestPayload _build() {
    final _$result = _$v ?? new _$GetObjectRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
