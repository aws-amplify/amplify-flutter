// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_get_object_response_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WriteGetObjectResponseRequest extends WriteGetObjectResponseRequest {
  @override
  final String requestRoute;
  @override
  final String requestToken;
  @override
  final _i2.Stream<List<int>> body;
  @override
  final int? statusCode;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;
  @override
  final String? acceptRanges;
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
  final String? contentRange;
  @override
  final String? contentType;
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;
  @override
  final bool? deleteMarker;
  @override
  final String? eTag;
  @override
  final DateTime? expires;
  @override
  final String? expiration;
  @override
  final DateTime? lastModified;
  @override
  final int? missingMeta;
  @override
  final _i5.BuiltMap<String, String>? metadata;
  @override
  final ObjectLockMode? objectLockMode;
  @override
  final ObjectLockLegalHoldStatus? objectLockLegalHoldStatus;
  @override
  final DateTime? objectLockRetainUntilDate;
  @override
  final int? partsCount;
  @override
  final ReplicationStatus? replicationStatus;
  @override
  final RequestCharged? requestCharged;
  @override
  final String? restore;
  @override
  final ServerSideEncryption? serverSideEncryption;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? ssekmsKeyId;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final StorageClass? storageClass;
  @override
  final int? tagCount;
  @override
  final String? versionId;
  @override
  final bool? bucketKeyEnabled;

  factory _$WriteGetObjectResponseRequest(
          [void Function(WriteGetObjectResponseRequestBuilder)? updates]) =>
      (new WriteGetObjectResponseRequestBuilder()..update(updates))._build();

  _$WriteGetObjectResponseRequest._(
      {required this.requestRoute,
      required this.requestToken,
      required this.body,
      this.statusCode,
      this.errorCode,
      this.errorMessage,
      this.acceptRanges,
      this.cacheControl,
      this.contentDisposition,
      this.contentEncoding,
      this.contentLanguage,
      this.contentLength,
      this.contentRange,
      this.contentType,
      this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256,
      this.deleteMarker,
      this.eTag,
      this.expires,
      this.expiration,
      this.lastModified,
      this.missingMeta,
      this.metadata,
      this.objectLockMode,
      this.objectLockLegalHoldStatus,
      this.objectLockRetainUntilDate,
      this.partsCount,
      this.replicationStatus,
      this.requestCharged,
      this.restore,
      this.serverSideEncryption,
      this.sseCustomerAlgorithm,
      this.ssekmsKeyId,
      this.sseCustomerKeyMd5,
      this.storageClass,
      this.tagCount,
      this.versionId,
      this.bucketKeyEnabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        requestRoute, r'WriteGetObjectResponseRequest', 'requestRoute');
    BuiltValueNullFieldError.checkNotNull(
        requestToken, r'WriteGetObjectResponseRequest', 'requestToken');
    BuiltValueNullFieldError.checkNotNull(
        body, r'WriteGetObjectResponseRequest', 'body');
  }

  @override
  WriteGetObjectResponseRequest rebuild(
          void Function(WriteGetObjectResponseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WriteGetObjectResponseRequestBuilder toBuilder() =>
      new WriteGetObjectResponseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WriteGetObjectResponseRequest &&
        requestRoute == other.requestRoute &&
        requestToken == other.requestToken &&
        body == other.body &&
        statusCode == other.statusCode &&
        errorCode == other.errorCode &&
        errorMessage == other.errorMessage &&
        acceptRanges == other.acceptRanges &&
        cacheControl == other.cacheControl &&
        contentDisposition == other.contentDisposition &&
        contentEncoding == other.contentEncoding &&
        contentLanguage == other.contentLanguage &&
        contentLength == other.contentLength &&
        contentRange == other.contentRange &&
        contentType == other.contentType &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        deleteMarker == other.deleteMarker &&
        eTag == other.eTag &&
        expires == other.expires &&
        expiration == other.expiration &&
        lastModified == other.lastModified &&
        missingMeta == other.missingMeta &&
        metadata == other.metadata &&
        objectLockMode == other.objectLockMode &&
        objectLockLegalHoldStatus == other.objectLockLegalHoldStatus &&
        objectLockRetainUntilDate == other.objectLockRetainUntilDate &&
        partsCount == other.partsCount &&
        replicationStatus == other.replicationStatus &&
        requestCharged == other.requestCharged &&
        restore == other.restore &&
        serverSideEncryption == other.serverSideEncryption &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        ssekmsKeyId == other.ssekmsKeyId &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        storageClass == other.storageClass &&
        tagCount == other.tagCount &&
        versionId == other.versionId &&
        bucketKeyEnabled == other.bucketKeyEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestRoute.hashCode);
    _$hash = $jc(_$hash, requestToken.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, errorCode.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, acceptRanges.hashCode);
    _$hash = $jc(_$hash, cacheControl.hashCode);
    _$hash = $jc(_$hash, contentDisposition.hashCode);
    _$hash = $jc(_$hash, contentEncoding.hashCode);
    _$hash = $jc(_$hash, contentLanguage.hashCode);
    _$hash = $jc(_$hash, contentLength.hashCode);
    _$hash = $jc(_$hash, contentRange.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, checksumCrc32.hashCode);
    _$hash = $jc(_$hash, checksumCrc32C.hashCode);
    _$hash = $jc(_$hash, checksumSha1.hashCode);
    _$hash = $jc(_$hash, checksumSha256.hashCode);
    _$hash = $jc(_$hash, deleteMarker.hashCode);
    _$hash = $jc(_$hash, eTag.hashCode);
    _$hash = $jc(_$hash, expires.hashCode);
    _$hash = $jc(_$hash, expiration.hashCode);
    _$hash = $jc(_$hash, lastModified.hashCode);
    _$hash = $jc(_$hash, missingMeta.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, objectLockMode.hashCode);
    _$hash = $jc(_$hash, objectLockLegalHoldStatus.hashCode);
    _$hash = $jc(_$hash, objectLockRetainUntilDate.hashCode);
    _$hash = $jc(_$hash, partsCount.hashCode);
    _$hash = $jc(_$hash, replicationStatus.hashCode);
    _$hash = $jc(_$hash, requestCharged.hashCode);
    _$hash = $jc(_$hash, restore.hashCode);
    _$hash = $jc(_$hash, serverSideEncryption.hashCode);
    _$hash = $jc(_$hash, sseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, ssekmsKeyId.hashCode);
    _$hash = $jc(_$hash, sseCustomerKeyMd5.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jc(_$hash, tagCount.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, bucketKeyEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class WriteGetObjectResponseRequestBuilder
    implements
        Builder<WriteGetObjectResponseRequest,
            WriteGetObjectResponseRequestBuilder> {
  _$WriteGetObjectResponseRequest? _$v;

  String? _requestRoute;
  String? get requestRoute => _$this._requestRoute;
  set requestRoute(String? requestRoute) => _$this._requestRoute = requestRoute;

  String? _requestToken;
  String? get requestToken => _$this._requestToken;
  set requestToken(String? requestToken) => _$this._requestToken = requestToken;

  _i2.Stream<List<int>>? _body;
  _i2.Stream<List<int>>? get body => _$this._body;
  set body(_i2.Stream<List<int>>? body) => _$this._body = body;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _acceptRanges;
  String? get acceptRanges => _$this._acceptRanges;
  set acceptRanges(String? acceptRanges) => _$this._acceptRanges = acceptRanges;

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

  String? _contentRange;
  String? get contentRange => _$this._contentRange;
  set contentRange(String? contentRange) => _$this._contentRange = contentRange;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

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

  bool? _deleteMarker;
  bool? get deleteMarker => _$this._deleteMarker;
  set deleteMarker(bool? deleteMarker) => _$this._deleteMarker = deleteMarker;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  DateTime? _expires;
  DateTime? get expires => _$this._expires;
  set expires(DateTime? expires) => _$this._expires = expires;

  String? _expiration;
  String? get expiration => _$this._expiration;
  set expiration(String? expiration) => _$this._expiration = expiration;

  DateTime? _lastModified;
  DateTime? get lastModified => _$this._lastModified;
  set lastModified(DateTime? lastModified) =>
      _$this._lastModified = lastModified;

  int? _missingMeta;
  int? get missingMeta => _$this._missingMeta;
  set missingMeta(int? missingMeta) => _$this._missingMeta = missingMeta;

  _i5.MapBuilder<String, String>? _metadata;
  _i5.MapBuilder<String, String> get metadata =>
      _$this._metadata ??= new _i5.MapBuilder<String, String>();
  set metadata(_i5.MapBuilder<String, String>? metadata) =>
      _$this._metadata = metadata;

  ObjectLockMode? _objectLockMode;
  ObjectLockMode? get objectLockMode => _$this._objectLockMode;
  set objectLockMode(ObjectLockMode? objectLockMode) =>
      _$this._objectLockMode = objectLockMode;

  ObjectLockLegalHoldStatus? _objectLockLegalHoldStatus;
  ObjectLockLegalHoldStatus? get objectLockLegalHoldStatus =>
      _$this._objectLockLegalHoldStatus;
  set objectLockLegalHoldStatus(
          ObjectLockLegalHoldStatus? objectLockLegalHoldStatus) =>
      _$this._objectLockLegalHoldStatus = objectLockLegalHoldStatus;

  DateTime? _objectLockRetainUntilDate;
  DateTime? get objectLockRetainUntilDate => _$this._objectLockRetainUntilDate;
  set objectLockRetainUntilDate(DateTime? objectLockRetainUntilDate) =>
      _$this._objectLockRetainUntilDate = objectLockRetainUntilDate;

  int? _partsCount;
  int? get partsCount => _$this._partsCount;
  set partsCount(int? partsCount) => _$this._partsCount = partsCount;

  ReplicationStatus? _replicationStatus;
  ReplicationStatus? get replicationStatus => _$this._replicationStatus;
  set replicationStatus(ReplicationStatus? replicationStatus) =>
      _$this._replicationStatus = replicationStatus;

  RequestCharged? _requestCharged;
  RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  String? _restore;
  String? get restore => _$this._restore;
  set restore(String? restore) => _$this._restore = restore;

  ServerSideEncryption? _serverSideEncryption;
  ServerSideEncryption? get serverSideEncryption =>
      _$this._serverSideEncryption;
  set serverSideEncryption(ServerSideEncryption? serverSideEncryption) =>
      _$this._serverSideEncryption = serverSideEncryption;

  String? _sseCustomerAlgorithm;
  String? get sseCustomerAlgorithm => _$this._sseCustomerAlgorithm;
  set sseCustomerAlgorithm(String? sseCustomerAlgorithm) =>
      _$this._sseCustomerAlgorithm = sseCustomerAlgorithm;

  String? _ssekmsKeyId;
  String? get ssekmsKeyId => _$this._ssekmsKeyId;
  set ssekmsKeyId(String? ssekmsKeyId) => _$this._ssekmsKeyId = ssekmsKeyId;

  String? _sseCustomerKeyMd5;
  String? get sseCustomerKeyMd5 => _$this._sseCustomerKeyMd5;
  set sseCustomerKeyMd5(String? sseCustomerKeyMd5) =>
      _$this._sseCustomerKeyMd5 = sseCustomerKeyMd5;

  StorageClass? _storageClass;
  StorageClass? get storageClass => _$this._storageClass;
  set storageClass(StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  int? _tagCount;
  int? get tagCount => _$this._tagCount;
  set tagCount(int? tagCount) => _$this._tagCount = tagCount;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  bool? _bucketKeyEnabled;
  bool? get bucketKeyEnabled => _$this._bucketKeyEnabled;
  set bucketKeyEnabled(bool? bucketKeyEnabled) =>
      _$this._bucketKeyEnabled = bucketKeyEnabled;

  WriteGetObjectResponseRequestBuilder() {
    WriteGetObjectResponseRequest._init(this);
  }

  WriteGetObjectResponseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestRoute = $v.requestRoute;
      _requestToken = $v.requestToken;
      _body = $v.body;
      _statusCode = $v.statusCode;
      _errorCode = $v.errorCode;
      _errorMessage = $v.errorMessage;
      _acceptRanges = $v.acceptRanges;
      _cacheControl = $v.cacheControl;
      _contentDisposition = $v.contentDisposition;
      _contentEncoding = $v.contentEncoding;
      _contentLanguage = $v.contentLanguage;
      _contentLength = $v.contentLength;
      _contentRange = $v.contentRange;
      _contentType = $v.contentType;
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _deleteMarker = $v.deleteMarker;
      _eTag = $v.eTag;
      _expires = $v.expires;
      _expiration = $v.expiration;
      _lastModified = $v.lastModified;
      _missingMeta = $v.missingMeta;
      _metadata = $v.metadata?.toBuilder();
      _objectLockMode = $v.objectLockMode;
      _objectLockLegalHoldStatus = $v.objectLockLegalHoldStatus;
      _objectLockRetainUntilDate = $v.objectLockRetainUntilDate;
      _partsCount = $v.partsCount;
      _replicationStatus = $v.replicationStatus;
      _requestCharged = $v.requestCharged;
      _restore = $v.restore;
      _serverSideEncryption = $v.serverSideEncryption;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _ssekmsKeyId = $v.ssekmsKeyId;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _storageClass = $v.storageClass;
      _tagCount = $v.tagCount;
      _versionId = $v.versionId;
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WriteGetObjectResponseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WriteGetObjectResponseRequest;
  }

  @override
  void update(void Function(WriteGetObjectResponseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WriteGetObjectResponseRequest build() => _build();

  _$WriteGetObjectResponseRequest _build() {
    _$WriteGetObjectResponseRequest _$result;
    try {
      _$result = _$v ??
          new _$WriteGetObjectResponseRequest._(
              requestRoute: BuiltValueNullFieldError.checkNotNull(requestRoute,
                  r'WriteGetObjectResponseRequest', 'requestRoute'),
              requestToken: BuiltValueNullFieldError.checkNotNull(requestToken,
                  r'WriteGetObjectResponseRequest', 'requestToken'),
              body: BuiltValueNullFieldError.checkNotNull(
                  body, r'WriteGetObjectResponseRequest', 'body'),
              statusCode: statusCode,
              errorCode: errorCode,
              errorMessage: errorMessage,
              acceptRanges: acceptRanges,
              cacheControl: cacheControl,
              contentDisposition: contentDisposition,
              contentEncoding: contentEncoding,
              contentLanguage: contentLanguage,
              contentLength: contentLength,
              contentRange: contentRange,
              contentType: contentType,
              checksumCrc32: checksumCrc32,
              checksumCrc32C: checksumCrc32C,
              checksumSha1: checksumSha1,
              checksumSha256: checksumSha256,
              deleteMarker: deleteMarker,
              eTag: eTag,
              expires: expires,
              expiration: expiration,
              lastModified: lastModified,
              missingMeta: missingMeta,
              metadata: _metadata?.build(),
              objectLockMode: objectLockMode,
              objectLockLegalHoldStatus: objectLockLegalHoldStatus,
              objectLockRetainUntilDate: objectLockRetainUntilDate,
              partsCount: partsCount,
              replicationStatus: replicationStatus,
              requestCharged: requestCharged,
              restore: restore,
              serverSideEncryption: serverSideEncryption,
              sseCustomerAlgorithm: sseCustomerAlgorithm,
              ssekmsKeyId: ssekmsKeyId,
              sseCustomerKeyMd5: sseCustomerKeyMd5,
              storageClass: storageClass,
              tagCount: tagCount,
              versionId: versionId,
              bucketKeyEnabled: bucketKeyEnabled);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WriteGetObjectResponseRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
