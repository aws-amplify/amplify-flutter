// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.put_object_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutObjectRequest extends PutObjectRequest {
  @override
  final _i4.ObjectCannedAcl? acl;
  @override
  final _i2.Stream<List<int>>? body;
  @override
  final String bucket;
  @override
  final bool? bucketKeyEnabled;
  @override
  final String? cacheControl;
  @override
  final _i5.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;
  @override
  final String? contentDisposition;
  @override
  final String? contentEncoding;
  @override
  final String? contentLanguage;
  @override
  final _i6.Int64? contentLength;
  @override
  final String? contentMd5;
  @override
  final String? contentType;
  @override
  final String? expectedBucketOwner;
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
  final _i7.BuiltMap<String, String>? metadata;
  @override
  final _i8.ObjectLockLegalHoldStatus? objectLockLegalHoldStatus;
  @override
  final _i9.ObjectLockMode? objectLockMode;
  @override
  final DateTime? objectLockRetainUntilDate;
  @override
  final _i10.RequestPayer? requestPayer;
  @override
  final _i11.ServerSideEncryption? serverSideEncryption;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String? ssekmsEncryptionContext;
  @override
  final String? ssekmsKeyId;
  @override
  final _i12.StorageClass? storageClass;
  @override
  final String? tagging;
  @override
  final String? websiteRedirectLocation;

  factory _$PutObjectRequest(
          [void Function(PutObjectRequestBuilder)? updates]) =>
      (new PutObjectRequestBuilder()..update(updates))._build();

  _$PutObjectRequest._(
      {this.acl,
      this.body,
      required this.bucket,
      this.bucketKeyEnabled,
      this.cacheControl,
      this.checksumAlgorithm,
      this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256,
      this.contentDisposition,
      this.contentEncoding,
      this.contentLanguage,
      this.contentLength,
      this.contentMd5,
      this.contentType,
      this.expectedBucketOwner,
      this.expires,
      this.grantFullControl,
      this.grantRead,
      this.grantReadAcp,
      this.grantWriteAcp,
      required this.key,
      this.metadata,
      this.objectLockLegalHoldStatus,
      this.objectLockMode,
      this.objectLockRetainUntilDate,
      this.requestPayer,
      this.serverSideEncryption,
      this.sseCustomerAlgorithm,
      this.sseCustomerKey,
      this.sseCustomerKeyMd5,
      this.ssekmsEncryptionContext,
      this.ssekmsKeyId,
      this.storageClass,
      this.tagging,
      this.websiteRedirectLocation})
      : super._() {
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
        bucketKeyEnabled == other.bucketKeyEnabled &&
        cacheControl == other.cacheControl &&
        checksumAlgorithm == other.checksumAlgorithm &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        contentDisposition == other.contentDisposition &&
        contentEncoding == other.contentEncoding &&
        contentLanguage == other.contentLanguage &&
        contentLength == other.contentLength &&
        contentMd5 == other.contentMd5 &&
        contentType == other.contentType &&
        expectedBucketOwner == other.expectedBucketOwner &&
        expires == other.expires &&
        grantFullControl == other.grantFullControl &&
        grantRead == other.grantRead &&
        grantReadAcp == other.grantReadAcp &&
        grantWriteAcp == other.grantWriteAcp &&
        key == other.key &&
        metadata == other.metadata &&
        objectLockLegalHoldStatus == other.objectLockLegalHoldStatus &&
        objectLockMode == other.objectLockMode &&
        objectLockRetainUntilDate == other.objectLockRetainUntilDate &&
        requestPayer == other.requestPayer &&
        serverSideEncryption == other.serverSideEncryption &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKey == other.sseCustomerKey &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        ssekmsEncryptionContext == other.ssekmsEncryptionContext &&
        ssekmsKeyId == other.ssekmsKeyId &&
        storageClass == other.storageClass &&
        tagging == other.tagging &&
        websiteRedirectLocation == other.websiteRedirectLocation;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, acl.hashCode), body.hashCode), bucket.hashCode), bucketKeyEnabled.hashCode), cacheControl.hashCode), checksumAlgorithm.hashCode), checksumCrc32.hashCode), checksumCrc32C.hashCode), checksumSha1.hashCode), checksumSha256.hashCode), contentDisposition.hashCode), contentEncoding.hashCode), contentLanguage.hashCode), contentLength.hashCode), contentMd5.hashCode), contentType.hashCode), expectedBucketOwner.hashCode), expires.hashCode),
                                                                                grantFullControl.hashCode),
                                                                            grantRead.hashCode),
                                                                        grantReadAcp.hashCode),
                                                                    grantWriteAcp.hashCode),
                                                                key.hashCode),
                                                            metadata.hashCode),
                                                        objectLockLegalHoldStatus.hashCode),
                                                    objectLockMode.hashCode),
                                                objectLockRetainUntilDate.hashCode),
                                            requestPayer.hashCode),
                                        serverSideEncryption.hashCode),
                                    sseCustomerAlgorithm.hashCode),
                                sseCustomerKey.hashCode),
                            sseCustomerKeyMd5.hashCode),
                        ssekmsEncryptionContext.hashCode),
                    ssekmsKeyId.hashCode),
                storageClass.hashCode),
            tagging.hashCode),
        websiteRedirectLocation.hashCode));
  }
}

class PutObjectRequestBuilder
    implements Builder<PutObjectRequest, PutObjectRequestBuilder> {
  _$PutObjectRequest? _$v;

  _i4.ObjectCannedAcl? _acl;
  _i4.ObjectCannedAcl? get acl => _$this._acl;
  set acl(_i4.ObjectCannedAcl? acl) => _$this._acl = acl;

  _i2.Stream<List<int>>? _body;
  _i2.Stream<List<int>>? get body => _$this._body;
  set body(_i2.Stream<List<int>>? body) => _$this._body = body;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  bool? _bucketKeyEnabled;
  bool? get bucketKeyEnabled => _$this._bucketKeyEnabled;
  set bucketKeyEnabled(bool? bucketKeyEnabled) =>
      _$this._bucketKeyEnabled = bucketKeyEnabled;

  String? _cacheControl;
  String? get cacheControl => _$this._cacheControl;
  set cacheControl(String? cacheControl) => _$this._cacheControl = cacheControl;

  _i5.ChecksumAlgorithm? _checksumAlgorithm;
  _i5.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i5.ChecksumAlgorithm? checksumAlgorithm) =>
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

  _i6.Int64? _contentLength;
  _i6.Int64? get contentLength => _$this._contentLength;
  set contentLength(_i6.Int64? contentLength) =>
      _$this._contentLength = contentLength;

  String? _contentMd5;
  String? get contentMd5 => _$this._contentMd5;
  set contentMd5(String? contentMd5) => _$this._contentMd5 = contentMd5;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

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

  _i7.MapBuilder<String, String>? _metadata;
  _i7.MapBuilder<String, String> get metadata =>
      _$this._metadata ??= new _i7.MapBuilder<String, String>();
  set metadata(_i7.MapBuilder<String, String>? metadata) =>
      _$this._metadata = metadata;

  _i8.ObjectLockLegalHoldStatus? _objectLockLegalHoldStatus;
  _i8.ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus =>
      _$this._objectLockLegalHoldStatus;
  set objectLockLegalHoldStatus(
          _i8.ObjectLockLegalHoldStatus? objectLockLegalHoldStatus) =>
      _$this._objectLockLegalHoldStatus = objectLockLegalHoldStatus;

  _i9.ObjectLockMode? _objectLockMode;
  _i9.ObjectLockMode? get objectLockMode => _$this._objectLockMode;
  set objectLockMode(_i9.ObjectLockMode? objectLockMode) =>
      _$this._objectLockMode = objectLockMode;

  DateTime? _objectLockRetainUntilDate;
  DateTime? get objectLockRetainUntilDate => _$this._objectLockRetainUntilDate;
  set objectLockRetainUntilDate(DateTime? objectLockRetainUntilDate) =>
      _$this._objectLockRetainUntilDate = objectLockRetainUntilDate;

  _i10.RequestPayer? _requestPayer;
  _i10.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i10.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  _i11.ServerSideEncryption? _serverSideEncryption;
  _i11.ServerSideEncryption? get serverSideEncryption =>
      _$this._serverSideEncryption;
  set serverSideEncryption(_i11.ServerSideEncryption? serverSideEncryption) =>
      _$this._serverSideEncryption = serverSideEncryption;

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

  String? _ssekmsEncryptionContext;
  String? get ssekmsEncryptionContext => _$this._ssekmsEncryptionContext;
  set ssekmsEncryptionContext(String? ssekmsEncryptionContext) =>
      _$this._ssekmsEncryptionContext = ssekmsEncryptionContext;

  String? _ssekmsKeyId;
  String? get ssekmsKeyId => _$this._ssekmsKeyId;
  set ssekmsKeyId(String? ssekmsKeyId) => _$this._ssekmsKeyId = ssekmsKeyId;

  _i12.StorageClass? _storageClass;
  _i12.StorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i12.StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  String? _tagging;
  String? get tagging => _$this._tagging;
  set tagging(String? tagging) => _$this._tagging = tagging;

  String? _websiteRedirectLocation;
  String? get websiteRedirectLocation => _$this._websiteRedirectLocation;
  set websiteRedirectLocation(String? websiteRedirectLocation) =>
      _$this._websiteRedirectLocation = websiteRedirectLocation;

  PutObjectRequestBuilder() {
    PutObjectRequest._init(this);
  }

  PutObjectRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _acl = $v.acl;
      _body = $v.body;
      _bucket = $v.bucket;
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _cacheControl = $v.cacheControl;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _contentDisposition = $v.contentDisposition;
      _contentEncoding = $v.contentEncoding;
      _contentLanguage = $v.contentLanguage;
      _contentLength = $v.contentLength;
      _contentMd5 = $v.contentMd5;
      _contentType = $v.contentType;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _expires = $v.expires;
      _grantFullControl = $v.grantFullControl;
      _grantRead = $v.grantRead;
      _grantReadAcp = $v.grantReadAcp;
      _grantWriteAcp = $v.grantWriteAcp;
      _key = $v.key;
      _metadata = $v.metadata?.toBuilder();
      _objectLockLegalHoldStatus = $v.objectLockLegalHoldStatus;
      _objectLockMode = $v.objectLockMode;
      _objectLockRetainUntilDate = $v.objectLockRetainUntilDate;
      _requestPayer = $v.requestPayer;
      _serverSideEncryption = $v.serverSideEncryption;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKey = $v.sseCustomerKey;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _ssekmsEncryptionContext = $v.ssekmsEncryptionContext;
      _ssekmsKeyId = $v.ssekmsKeyId;
      _storageClass = $v.storageClass;
      _tagging = $v.tagging;
      _websiteRedirectLocation = $v.websiteRedirectLocation;
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
              body: body,
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutObjectRequest', 'bucket'),
              bucketKeyEnabled: bucketKeyEnabled,
              cacheControl: cacheControl,
              checksumAlgorithm: checksumAlgorithm,
              checksumCrc32: checksumCrc32,
              checksumCrc32C: checksumCrc32C,
              checksumSha1: checksumSha1,
              checksumSha256: checksumSha256,
              contentDisposition: contentDisposition,
              contentEncoding: contentEncoding,
              contentLanguage: contentLanguage,
              contentLength: contentLength,
              contentMd5: contentMd5,
              contentType: contentType,
              expectedBucketOwner: expectedBucketOwner,
              expires: expires,
              grantFullControl: grantFullControl,
              grantRead: grantRead,
              grantReadAcp: grantReadAcp,
              grantWriteAcp: grantWriteAcp,
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'PutObjectRequest', 'key'),
              metadata: _metadata?.build(),
              objectLockLegalHoldStatus: objectLockLegalHoldStatus,
              objectLockMode: objectLockMode,
              objectLockRetainUntilDate: objectLockRetainUntilDate,
              requestPayer: requestPayer,
              serverSideEncryption: serverSideEncryption,
              sseCustomerAlgorithm: sseCustomerAlgorithm,
              sseCustomerKey: sseCustomerKey,
              sseCustomerKeyMd5: sseCustomerKeyMd5,
              ssekmsEncryptionContext: ssekmsEncryptionContext,
              ssekmsKeyId: ssekmsKeyId,
              storageClass: storageClass,
              tagging: tagging,
              websiteRedirectLocation: websiteRedirectLocation);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
