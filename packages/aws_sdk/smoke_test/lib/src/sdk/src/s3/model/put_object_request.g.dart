// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_object_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutObjectRequest extends PutObjectRequest {
  @override
  final ObjectCannedAcl? acl;
  @override
  final _i2.Stream<List<int>> body;
  @override
  final String bucket;
  @override
  final String? cacheControl;
  @override
  final String? contentDisposition;
  @override
  final String? contentEncoding;
  @override
  final String? contentLanguage;
  @override
  final _i4.Int64? contentLength;
  @override
  final String? contentMd5;
  @override
  final String? contentType;
  @override
  final ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;
  @override
  final DateTime? expires;
  @override
  final String? grantFullControl;
  @override
  final String? grantRead;
  @override
  final String? grantReadAcp;
  @override
  final String? grantWriteAcp;
  @override
  final String key;
  @override
  final _i5.BuiltMap<String, String>? metadata;
  @override
  final ServerSideEncryption? serverSideEncryption;
  @override
  final StorageClass? storageClass;
  @override
  final String? websiteRedirectLocation;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String? ssekmsKeyId;
  @override
  final String? ssekmsEncryptionContext;
  @override
  final bool? bucketKeyEnabled;
  @override
  final RequestPayer? requestPayer;
  @override
  final String? tagging;
  @override
  final ObjectLockMode? objectLockMode;
  @override
  final DateTime? objectLockRetainUntilDate;
  @override
  final ObjectLockLegalHoldStatus? objectLockLegalHoldStatus;
  @override
  final String? expectedBucketOwner;

  factory _$PutObjectRequest(
          [void Function(PutObjectRequestBuilder)? updates]) =>
      (new PutObjectRequestBuilder()..update(updates))._build();

  _$PutObjectRequest._(
      {this.acl,
      required this.body,
      required this.bucket,
      this.cacheControl,
      this.contentDisposition,
      this.contentEncoding,
      this.contentLanguage,
      this.contentLength,
      this.contentMd5,
      this.contentType,
      this.checksumAlgorithm,
      this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256,
      this.expires,
      this.grantFullControl,
      this.grantRead,
      this.grantReadAcp,
      this.grantWriteAcp,
      required this.key,
      this.metadata,
      this.serverSideEncryption,
      this.storageClass,
      this.websiteRedirectLocation,
      this.sseCustomerAlgorithm,
      this.sseCustomerKey,
      this.sseCustomerKeyMd5,
      this.ssekmsKeyId,
      this.ssekmsEncryptionContext,
      this.bucketKeyEnabled,
      this.requestPayer,
      this.tagging,
      this.objectLockMode,
      this.objectLockRetainUntilDate,
      this.objectLockLegalHoldStatus,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(body, r'PutObjectRequest', 'body');
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutObjectRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(key, r'PutObjectRequest', 'key');
  }

  @override
  PutObjectRequest rebuild(void Function(PutObjectRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectRequestBuilder toBuilder() =>
      new PutObjectRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectRequest &&
        acl == other.acl &&
        body == other.body &&
        bucket == other.bucket &&
        cacheControl == other.cacheControl &&
        contentDisposition == other.contentDisposition &&
        contentEncoding == other.contentEncoding &&
        contentLanguage == other.contentLanguage &&
        contentLength == other.contentLength &&
        contentMd5 == other.contentMd5 &&
        contentType == other.contentType &&
        checksumAlgorithm == other.checksumAlgorithm &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        expires == other.expires &&
        grantFullControl == other.grantFullControl &&
        grantRead == other.grantRead &&
        grantReadAcp == other.grantReadAcp &&
        grantWriteAcp == other.grantWriteAcp &&
        key == other.key &&
        metadata == other.metadata &&
        serverSideEncryption == other.serverSideEncryption &&
        storageClass == other.storageClass &&
        websiteRedirectLocation == other.websiteRedirectLocation &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKey == other.sseCustomerKey &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        ssekmsKeyId == other.ssekmsKeyId &&
        ssekmsEncryptionContext == other.ssekmsEncryptionContext &&
        bucketKeyEnabled == other.bucketKeyEnabled &&
        requestPayer == other.requestPayer &&
        tagging == other.tagging &&
        objectLockMode == other.objectLockMode &&
        objectLockRetainUntilDate == other.objectLockRetainUntilDate &&
        objectLockLegalHoldStatus == other.objectLockLegalHoldStatus &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, acl.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, cacheControl.hashCode);
    _$hash = $jc(_$hash, contentDisposition.hashCode);
    _$hash = $jc(_$hash, contentEncoding.hashCode);
    _$hash = $jc(_$hash, contentLanguage.hashCode);
    _$hash = $jc(_$hash, contentLength.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, checksumCrc32.hashCode);
    _$hash = $jc(_$hash, checksumCrc32C.hashCode);
    _$hash = $jc(_$hash, checksumSha1.hashCode);
    _$hash = $jc(_$hash, checksumSha256.hashCode);
    _$hash = $jc(_$hash, expires.hashCode);
    _$hash = $jc(_$hash, grantFullControl.hashCode);
    _$hash = $jc(_$hash, grantRead.hashCode);
    _$hash = $jc(_$hash, grantReadAcp.hashCode);
    _$hash = $jc(_$hash, grantWriteAcp.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, serverSideEncryption.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jc(_$hash, websiteRedirectLocation.hashCode);
    _$hash = $jc(_$hash, sseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, sseCustomerKey.hashCode);
    _$hash = $jc(_$hash, sseCustomerKeyMd5.hashCode);
    _$hash = $jc(_$hash, ssekmsKeyId.hashCode);
    _$hash = $jc(_$hash, ssekmsEncryptionContext.hashCode);
    _$hash = $jc(_$hash, bucketKeyEnabled.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, tagging.hashCode);
    _$hash = $jc(_$hash, objectLockMode.hashCode);
    _$hash = $jc(_$hash, objectLockRetainUntilDate.hashCode);
    _$hash = $jc(_$hash, objectLockLegalHoldStatus.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutObjectRequestBuilder
    implements Builder<PutObjectRequest, PutObjectRequestBuilder> {
  _$PutObjectRequest? _$v;

  ObjectCannedAcl? _acl;
  ObjectCannedAcl? get acl => _$this._acl;
  set acl(ObjectCannedAcl? acl) => _$this._acl = acl;

  _i2.Stream<List<int>>? _body;
  _i2.Stream<List<int>>? get body => _$this._body;
  set body(_i2.Stream<List<int>>? body) => _$this._body = body;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _cacheControl;
  String? get cacheControl => _$this._cacheControl;
  set cacheControl(String? cacheControl) => _$this._cacheControl = cacheControl;

  String? _contentDisposition;
  String? get contentDisposition => _$this._contentDisposition;
  set contentDisposition(String? contentDisposition) =>
      _$this._contentDisposition = contentDisposition;

  String? _contentEncoding;
  String? get contentEncoding => _$this._contentEncoding;
  set contentEncoding(String? contentEncoding) =>
      _$this._contentEncoding = contentEncoding;

  String? _contentLanguage;
  String? get contentLanguage => _$this._contentLanguage;
  set contentLanguage(String? contentLanguage) =>
      _$this._contentLanguage = contentLanguage;

  _i4.Int64? _contentLength;
  _i4.Int64? get contentLength => _$this._contentLength;
  set contentLength(_i4.Int64? contentLength) =>
      _$this._contentLength = contentLength;

  String? _contentMd5;
  String? get contentMd5 => _$this._contentMd5;
  set contentMd5(String? contentMd5) => _$this._contentMd5 = contentMd5;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  ChecksumAlgorithm? _checksumAlgorithm;
  ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(ChecksumAlgorithm? checksumAlgorithm) =>
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

  DateTime? _expires;
  DateTime? get expires => _$this._expires;
  set expires(DateTime? expires) => _$this._expires = expires;

  String? _grantFullControl;
  String? get grantFullControl => _$this._grantFullControl;
  set grantFullControl(String? grantFullControl) =>
      _$this._grantFullControl = grantFullControl;

  String? _grantRead;
  String? get grantRead => _$this._grantRead;
  set grantRead(String? grantRead) => _$this._grantRead = grantRead;

  String? _grantReadAcp;
  String? get grantReadAcp => _$this._grantReadAcp;
  set grantReadAcp(String? grantReadAcp) => _$this._grantReadAcp = grantReadAcp;

  String? _grantWriteAcp;
  String? get grantWriteAcp => _$this._grantWriteAcp;
  set grantWriteAcp(String? grantWriteAcp) =>
      _$this._grantWriteAcp = grantWriteAcp;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  _i5.MapBuilder<String, String>? _metadata;
  _i5.MapBuilder<String, String> get metadata =>
      _$this._metadata ??= new _i5.MapBuilder<String, String>();
  set metadata(_i5.MapBuilder<String, String>? metadata) =>
      _$this._metadata = metadata;

  ServerSideEncryption? _serverSideEncryption;
  ServerSideEncryption? get serverSideEncryption =>
      _$this._serverSideEncryption;
  set serverSideEncryption(ServerSideEncryption? serverSideEncryption) =>
      _$this._serverSideEncryption = serverSideEncryption;

  StorageClass? _storageClass;
  StorageClass? get storageClass => _$this._storageClass;
  set storageClass(StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  String? _websiteRedirectLocation;
  String? get websiteRedirectLocation => _$this._websiteRedirectLocation;
  set websiteRedirectLocation(String? websiteRedirectLocation) =>
      _$this._websiteRedirectLocation = websiteRedirectLocation;

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

  String? _ssekmsKeyId;
  String? get ssekmsKeyId => _$this._ssekmsKeyId;
  set ssekmsKeyId(String? ssekmsKeyId) => _$this._ssekmsKeyId = ssekmsKeyId;

  String? _ssekmsEncryptionContext;
  String? get ssekmsEncryptionContext => _$this._ssekmsEncryptionContext;
  set ssekmsEncryptionContext(String? ssekmsEncryptionContext) =>
      _$this._ssekmsEncryptionContext = ssekmsEncryptionContext;

  bool? _bucketKeyEnabled;
  bool? get bucketKeyEnabled => _$this._bucketKeyEnabled;
  set bucketKeyEnabled(bool? bucketKeyEnabled) =>
      _$this._bucketKeyEnabled = bucketKeyEnabled;

  RequestPayer? _requestPayer;
  RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _tagging;
  String? get tagging => _$this._tagging;
  set tagging(String? tagging) => _$this._tagging = tagging;

  ObjectLockMode? _objectLockMode;
  ObjectLockMode? get objectLockMode => _$this._objectLockMode;
  set objectLockMode(ObjectLockMode? objectLockMode) =>
      _$this._objectLockMode = objectLockMode;

  DateTime? _objectLockRetainUntilDate;
  DateTime? get objectLockRetainUntilDate => _$this._objectLockRetainUntilDate;
  set objectLockRetainUntilDate(DateTime? objectLockRetainUntilDate) =>
      _$this._objectLockRetainUntilDate = objectLockRetainUntilDate;

  ObjectLockLegalHoldStatus? _objectLockLegalHoldStatus;
  ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus =>
      _$this._objectLockLegalHoldStatus;
  set objectLockLegalHoldStatus(
          ObjectLockLegalHoldStatus? objectLockLegalHoldStatus) =>
      _$this._objectLockLegalHoldStatus = objectLockLegalHoldStatus;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutObjectRequestBuilder() {
    PutObjectRequest._init(this);
  }

  PutObjectRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _acl = $v.acl;
      _body = $v.body;
      _bucket = $v.bucket;
      _cacheControl = $v.cacheControl;
      _contentDisposition = $v.contentDisposition;
      _contentEncoding = $v.contentEncoding;
      _contentLanguage = $v.contentLanguage;
      _contentLength = $v.contentLength;
      _contentMd5 = $v.contentMd5;
      _contentType = $v.contentType;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _expires = $v.expires;
      _grantFullControl = $v.grantFullControl;
      _grantRead = $v.grantRead;
      _grantReadAcp = $v.grantReadAcp;
      _grantWriteAcp = $v.grantWriteAcp;
      _key = $v.key;
      _metadata = $v.metadata?.toBuilder();
      _serverSideEncryption = $v.serverSideEncryption;
      _storageClass = $v.storageClass;
      _websiteRedirectLocation = $v.websiteRedirectLocation;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKey = $v.sseCustomerKey;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _ssekmsKeyId = $v.ssekmsKeyId;
      _ssekmsEncryptionContext = $v.ssekmsEncryptionContext;
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _requestPayer = $v.requestPayer;
      _tagging = $v.tagging;
      _objectLockMode = $v.objectLockMode;
      _objectLockRetainUntilDate = $v.objectLockRetainUntilDate;
      _objectLockLegalHoldStatus = $v.objectLockLegalHoldStatus;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutObjectRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectRequest;
  }

  @override
  void update(void Function(PutObjectRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectRequest build() => _build();

  _$PutObjectRequest _build() {
    _$PutObjectRequest _$result;
    try {
      _$result = _$v ??
          new _$PutObjectRequest._(
              acl: acl,
              body: BuiltValueNullFieldError.checkNotNull(
                  body, r'PutObjectRequest', 'body'),
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutObjectRequest', 'bucket'),
              cacheControl: cacheControl,
              contentDisposition: contentDisposition,
              contentEncoding: contentEncoding,
              contentLanguage: contentLanguage,
              contentLength: contentLength,
              contentMd5: contentMd5,
              contentType: contentType,
              checksumAlgorithm: checksumAlgorithm,
              checksumCrc32: checksumCrc32,
              checksumCrc32C: checksumCrc32C,
              checksumSha1: checksumSha1,
              checksumSha256: checksumSha256,
              expires: expires,
              grantFullControl: grantFullControl,
              grantRead: grantRead,
              grantReadAcp: grantReadAcp,
              grantWriteAcp: grantWriteAcp,
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'PutObjectRequest', 'key'),
              metadata: _metadata?.build(),
              serverSideEncryption: serverSideEncryption,
              storageClass: storageClass,
              websiteRedirectLocation: websiteRedirectLocation,
              sseCustomerAlgorithm: sseCustomerAlgorithm,
              sseCustomerKey: sseCustomerKey,
              sseCustomerKeyMd5: sseCustomerKeyMd5,
              ssekmsKeyId: ssekmsKeyId,
              ssekmsEncryptionContext: ssekmsEncryptionContext,
              bucketKeyEnabled: bucketKeyEnabled,
              requestPayer: requestPayer,
              tagging: tagging,
              objectLockMode: objectLockMode,
              objectLockRetainUntilDate: objectLockRetainUntilDate,
              objectLockLegalHoldStatus: objectLockLegalHoldStatus,
              expectedBucketOwner: expectedBucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutObjectRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
