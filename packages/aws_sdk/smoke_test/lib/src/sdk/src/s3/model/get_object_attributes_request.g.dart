// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_attributes_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectAttributesRequest extends GetObjectAttributesRequest {
  @override
  final String bucket;
  @override
  final String key;
  @override
  final String? versionId;
  @override
  final int maxParts;
  @override
  final String? partNumberMarker;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final _i3.RequestPayer? requestPayer;
  @override
  final String? expectedBucketOwner;
  @override
  final _i5.BuiltList<_i4.ObjectAttributes> objectAttributes;

  factory _$GetObjectAttributesRequest(
          [void Function(GetObjectAttributesRequestBuilder)? updates]) =>
      (new GetObjectAttributesRequestBuilder()..update(updates))._build();

  _$GetObjectAttributesRequest._(
      {required this.bucket,
      required this.key,
      this.versionId,
      required this.maxParts,
      this.partNumberMarker,
      this.sseCustomerAlgorithm,
      this.sseCustomerKey,
      this.sseCustomerKeyMd5,
      this.requestPayer,
      this.expectedBucketOwner,
      required this.objectAttributes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetObjectAttributesRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'GetObjectAttributesRequest', 'key');
    BuiltValueNullFieldError.checkNotNull(
        maxParts, r'GetObjectAttributesRequest', 'maxParts');
    BuiltValueNullFieldError.checkNotNull(
        objectAttributes, r'GetObjectAttributesRequest', 'objectAttributes');
  }

  @override
  GetObjectAttributesRequest rebuild(
          void Function(GetObjectAttributesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectAttributesRequestBuilder toBuilder() =>
      new GetObjectAttributesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectAttributesRequest &&
        bucket == other.bucket &&
        key == other.key &&
        versionId == other.versionId &&
        maxParts == other.maxParts &&
        partNumberMarker == other.partNumberMarker &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKey == other.sseCustomerKey &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        requestPayer == other.requestPayer &&
        expectedBucketOwner == other.expectedBucketOwner &&
        objectAttributes == other.objectAttributes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, maxParts.hashCode);
    _$hash = $jc(_$hash, partNumberMarker.hashCode);
    _$hash = $jc(_$hash, sseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, sseCustomerKey.hashCode);
    _$hash = $jc(_$hash, sseCustomerKeyMd5.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, objectAttributes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetObjectAttributesRequestBuilder
    implements
        Builder<GetObjectAttributesRequest, GetObjectAttributesRequestBuilder> {
  _$GetObjectAttributesRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  int? _maxParts;
  int? get maxParts => _$this._maxParts;
  set maxParts(int? maxParts) => _$this._maxParts = maxParts;

  String? _partNumberMarker;
  String? get partNumberMarker => _$this._partNumberMarker;
  set partNumberMarker(String? partNumberMarker) =>
      _$this._partNumberMarker = partNumberMarker;

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

  _i3.RequestPayer? _requestPayer;
  _i3.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i3.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  _i5.ListBuilder<_i4.ObjectAttributes>? _objectAttributes;
  _i5.ListBuilder<_i4.ObjectAttributes> get objectAttributes =>
      _$this._objectAttributes ??= new _i5.ListBuilder<_i4.ObjectAttributes>();
  set objectAttributes(
          _i5.ListBuilder<_i4.ObjectAttributes>? objectAttributes) =>
      _$this._objectAttributes = objectAttributes;

  GetObjectAttributesRequestBuilder() {
    GetObjectAttributesRequest._init(this);
  }

  GetObjectAttributesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _key = $v.key;
      _versionId = $v.versionId;
      _maxParts = $v.maxParts;
      _partNumberMarker = $v.partNumberMarker;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKey = $v.sseCustomerKey;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _requestPayer = $v.requestPayer;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _objectAttributes = $v.objectAttributes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectAttributesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectAttributesRequest;
  }

  @override
  void update(void Function(GetObjectAttributesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectAttributesRequest build() => _build();

  _$GetObjectAttributesRequest _build() {
    _$GetObjectAttributesRequest _$result;
    try {
      _$result = _$v ??
          new _$GetObjectAttributesRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'GetObjectAttributesRequest', 'bucket'),
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'GetObjectAttributesRequest', 'key'),
              versionId: versionId,
              maxParts: BuiltValueNullFieldError.checkNotNull(
                  maxParts, r'GetObjectAttributesRequest', 'maxParts'),
              partNumberMarker: partNumberMarker,
              sseCustomerAlgorithm: sseCustomerAlgorithm,
              sseCustomerKey: sseCustomerKey,
              sseCustomerKeyMd5: sseCustomerKeyMd5,
              requestPayer: requestPayer,
              expectedBucketOwner: expectedBucketOwner,
              objectAttributes: objectAttributes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'objectAttributes';
        objectAttributes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetObjectAttributesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetObjectAttributesRequestPayload
    extends GetObjectAttributesRequestPayload {
  factory _$GetObjectAttributesRequestPayload(
          [void Function(GetObjectAttributesRequestPayloadBuilder)? updates]) =>
      (new GetObjectAttributesRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetObjectAttributesRequestPayload._() : super._();

  @override
  GetObjectAttributesRequestPayload rebuild(
          void Function(GetObjectAttributesRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectAttributesRequestPayloadBuilder toBuilder() =>
      new GetObjectAttributesRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectAttributesRequestPayload;
  }

  @override
  int get hashCode {
    return 984749804;
  }
}

class GetObjectAttributesRequestPayloadBuilder
    implements
        Builder<GetObjectAttributesRequestPayload,
            GetObjectAttributesRequestPayloadBuilder> {
  _$GetObjectAttributesRequestPayload? _$v;

  GetObjectAttributesRequestPayloadBuilder() {
    GetObjectAttributesRequestPayload._init(this);
  }

  @override
  void replace(GetObjectAttributesRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectAttributesRequestPayload;
  }

  @override
  void update(
      void Function(GetObjectAttributesRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectAttributesRequestPayload build() => _build();

  _$GetObjectAttributesRequestPayload _build() {
    final _$result = _$v ?? new _$GetObjectAttributesRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
