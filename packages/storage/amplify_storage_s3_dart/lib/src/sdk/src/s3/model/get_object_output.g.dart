// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.get_object_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectOutput extends GetObjectOutput {
  @override
  final String? acceptRanges;
  @override
  final _i3.Stream<List<int>>? body;
  @override
  final bool? bucketKeyEnabled;
  @override
  final String? cacheControl;
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
  final _i4.Int64? contentLength;
  @override
  final String? contentRange;
  @override
  final String? contentType;
  @override
  final bool? deleteMarker;
  @override
  final String? eTag;
  @override
  final String? expiration;
  @override
  final DateTime? expires;
  @override
  final DateTime? lastModified;
  @override
  final _i11.BuiltMap<String, String>? metadata;
  @override
  final int? missingMeta;
  @override
  final _i5.ObjectLockLegalHoldStatus? objectLockLegalHoldStatus;
  @override
  final _i6.ObjectLockMode? objectLockMode;
  @override
  final DateTime? objectLockRetainUntilDate;
  @override
  final int? partsCount;
  @override
  final _i7.ReplicationStatus? replicationStatus;
  @override
  final _i8.RequestCharged? requestCharged;
  @override
  final String? restore;
  @override
  final _i9.ServerSideEncryption? serverSideEncryption;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String? ssekmsKeyId;
  @override
  final _i10.StorageClass? storageClass;
  @override
  final int? tagCount;
  @override
  final String? versionId;
  @override
  final String? websiteRedirectLocation;

  factory _$GetObjectOutput([void Function(GetObjectOutputBuilder)? updates]) =>
      (new GetObjectOutputBuilder()..update(updates))._build();

  _$GetObjectOutput._(
      {this.acceptRanges,
      this.body,
      this.bucketKeyEnabled,
      this.cacheControl,
      this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256,
      this.contentDisposition,
      this.contentEncoding,
      this.contentLanguage,
      this.contentLength,
      this.contentRange,
      this.contentType,
      this.deleteMarker,
      this.eTag,
      this.expiration,
      this.expires,
      this.lastModified,
      this.metadata,
      this.missingMeta,
      this.objectLockLegalHoldStatus,
      this.objectLockMode,
      this.objectLockRetainUntilDate,
      this.partsCount,
      this.replicationStatus,
      this.requestCharged,
      this.restore,
      this.serverSideEncryption,
      this.sseCustomerAlgorithm,
      this.sseCustomerKeyMd5,
      this.ssekmsKeyId,
      this.storageClass,
      this.tagCount,
      this.versionId,
      this.websiteRedirectLocation})
      : super._();

  @override
  GetObjectOutput rebuild(void Function(GetObjectOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectOutputBuilder toBuilder() =>
      new GetObjectOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectOutput &&
        acceptRanges == other.acceptRanges &&
        body == other.body &&
        bucketKeyEnabled == other.bucketKeyEnabled &&
        cacheControl == other.cacheControl &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        contentDisposition == other.contentDisposition &&
        contentEncoding == other.contentEncoding &&
        contentLanguage == other.contentLanguage &&
        contentLength == other.contentLength &&
        contentRange == other.contentRange &&
        contentType == other.contentType &&
        deleteMarker == other.deleteMarker &&
        eTag == other.eTag &&
        expiration == other.expiration &&
        expires == other.expires &&
        lastModified == other.lastModified &&
        metadata == other.metadata &&
        missingMeta == other.missingMeta &&
        objectLockLegalHoldStatus == other.objectLockLegalHoldStatus &&
        objectLockMode == other.objectLockMode &&
        objectLockRetainUntilDate == other.objectLockRetainUntilDate &&
        partsCount == other.partsCount &&
        replicationStatus == other.replicationStatus &&
        requestCharged == other.requestCharged &&
        restore == other.restore &&
        serverSideEncryption == other.serverSideEncryption &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        ssekmsKeyId == other.ssekmsKeyId &&
        storageClass == other.storageClass &&
        tagCount == other.tagCount &&
        versionId == other.versionId &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, acceptRanges.hashCode), body.hashCode), bucketKeyEnabled.hashCode), cacheControl.hashCode), checksumCrc32.hashCode), checksumCrc32C.hashCode), checksumSha1.hashCode), checksumSha256.hashCode), contentDisposition.hashCode), contentEncoding.hashCode), contentLanguage.hashCode), contentLength.hashCode), contentRange.hashCode), contentType.hashCode), deleteMarker.hashCode), eTag.hashCode), expiration.hashCode),
                                                                                expires.hashCode),
                                                                            lastModified.hashCode),
                                                                        metadata.hashCode),
                                                                    missingMeta.hashCode),
                                                                objectLockLegalHoldStatus.hashCode),
                                                            objectLockMode.hashCode),
                                                        objectLockRetainUntilDate.hashCode),
                                                    partsCount.hashCode),
                                                replicationStatus.hashCode),
                                            requestCharged.hashCode),
                                        restore.hashCode),
                                    serverSideEncryption.hashCode),
                                sseCustomerAlgorithm.hashCode),
                            sseCustomerKeyMd5.hashCode),
                        ssekmsKeyId.hashCode),
                    storageClass.hashCode),
                tagCount.hashCode),
            versionId.hashCode),
        websiteRedirectLocation.hashCode));
  }
}

class GetObjectOutputBuilder
    implements Builder<GetObjectOutput, GetObjectOutputBuilder> {
  _$GetObjectOutput? _$v;

  String? _acceptRanges;
  String? get acceptRanges => _$this._acceptRanges;
  set acceptRanges(String? acceptRanges) => _$this._acceptRanges = acceptRanges;

  _i3.Stream<List<int>>? _body;
  _i3.Stream<List<int>>? get body => _$this._body;
  set body(_i3.Stream<List<int>>? body) => _$this._body = body;

  bool? _bucketKeyEnabled;
  bool? get bucketKeyEnabled => _$this._bucketKeyEnabled;
  set bucketKeyEnabled(bool? bucketKeyEnabled) =>
      _$this._bucketKeyEnabled = bucketKeyEnabled;

  String? _cacheControl;
  String? get cacheControl => _$this._cacheControl;
  set cacheControl(String? cacheControl) => _$this._cacheControl = cacheControl;

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

  _i4.Int64? _contentLength;
  _i4.Int64? get contentLength => _$this._contentLength;
  set contentLength(_i4.Int64? contentLength) =>
      _$this._contentLength = contentLength;

  String? _contentRange;
  String? get contentRange => _$this._contentRange;
  set contentRange(String? contentRange) => _$this._contentRange = contentRange;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  bool? _deleteMarker;
  bool? get deleteMarker => _$this._deleteMarker;
  set deleteMarker(bool? deleteMarker) => _$this._deleteMarker = deleteMarker;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  String? _expiration;
  String? get expiration => _$this._expiration;
  set expiration(String? expiration) => _$this._expiration = expiration;

  DateTime? _expires;
  DateTime? get expires => _$this._expires;
  set expires(DateTime? expires) => _$this._expires = expires;

  DateTime? _lastModified;
  DateTime? get lastModified => _$this._lastModified;
  set lastModified(DateTime? lastModified) =>
      _$this._lastModified = lastModified;

  _i11.MapBuilder<String, String>? _metadata;
  _i11.MapBuilder<String, String> get metadata =>
      _$this._metadata ??= new _i11.MapBuilder<String, String>();
  set metadata(_i11.MapBuilder<String, String>? metadata) =>
      _$this._metadata = metadata;

  int? _missingMeta;
  int? get missingMeta => _$this._missingMeta;
  set missingMeta(int? missingMeta) => _$this._missingMeta = missingMeta;

  _i5.ObjectLockLegalHoldStatus? _objectLockLegalHoldStatus;
  _i5.ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus =>
      _$this._objectLockLegalHoldStatus;
  set objectLockLegalHoldStatus(
          _i5.ObjectLockLegalHoldStatus? objectLockLegalHoldStatus) =>
      _$this._objectLockLegalHoldStatus = objectLockLegalHoldStatus;

  _i6.ObjectLockMode? _objectLockMode;
  _i6.ObjectLockMode? get objectLockMode => _$this._objectLockMode;
  set objectLockMode(_i6.ObjectLockMode? objectLockMode) =>
      _$this._objectLockMode = objectLockMode;

  DateTime? _objectLockRetainUntilDate;
  DateTime? get objectLockRetainUntilDate => _$this._objectLockRetainUntilDate;
  set objectLockRetainUntilDate(DateTime? objectLockRetainUntilDate) =>
      _$this._objectLockRetainUntilDate = objectLockRetainUntilDate;

  int? _partsCount;
  int? get partsCount => _$this._partsCount;
  set partsCount(int? partsCount) => _$this._partsCount = partsCount;

  _i7.ReplicationStatus? _replicationStatus;
  _i7.ReplicationStatus? get replicationStatus => _$this._replicationStatus;
  set replicationStatus(_i7.ReplicationStatus? replicationStatus) =>
      _$this._replicationStatus = replicationStatus;

  _i8.RequestCharged? _requestCharged;
  _i8.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i8.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  String? _restore;
  String? get restore => _$this._restore;
  set restore(String? restore) => _$this._restore = restore;

  _i9.ServerSideEncryption? _serverSideEncryption;
  _i9.ServerSideEncryption? get serverSideEncryption =>
      _$this._serverSideEncryption;
  set serverSideEncryption(_i9.ServerSideEncryption? serverSideEncryption) =>
      _$this._serverSideEncryption = serverSideEncryption;

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

  _i10.StorageClass? _storageClass;
  _i10.StorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i10.StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  int? _tagCount;
  int? get tagCount => _$this._tagCount;
  set tagCount(int? tagCount) => _$this._tagCount = tagCount;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  String? _websiteRedirectLocation;
  String? get websiteRedirectLocation => _$this._websiteRedirectLocation;
  set websiteRedirectLocation(String? websiteRedirectLocation) =>
      _$this._websiteRedirectLocation = websiteRedirectLocation;

  GetObjectOutputBuilder() {
    GetObjectOutput._init(this);
  }

  GetObjectOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _acceptRanges = $v.acceptRanges;
      _body = $v.body;
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _cacheControl = $v.cacheControl;
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _contentDisposition = $v.contentDisposition;
      _contentEncoding = $v.contentEncoding;
      _contentLanguage = $v.contentLanguage;
      _contentLength = $v.contentLength;
      _contentRange = $v.contentRange;
      _contentType = $v.contentType;
      _deleteMarker = $v.deleteMarker;
      _eTag = $v.eTag;
      _expiration = $v.expiration;
      _expires = $v.expires;
      _lastModified = $v.lastModified;
      _metadata = $v.metadata?.toBuilder();
      _missingMeta = $v.missingMeta;
      _objectLockLegalHoldStatus = $v.objectLockLegalHoldStatus;
      _objectLockMode = $v.objectLockMode;
      _objectLockRetainUntilDate = $v.objectLockRetainUntilDate;
      _partsCount = $v.partsCount;
      _replicationStatus = $v.replicationStatus;
      _requestCharged = $v.requestCharged;
      _restore = $v.restore;
      _serverSideEncryption = $v.serverSideEncryption;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _ssekmsKeyId = $v.ssekmsKeyId;
      _storageClass = $v.storageClass;
      _tagCount = $v.tagCount;
      _versionId = $v.versionId;
      _websiteRedirectLocation = $v.websiteRedirectLocation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectOutput;
  }

  @override
  void update(void Function(GetObjectOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectOutput build() => _build();

  _$GetObjectOutput _build() {
    _$GetObjectOutput _$result;
    try {
      _$result = _$v ??
          new _$GetObjectOutput._(
              acceptRanges: acceptRanges,
              body: body,
              bucketKeyEnabled: bucketKeyEnabled,
              cacheControl: cacheControl,
              checksumCrc32: checksumCrc32,
              checksumCrc32C: checksumCrc32C,
              checksumSha1: checksumSha1,
              checksumSha256: checksumSha256,
              contentDisposition: contentDisposition,
              contentEncoding: contentEncoding,
              contentLanguage: contentLanguage,
              contentLength: contentLength,
              contentRange: contentRange,
              contentType: contentType,
              deleteMarker: deleteMarker,
              eTag: eTag,
              expiration: expiration,
              expires: expires,
              lastModified: lastModified,
              metadata: _metadata?.build(),
              missingMeta: missingMeta,
              objectLockLegalHoldStatus: objectLockLegalHoldStatus,
              objectLockMode: objectLockMode,
              objectLockRetainUntilDate: objectLockRetainUntilDate,
              partsCount: partsCount,
              replicationStatus: replicationStatus,
              requestCharged: requestCharged,
              restore: restore,
              serverSideEncryption: serverSideEncryption,
              sseCustomerAlgorithm: sseCustomerAlgorithm,
              sseCustomerKeyMd5: sseCustomerKeyMd5,
              ssekmsKeyId: ssekmsKeyId,
              storageClass: storageClass,
              tagCount: tagCount,
              versionId: versionId,
              websiteRedirectLocation: websiteRedirectLocation);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetObjectOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
