// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.copy_object_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CopyObjectRequest extends CopyObjectRequest {
  @override
  final _i3.ObjectCannedAcl? acl;
  @override
  final String bucket;
  @override
  final bool? bucketKeyEnabled;
  @override
  final String? cacheControl;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? contentDisposition;
  @override
  final String? contentEncoding;
  @override
  final String? contentLanguage;
  @override
  final String? contentType;
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
  final String? copySourceSseCustomerAlgorithm;
  @override
  final String? copySourceSseCustomerKey;
  @override
  final String? copySourceSseCustomerKeyMd5;
  @override
  final String? expectedBucketOwner;
  @override
  final String? expectedSourceBucketOwner;
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
  final _i6.MetadataDirective? metadataDirective;
  @override
  final _i7.ObjectLockLegalHoldStatus? objectLockLegalHoldStatus;
  @override
  final _i8.ObjectLockMode? objectLockMode;
  @override
  final DateTime? objectLockRetainUntilDate;
  @override
  final _i9.RequestPayer? requestPayer;
  @override
  final _i10.ServerSideEncryption? serverSideEncryption;
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
  final _i11.StorageClass? storageClass;
  @override
  final String? tagging;
  @override
  final _i12.TaggingDirective? taggingDirective;
  @override
  final String? websiteRedirectLocation;

  factory _$CopyObjectRequest(
          [void Function(CopyObjectRequestBuilder)? updates]) =>
      (new CopyObjectRequestBuilder()..update(updates))._build();

  _$CopyObjectRequest._(
      {this.acl,
      required this.bucket,
      this.bucketKeyEnabled,
      this.cacheControl,
      this.checksumAlgorithm,
      this.contentDisposition,
      this.contentEncoding,
      this.contentLanguage,
      this.contentType,
      required this.copySource,
      this.copySourceIfMatch,
      this.copySourceIfModifiedSince,
      this.copySourceIfNoneMatch,
      this.copySourceIfUnmodifiedSince,
      this.copySourceSseCustomerAlgorithm,
      this.copySourceSseCustomerKey,
      this.copySourceSseCustomerKeyMd5,
      this.expectedBucketOwner,
      this.expectedSourceBucketOwner,
      this.expires,
      this.grantFullControl,
      this.grantRead,
      this.grantReadAcp,
      this.grantWriteAcp,
      required this.key,
      this.metadata,
      this.metadataDirective,
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
      this.taggingDirective,
      this.websiteRedirectLocation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'CopyObjectRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        copySource, r'CopyObjectRequest', 'copySource');
    BuiltValueNullFieldError.checkNotNull(key, r'CopyObjectRequest', 'key');
  }

  @override
  CopyObjectRequest rebuild(void Function(CopyObjectRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyObjectRequestBuilder toBuilder() =>
      new CopyObjectRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopyObjectRequest &&
        acl == other.acl &&
        bucket == other.bucket &&
        bucketKeyEnabled == other.bucketKeyEnabled &&
        cacheControl == other.cacheControl &&
        checksumAlgorithm == other.checksumAlgorithm &&
        contentDisposition == other.contentDisposition &&
        contentEncoding == other.contentEncoding &&
        contentLanguage == other.contentLanguage &&
        contentType == other.contentType &&
        copySource == other.copySource &&
        copySourceIfMatch == other.copySourceIfMatch &&
        copySourceIfModifiedSince == other.copySourceIfModifiedSince &&
        copySourceIfNoneMatch == other.copySourceIfNoneMatch &&
        copySourceIfUnmodifiedSince == other.copySourceIfUnmodifiedSince &&
        copySourceSseCustomerAlgorithm ==
            other.copySourceSseCustomerAlgorithm &&
        copySourceSseCustomerKey == other.copySourceSseCustomerKey &&
        copySourceSseCustomerKeyMd5 == other.copySourceSseCustomerKeyMd5 &&
        expectedBucketOwner == other.expectedBucketOwner &&
        expectedSourceBucketOwner == other.expectedSourceBucketOwner &&
        expires == other.expires &&
        grantFullControl == other.grantFullControl &&
        grantRead == other.grantRead &&
        grantReadAcp == other.grantReadAcp &&
        grantWriteAcp == other.grantWriteAcp &&
        key == other.key &&
        metadata == other.metadata &&
        metadataDirective == other.metadataDirective &&
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
        taggingDirective == other.taggingDirective &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, acl.hashCode), bucket.hashCode), bucketKeyEnabled.hashCode), cacheControl.hashCode), checksumAlgorithm.hashCode), contentDisposition.hashCode), contentEncoding.hashCode), contentLanguage.hashCode), contentType.hashCode), copySource.hashCode), copySourceIfMatch.hashCode), copySourceIfModifiedSince.hashCode), copySourceIfNoneMatch.hashCode), copySourceIfUnmodifiedSince.hashCode), copySourceSseCustomerAlgorithm.hashCode), copySourceSseCustomerKey.hashCode), copySourceSseCustomerKeyMd5.hashCode), expectedBucketOwner.hashCode), expectedSourceBucketOwner.hashCode), expires.hashCode), grantFullControl.hashCode), grantRead.hashCode),
                                                                                grantReadAcp.hashCode),
                                                                            grantWriteAcp.hashCode),
                                                                        key.hashCode),
                                                                    metadata.hashCode),
                                                                metadataDirective.hashCode),
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
            taggingDirective.hashCode),
        websiteRedirectLocation.hashCode));
  }
}

class CopyObjectRequestBuilder
    implements Builder<CopyObjectRequest, CopyObjectRequestBuilder> {
  _$CopyObjectRequest? _$v;

  _i3.ObjectCannedAcl? _acl;
  _i3.ObjectCannedAcl? get acl => _$this._acl;
  set acl(_i3.ObjectCannedAcl? acl) => _$this._acl = acl;

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

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

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

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _expectedSourceBucketOwner;
  String? get expectedSourceBucketOwner => _$this._expectedSourceBucketOwner;
  set expectedSourceBucketOwner(String? expectedSourceBucketOwner) =>
      _$this._expectedSourceBucketOwner = expectedSourceBucketOwner;

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

  _i6.MetadataDirective? _metadataDirective;
  _i6.MetadataDirective? get metadataDirective => _$this._metadataDirective;
  set metadataDirective(_i6.MetadataDirective? metadataDirective) =>
      _$this._metadataDirective = metadataDirective;

  _i7.ObjectLockLegalHoldStatus? _objectLockLegalHoldStatus;
  _i7.ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus =>
      _$this._objectLockLegalHoldStatus;
  set objectLockLegalHoldStatus(
          _i7.ObjectLockLegalHoldStatus? objectLockLegalHoldStatus) =>
      _$this._objectLockLegalHoldStatus = objectLockLegalHoldStatus;

  _i8.ObjectLockMode? _objectLockMode;
  _i8.ObjectLockMode? get objectLockMode => _$this._objectLockMode;
  set objectLockMode(_i8.ObjectLockMode? objectLockMode) =>
      _$this._objectLockMode = objectLockMode;

  DateTime? _objectLockRetainUntilDate;
  DateTime? get objectLockRetainUntilDate => _$this._objectLockRetainUntilDate;
  set objectLockRetainUntilDate(DateTime? objectLockRetainUntilDate) =>
      _$this._objectLockRetainUntilDate = objectLockRetainUntilDate;

  _i9.RequestPayer? _requestPayer;
  _i9.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i9.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  _i10.ServerSideEncryption? _serverSideEncryption;
  _i10.ServerSideEncryption? get serverSideEncryption =>
      _$this._serverSideEncryption;
  set serverSideEncryption(_i10.ServerSideEncryption? serverSideEncryption) =>
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

  _i11.StorageClass? _storageClass;
  _i11.StorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i11.StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  String? _tagging;
  String? get tagging => _$this._tagging;
  set tagging(String? tagging) => _$this._tagging = tagging;

  _i12.TaggingDirective? _taggingDirective;
  _i12.TaggingDirective? get taggingDirective => _$this._taggingDirective;
  set taggingDirective(_i12.TaggingDirective? taggingDirective) =>
      _$this._taggingDirective = taggingDirective;

  String? _websiteRedirectLocation;
  String? get websiteRedirectLocation => _$this._websiteRedirectLocation;
  set websiteRedirectLocation(String? websiteRedirectLocation) =>
      _$this._websiteRedirectLocation = websiteRedirectLocation;

  CopyObjectRequestBuilder() {
    CopyObjectRequest._init(this);
  }

  CopyObjectRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _acl = $v.acl;
      _bucket = $v.bucket;
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _cacheControl = $v.cacheControl;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _contentDisposition = $v.contentDisposition;
      _contentEncoding = $v.contentEncoding;
      _contentLanguage = $v.contentLanguage;
      _contentType = $v.contentType;
      _copySource = $v.copySource;
      _copySourceIfMatch = $v.copySourceIfMatch;
      _copySourceIfModifiedSince = $v.copySourceIfModifiedSince;
      _copySourceIfNoneMatch = $v.copySourceIfNoneMatch;
      _copySourceIfUnmodifiedSince = $v.copySourceIfUnmodifiedSince;
      _copySourceSseCustomerAlgorithm = $v.copySourceSseCustomerAlgorithm;
      _copySourceSseCustomerKey = $v.copySourceSseCustomerKey;
      _copySourceSseCustomerKeyMd5 = $v.copySourceSseCustomerKeyMd5;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _expectedSourceBucketOwner = $v.expectedSourceBucketOwner;
      _expires = $v.expires;
      _grantFullControl = $v.grantFullControl;
      _grantRead = $v.grantRead;
      _grantReadAcp = $v.grantReadAcp;
      _grantWriteAcp = $v.grantWriteAcp;
      _key = $v.key;
      _metadata = $v.metadata?.toBuilder();
      _metadataDirective = $v.metadataDirective;
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
      _taggingDirective = $v.taggingDirective;
      _websiteRedirectLocation = $v.websiteRedirectLocation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CopyObjectRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CopyObjectRequest;
  }

  @override
  void update(void Function(CopyObjectRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopyObjectRequest build() => _build();

  _$CopyObjectRequest _build() {
    _$CopyObjectRequest _$result;
    try {
      _$result = _$v ??
          new _$CopyObjectRequest._(
              acl: acl,
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'CopyObjectRequest', 'bucket'),
              bucketKeyEnabled: bucketKeyEnabled,
              cacheControl: cacheControl,
              checksumAlgorithm: checksumAlgorithm,
              contentDisposition: contentDisposition,
              contentEncoding: contentEncoding,
              contentLanguage: contentLanguage,
              contentType: contentType,
              copySource: BuiltValueNullFieldError.checkNotNull(
                  copySource, r'CopyObjectRequest', 'copySource'),
              copySourceIfMatch: copySourceIfMatch,
              copySourceIfModifiedSince: copySourceIfModifiedSince,
              copySourceIfNoneMatch: copySourceIfNoneMatch,
              copySourceIfUnmodifiedSince: copySourceIfUnmodifiedSince,
              copySourceSseCustomerAlgorithm: copySourceSseCustomerAlgorithm,
              copySourceSseCustomerKey: copySourceSseCustomerKey,
              copySourceSseCustomerKeyMd5: copySourceSseCustomerKeyMd5,
              expectedBucketOwner: expectedBucketOwner,
              expectedSourceBucketOwner: expectedSourceBucketOwner,
              expires: expires,
              grantFullControl: grantFullControl,
              grantRead: grantRead,
              grantReadAcp: grantReadAcp,
              grantWriteAcp: grantWriteAcp,
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'CopyObjectRequest', 'key'),
              metadata: _metadata?.build(),
              metadataDirective: metadataDirective,
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
              taggingDirective: taggingDirective,
              websiteRedirectLocation: websiteRedirectLocation);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CopyObjectRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CopyObjectRequestPayload extends CopyObjectRequestPayload {
  factory _$CopyObjectRequestPayload(
          [void Function(CopyObjectRequestPayloadBuilder)? updates]) =>
      (new CopyObjectRequestPayloadBuilder()..update(updates))._build();

  _$CopyObjectRequestPayload._() : super._();

  @override
  CopyObjectRequestPayload rebuild(
          void Function(CopyObjectRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyObjectRequestPayloadBuilder toBuilder() =>
      new CopyObjectRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopyObjectRequestPayload;
  }

  @override
  int get hashCode {
    return 528129857;
  }
}

class CopyObjectRequestPayloadBuilder
    implements
        Builder<CopyObjectRequestPayload, CopyObjectRequestPayloadBuilder> {
  _$CopyObjectRequestPayload? _$v;

  CopyObjectRequestPayloadBuilder() {
    CopyObjectRequestPayload._init(this);
  }

  @override
  void replace(CopyObjectRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CopyObjectRequestPayload;
  }

  @override
  void update(void Function(CopyObjectRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopyObjectRequestPayload build() => _build();

  _$CopyObjectRequestPayload _build() {
    final _$result = _$v ?? new _$CopyObjectRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
