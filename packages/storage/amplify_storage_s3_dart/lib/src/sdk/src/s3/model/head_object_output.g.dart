// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.head_object_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HeadObjectOutput extends HeadObjectOutput {
  @override
  final bool? deleteMarker;
  @override
  final String? acceptRanges;
  @override
  final String? expiration;
  @override
  final String? restore;
  @override
  final _i3.ArchiveStatus? archiveStatus;
  @override
  final DateTime? lastModified;
  @override
  final _i4.Int64? contentLength;
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;
  @override
  final String? eTag;
  @override
  final int? missingMeta;
  @override
  final String? versionId;
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
  final String? websiteRedirectLocation;
  @override
  final _i5.ServerSideEncryption? serverSideEncryption;
  @override
  final _i11.BuiltMap<String, String>? metadata;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String? ssekmsKeyId;
  @override
  final bool? bucketKeyEnabled;
  @override
  final _i6.StorageClass? storageClass;
  @override
  final _i7.RequestCharged? requestCharged;
  @override
  final _i8.ReplicationStatus? replicationStatus;
  @override
  final int? partsCount;
  @override
  final _i9.ObjectLockMode? objectLockMode;
  @override
  final DateTime? objectLockRetainUntilDate;
  @override
  final _i10.ObjectLockLegalHoldStatus? objectLockLegalHoldStatus;

  factory _$HeadObjectOutput(
          [void Function(HeadObjectOutputBuilder)? updates]) =>
      (new HeadObjectOutputBuilder()..update(updates))._build();

  _$HeadObjectOutput._(
      {this.deleteMarker,
      this.acceptRanges,
      this.expiration,
      this.restore,
      this.archiveStatus,
      this.lastModified,
      this.contentLength,
      this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256,
      this.eTag,
      this.missingMeta,
      this.versionId,
      this.cacheControl,
      this.contentDisposition,
      this.contentEncoding,
      this.contentLanguage,
      this.contentType,
      this.expires,
      this.websiteRedirectLocation,
      this.serverSideEncryption,
      this.metadata,
      this.sseCustomerAlgorithm,
      this.sseCustomerKeyMd5,
      this.ssekmsKeyId,
      this.bucketKeyEnabled,
      this.storageClass,
      this.requestCharged,
      this.replicationStatus,
      this.partsCount,
      this.objectLockMode,
      this.objectLockRetainUntilDate,
      this.objectLockLegalHoldStatus})
      : super._();

  @override
  HeadObjectOutput rebuild(void Function(HeadObjectOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HeadObjectOutputBuilder toBuilder() =>
      new HeadObjectOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HeadObjectOutput &&
        deleteMarker == other.deleteMarker &&
        acceptRanges == other.acceptRanges &&
        expiration == other.expiration &&
        restore == other.restore &&
        archiveStatus == other.archiveStatus &&
        lastModified == other.lastModified &&
        contentLength == other.contentLength &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        eTag == other.eTag &&
        missingMeta == other.missingMeta &&
        versionId == other.versionId &&
        cacheControl == other.cacheControl &&
        contentDisposition == other.contentDisposition &&
        contentEncoding == other.contentEncoding &&
        contentLanguage == other.contentLanguage &&
        contentType == other.contentType &&
        expires == other.expires &&
        websiteRedirectLocation == other.websiteRedirectLocation &&
        serverSideEncryption == other.serverSideEncryption &&
        metadata == other.metadata &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        ssekmsKeyId == other.ssekmsKeyId &&
        bucketKeyEnabled == other.bucketKeyEnabled &&
        storageClass == other.storageClass &&
        requestCharged == other.requestCharged &&
        replicationStatus == other.replicationStatus &&
        partsCount == other.partsCount &&
        objectLockMode == other.objectLockMode &&
        objectLockRetainUntilDate == other.objectLockRetainUntilDate &&
        objectLockLegalHoldStatus == other.objectLockLegalHoldStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deleteMarker.hashCode);
    _$hash = $jc(_$hash, acceptRanges.hashCode);
    _$hash = $jc(_$hash, expiration.hashCode);
    _$hash = $jc(_$hash, restore.hashCode);
    _$hash = $jc(_$hash, archiveStatus.hashCode);
    _$hash = $jc(_$hash, lastModified.hashCode);
    _$hash = $jc(_$hash, contentLength.hashCode);
    _$hash = $jc(_$hash, checksumCrc32.hashCode);
    _$hash = $jc(_$hash, checksumCrc32C.hashCode);
    _$hash = $jc(_$hash, checksumSha1.hashCode);
    _$hash = $jc(_$hash, checksumSha256.hashCode);
    _$hash = $jc(_$hash, eTag.hashCode);
    _$hash = $jc(_$hash, missingMeta.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, cacheControl.hashCode);
    _$hash = $jc(_$hash, contentDisposition.hashCode);
    _$hash = $jc(_$hash, contentEncoding.hashCode);
    _$hash = $jc(_$hash, contentLanguage.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, expires.hashCode);
    _$hash = $jc(_$hash, websiteRedirectLocation.hashCode);
    _$hash = $jc(_$hash, serverSideEncryption.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, sseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, sseCustomerKeyMd5.hashCode);
    _$hash = $jc(_$hash, ssekmsKeyId.hashCode);
    _$hash = $jc(_$hash, bucketKeyEnabled.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jc(_$hash, requestCharged.hashCode);
    _$hash = $jc(_$hash, replicationStatus.hashCode);
    _$hash = $jc(_$hash, partsCount.hashCode);
    _$hash = $jc(_$hash, objectLockMode.hashCode);
    _$hash = $jc(_$hash, objectLockRetainUntilDate.hashCode);
    _$hash = $jc(_$hash, objectLockLegalHoldStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HeadObjectOutputBuilder
    implements Builder<HeadObjectOutput, HeadObjectOutputBuilder> {
  _$HeadObjectOutput? _$v;

  bool? _deleteMarker;
  bool? get deleteMarker => _$this._deleteMarker;
  set deleteMarker(bool? deleteMarker) => _$this._deleteMarker = deleteMarker;

  String? _acceptRanges;
  String? get acceptRanges => _$this._acceptRanges;
  set acceptRanges(String? acceptRanges) => _$this._acceptRanges = acceptRanges;

  String? _expiration;
  String? get expiration => _$this._expiration;
  set expiration(String? expiration) => _$this._expiration = expiration;

  String? _restore;
  String? get restore => _$this._restore;
  set restore(String? restore) => _$this._restore = restore;

  _i3.ArchiveStatus? _archiveStatus;
  _i3.ArchiveStatus? get archiveStatus => _$this._archiveStatus;
  set archiveStatus(_i3.ArchiveStatus? archiveStatus) =>
      _$this._archiveStatus = archiveStatus;

  DateTime? _lastModified;
  DateTime? get lastModified => _$this._lastModified;
  set lastModified(DateTime? lastModified) =>
      _$this._lastModified = lastModified;

  _i4.Int64? _contentLength;
  _i4.Int64? get contentLength => _$this._contentLength;
  set contentLength(_i4.Int64? contentLength) =>
      _$this._contentLength = contentLength;

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

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  int? _missingMeta;
  int? get missingMeta => _$this._missingMeta;
  set missingMeta(int? missingMeta) => _$this._missingMeta = missingMeta;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

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

  String? _websiteRedirectLocation;
  String? get websiteRedirectLocation => _$this._websiteRedirectLocation;
  set websiteRedirectLocation(String? websiteRedirectLocation) =>
      _$this._websiteRedirectLocation = websiteRedirectLocation;

  _i5.ServerSideEncryption? _serverSideEncryption;
  _i5.ServerSideEncryption? get serverSideEncryption =>
      _$this._serverSideEncryption;
  set serverSideEncryption(_i5.ServerSideEncryption? serverSideEncryption) =>
      _$this._serverSideEncryption = serverSideEncryption;

  _i11.MapBuilder<String, String>? _metadata;
  _i11.MapBuilder<String, String> get metadata =>
      _$this._metadata ??= new _i11.MapBuilder<String, String>();
  set metadata(_i11.MapBuilder<String, String>? metadata) =>
      _$this._metadata = metadata;

  String? _sseCustomerAlgorithm;
  String? get sseCustomerAlgorithm => _$this._sseCustomerAlgorithm;
  set sseCustomerAlgorithm(String? sseCustomerAlgorithm) =>
      _$this._sseCustomerAlgorithm = sseCustomerAlgorithm;

  String? _sseCustomerKeyMd5;
  String? get sseCustomerKeyMd5 => _$this._sseCustomerKeyMd5;
  set sseCustomerKeyMd5(String? sseCustomerKeyMd5) =>
      _$this._sseCustomerKeyMd5 = sseCustomerKeyMd5;

  String? _ssekmsKeyId;
  String? get ssekmsKeyId => _$this._ssekmsKeyId;
  set ssekmsKeyId(String? ssekmsKeyId) => _$this._ssekmsKeyId = ssekmsKeyId;

  bool? _bucketKeyEnabled;
  bool? get bucketKeyEnabled => _$this._bucketKeyEnabled;
  set bucketKeyEnabled(bool? bucketKeyEnabled) =>
      _$this._bucketKeyEnabled = bucketKeyEnabled;

  _i6.StorageClass? _storageClass;
  _i6.StorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i6.StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  _i7.RequestCharged? _requestCharged;
  _i7.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i7.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  _i8.ReplicationStatus? _replicationStatus;
  _i8.ReplicationStatus? get replicationStatus => _$this._replicationStatus;
  set replicationStatus(_i8.ReplicationStatus? replicationStatus) =>
      _$this._replicationStatus = replicationStatus;

  int? _partsCount;
  int? get partsCount => _$this._partsCount;
  set partsCount(int? partsCount) => _$this._partsCount = partsCount;

  _i9.ObjectLockMode? _objectLockMode;
  _i9.ObjectLockMode? get objectLockMode => _$this._objectLockMode;
  set objectLockMode(_i9.ObjectLockMode? objectLockMode) =>
      _$this._objectLockMode = objectLockMode;

  DateTime? _objectLockRetainUntilDate;
  DateTime? get objectLockRetainUntilDate => _$this._objectLockRetainUntilDate;
  set objectLockRetainUntilDate(DateTime? objectLockRetainUntilDate) =>
      _$this._objectLockRetainUntilDate = objectLockRetainUntilDate;

  _i10.ObjectLockLegalHoldStatus? _objectLockLegalHoldStatus;
  _i10.ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus =>
      _$this._objectLockLegalHoldStatus;
  set objectLockLegalHoldStatus(
          _i10.ObjectLockLegalHoldStatus? objectLockLegalHoldStatus) =>
      _$this._objectLockLegalHoldStatus = objectLockLegalHoldStatus;

  HeadObjectOutputBuilder() {
    HeadObjectOutput._init(this);
  }

  HeadObjectOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleteMarker = $v.deleteMarker;
      _acceptRanges = $v.acceptRanges;
      _expiration = $v.expiration;
      _restore = $v.restore;
      _archiveStatus = $v.archiveStatus;
      _lastModified = $v.lastModified;
      _contentLength = $v.contentLength;
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _eTag = $v.eTag;
      _missingMeta = $v.missingMeta;
      _versionId = $v.versionId;
      _cacheControl = $v.cacheControl;
      _contentDisposition = $v.contentDisposition;
      _contentEncoding = $v.contentEncoding;
      _contentLanguage = $v.contentLanguage;
      _contentType = $v.contentType;
      _expires = $v.expires;
      _websiteRedirectLocation = $v.websiteRedirectLocation;
      _serverSideEncryption = $v.serverSideEncryption;
      _metadata = $v.metadata?.toBuilder();
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _ssekmsKeyId = $v.ssekmsKeyId;
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _storageClass = $v.storageClass;
      _requestCharged = $v.requestCharged;
      _replicationStatus = $v.replicationStatus;
      _partsCount = $v.partsCount;
      _objectLockMode = $v.objectLockMode;
      _objectLockRetainUntilDate = $v.objectLockRetainUntilDate;
      _objectLockLegalHoldStatus = $v.objectLockLegalHoldStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HeadObjectOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HeadObjectOutput;
  }

  @override
  void update(void Function(HeadObjectOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HeadObjectOutput build() => _build();

  _$HeadObjectOutput _build() {
    _$HeadObjectOutput _$result;
    try {
      _$result = _$v ??
          new _$HeadObjectOutput._(
              deleteMarker: deleteMarker,
              acceptRanges: acceptRanges,
              expiration: expiration,
              restore: restore,
              archiveStatus: archiveStatus,
              lastModified: lastModified,
              contentLength: contentLength,
              checksumCrc32: checksumCrc32,
              checksumCrc32C: checksumCrc32C,
              checksumSha1: checksumSha1,
              checksumSha256: checksumSha256,
              eTag: eTag,
              missingMeta: missingMeta,
              versionId: versionId,
              cacheControl: cacheControl,
              contentDisposition: contentDisposition,
              contentEncoding: contentEncoding,
              contentLanguage: contentLanguage,
              contentType: contentType,
              expires: expires,
              websiteRedirectLocation: websiteRedirectLocation,
              serverSideEncryption: serverSideEncryption,
              metadata: _metadata?.build(),
              sseCustomerAlgorithm: sseCustomerAlgorithm,
              sseCustomerKeyMd5: sseCustomerKeyMd5,
              ssekmsKeyId: ssekmsKeyId,
              bucketKeyEnabled: bucketKeyEnabled,
              storageClass: storageClass,
              requestCharged: requestCharged,
              replicationStatus: replicationStatus,
              partsCount: partsCount,
              objectLockMode: objectLockMode,
              objectLockRetainUntilDate: objectLockRetainUntilDate,
              objectLockLegalHoldStatus: objectLockLegalHoldStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HeadObjectOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HeadObjectOutputPayload extends HeadObjectOutputPayload {
  factory _$HeadObjectOutputPayload(
          [void Function(HeadObjectOutputPayloadBuilder)? updates]) =>
      (new HeadObjectOutputPayloadBuilder()..update(updates))._build();

  _$HeadObjectOutputPayload._() : super._();

  @override
  HeadObjectOutputPayload rebuild(
          void Function(HeadObjectOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HeadObjectOutputPayloadBuilder toBuilder() =>
      new HeadObjectOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HeadObjectOutputPayload;
  }

  @override
  int get hashCode {
    return 698112719;
  }
}

class HeadObjectOutputPayloadBuilder
    implements
        Builder<HeadObjectOutputPayload, HeadObjectOutputPayloadBuilder> {
  _$HeadObjectOutputPayload? _$v;

  HeadObjectOutputPayloadBuilder() {
    HeadObjectOutputPayload._init(this);
  }

  @override
  void replace(HeadObjectOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HeadObjectOutputPayload;
  }

  @override
  void update(void Function(HeadObjectOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HeadObjectOutputPayload build() => _build();

  _$HeadObjectOutputPayload _build() {
    final _$result = _$v ?? new _$HeadObjectOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
