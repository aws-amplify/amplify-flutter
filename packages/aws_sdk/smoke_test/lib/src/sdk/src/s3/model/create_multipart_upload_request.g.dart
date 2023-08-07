// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_multipart_upload_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateMultipartUploadRequest extends CreateMultipartUploadRequest {
  @override
  final ObjectCannedAcl? acl;
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
  final String? contentType;
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
  final _i3.BuiltMap<String, String>? metadata;
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
  @override
  final ChecksumAlgorithm? checksumAlgorithm;

  factory _$CreateMultipartUploadRequest(
          [void Function(CreateMultipartUploadRequestBuilder)? updates]) =>
      (new CreateMultipartUploadRequestBuilder()..update(updates))._build();

  _$CreateMultipartUploadRequest._(
      {this.acl,
      required this.bucket,
      this.cacheControl,
      this.contentDisposition,
      this.contentEncoding,
      this.contentLanguage,
      this.contentType,
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
      this.expectedBucketOwner,
      this.checksumAlgorithm})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'CreateMultipartUploadRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'CreateMultipartUploadRequest', 'key');
  }

  @override
  CreateMultipartUploadRequest rebuild(
          void Function(CreateMultipartUploadRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMultipartUploadRequestBuilder toBuilder() =>
      new CreateMultipartUploadRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMultipartUploadRequest &&
        acl == other.acl &&
        bucket == other.bucket &&
        cacheControl == other.cacheControl &&
        contentDisposition == other.contentDisposition &&
        contentEncoding == other.contentEncoding &&
        contentLanguage == other.contentLanguage &&
        contentType == other.contentType &&
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
        expectedBucketOwner == other.expectedBucketOwner &&
        checksumAlgorithm == other.checksumAlgorithm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, acl.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, cacheControl.hashCode);
    _$hash = $jc(_$hash, contentDisposition.hashCode);
    _$hash = $jc(_$hash, contentEncoding.hashCode);
    _$hash = $jc(_$hash, contentLanguage.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
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
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateMultipartUploadRequestBuilder
    implements
        Builder<CreateMultipartUploadRequest,
            CreateMultipartUploadRequestBuilder> {
  _$CreateMultipartUploadRequest? _$v;

  ObjectCannedAcl? _acl;
  ObjectCannedAcl? get acl => _$this._acl;
  set acl(ObjectCannedAcl? acl) => _$this._acl = acl;

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

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

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

  _i3.MapBuilder<String, String>? _metadata;
  _i3.MapBuilder<String, String> get metadata =>
      _$this._metadata ??= new _i3.MapBuilder<String, String>();
  set metadata(_i3.MapBuilder<String, String>? metadata) =>
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

  ChecksumAlgorithm? _checksumAlgorithm;
  ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  CreateMultipartUploadRequestBuilder();

  CreateMultipartUploadRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _acl = $v.acl;
      _bucket = $v.bucket;
      _cacheControl = $v.cacheControl;
      _contentDisposition = $v.contentDisposition;
      _contentEncoding = $v.contentEncoding;
      _contentLanguage = $v.contentLanguage;
      _contentType = $v.contentType;
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
      _checksumAlgorithm = $v.checksumAlgorithm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateMultipartUploadRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateMultipartUploadRequest;
  }

  @override
  void update(void Function(CreateMultipartUploadRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateMultipartUploadRequest build() => _build();

  _$CreateMultipartUploadRequest _build() {
    _$CreateMultipartUploadRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateMultipartUploadRequest._(
              acl: acl,
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'CreateMultipartUploadRequest', 'bucket'),
              cacheControl: cacheControl,
              contentDisposition: contentDisposition,
              contentEncoding: contentEncoding,
              contentLanguage: contentLanguage,
              contentType: contentType,
              expires: expires,
              grantFullControl: grantFullControl,
              grantRead: grantRead,
              grantReadAcp: grantReadAcp,
              grantWriteAcp: grantWriteAcp,
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'CreateMultipartUploadRequest', 'key'),
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
              expectedBucketOwner: expectedBucketOwner,
              checksumAlgorithm: checksumAlgorithm);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateMultipartUploadRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreateMultipartUploadRequestPayload
    extends CreateMultipartUploadRequestPayload {
  factory _$CreateMultipartUploadRequestPayload(
          [void Function(CreateMultipartUploadRequestPayloadBuilder)?
              updates]) =>
      (new CreateMultipartUploadRequestPayloadBuilder()..update(updates))
          ._build();

  _$CreateMultipartUploadRequestPayload._() : super._();

  @override
  CreateMultipartUploadRequestPayload rebuild(
          void Function(CreateMultipartUploadRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMultipartUploadRequestPayloadBuilder toBuilder() =>
      new CreateMultipartUploadRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMultipartUploadRequestPayload;
  }

  @override
  int get hashCode {
    return 904877406;
  }
}

class CreateMultipartUploadRequestPayloadBuilder
    implements
        Builder<CreateMultipartUploadRequestPayload,
            CreateMultipartUploadRequestPayloadBuilder> {
  _$CreateMultipartUploadRequestPayload? _$v;

  CreateMultipartUploadRequestPayloadBuilder();

  @override
  void replace(CreateMultipartUploadRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateMultipartUploadRequestPayload;
  }

  @override
  void update(
      void Function(CreateMultipartUploadRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateMultipartUploadRequestPayload build() => _build();

  _$CreateMultipartUploadRequestPayload _build() {
    final _$result = _$v ?? new _$CreateMultipartUploadRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
