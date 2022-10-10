// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_attributes_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectAttributesRequest extends GetObjectAttributesRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String key;
  @override
  final int? maxParts;
  @override
  final _i5.BuiltList<_i3.ObjectAttributes> objectAttributes;
  @override
  final String? partNumberMarker;
  @override
  final _i4.RequestPayer? requestPayer;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String? versionId;

  factory _$GetObjectAttributesRequest(
          [void Function(GetObjectAttributesRequestBuilder)? updates]) =>
      (new GetObjectAttributesRequestBuilder()..update(updates))._build();

  _$GetObjectAttributesRequest._(
      {required this.bucket,
      this.expectedBucketOwner,
      required this.key,
      this.maxParts,
      required this.objectAttributes,
      this.partNumberMarker,
      this.requestPayer,
      this.sseCustomerAlgorithm,
      this.sseCustomerKey,
      this.sseCustomerKeyMd5,
      this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetObjectAttributesRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'GetObjectAttributesRequest', 'key');
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
        expectedBucketOwner == other.expectedBucketOwner &&
        key == other.key &&
        maxParts == other.maxParts &&
        objectAttributes == other.objectAttributes &&
        partNumberMarker == other.partNumberMarker &&
        requestPayer == other.requestPayer &&
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
                                        $jc($jc(0, bucket.hashCode),
                                            expectedBucketOwner.hashCode),
                                        key.hashCode),
                                    maxParts.hashCode),
                                objectAttributes.hashCode),
                            partNumberMarker.hashCode),
                        requestPayer.hashCode),
                    sseCustomerAlgorithm.hashCode),
                sseCustomerKey.hashCode),
            sseCustomerKeyMd5.hashCode),
        versionId.hashCode));
  }
}

class GetObjectAttributesRequestBuilder
    implements
        Builder<GetObjectAttributesRequest, GetObjectAttributesRequestBuilder> {
  _$GetObjectAttributesRequest? _$v;

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

  _i5.ListBuilder<_i3.ObjectAttributes>? _objectAttributes;
  _i5.ListBuilder<_i3.ObjectAttributes> get objectAttributes =>
      _$this._objectAttributes ??= new _i5.ListBuilder<_i3.ObjectAttributes>();
  set objectAttributes(
          _i5.ListBuilder<_i3.ObjectAttributes>? objectAttributes) =>
      _$this._objectAttributes = objectAttributes;

  String? _partNumberMarker;
  String? get partNumberMarker => _$this._partNumberMarker;
  set partNumberMarker(String? partNumberMarker) =>
      _$this._partNumberMarker = partNumberMarker;

  _i4.RequestPayer? _requestPayer;
  _i4.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i4.RequestPayer? requestPayer) =>
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

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  GetObjectAttributesRequestBuilder() {
    GetObjectAttributesRequest._init(this);
  }

  GetObjectAttributesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _key = $v.key;
      _maxParts = $v.maxParts;
      _objectAttributes = $v.objectAttributes.toBuilder();
      _partNumberMarker = $v.partNumberMarker;
      _requestPayer = $v.requestPayer;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKey = $v.sseCustomerKey;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _versionId = $v.versionId;
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
              expectedBucketOwner: expectedBucketOwner,
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'GetObjectAttributesRequest', 'key'),
              maxParts: maxParts,
              objectAttributes: objectAttributes.build(),
              partNumberMarker: partNumberMarker,
              requestPayer: requestPayer,
              sseCustomerAlgorithm: sseCustomerAlgorithm,
              sseCustomerKey: sseCustomerKey,
              sseCustomerKeyMd5: sseCustomerKeyMd5,
              versionId: versionId);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
