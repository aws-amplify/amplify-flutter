// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_tagging_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectTaggingRequest extends GetObjectTaggingRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String key;
  @override
  final _i3.RequestPayer? requestPayer;
  @override
  final String? versionId;

  factory _$GetObjectTaggingRequest(
          [void Function(GetObjectTaggingRequestBuilder)? updates]) =>
      (new GetObjectTaggingRequestBuilder()..update(updates))._build();

  _$GetObjectTaggingRequest._(
      {required this.bucket,
      this.expectedBucketOwner,
      required this.key,
      this.requestPayer,
      this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetObjectTaggingRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'GetObjectTaggingRequest', 'key');
  }

  @override
  GetObjectTaggingRequest rebuild(
          void Function(GetObjectTaggingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectTaggingRequestBuilder toBuilder() =>
      new GetObjectTaggingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectTaggingRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner &&
        key == other.key &&
        requestPayer == other.requestPayer &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode),
                key.hashCode),
            requestPayer.hashCode),
        versionId.hashCode));
  }
}

class GetObjectTaggingRequestBuilder
    implements
        Builder<GetObjectTaggingRequest, GetObjectTaggingRequestBuilder> {
  _$GetObjectTaggingRequest? _$v;

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

  _i3.RequestPayer? _requestPayer;
  _i3.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i3.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  GetObjectTaggingRequestBuilder() {
    GetObjectTaggingRequest._init(this);
  }

  GetObjectTaggingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _key = $v.key;
      _requestPayer = $v.requestPayer;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectTaggingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectTaggingRequest;
  }

  @override
  void update(void Function(GetObjectTaggingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectTaggingRequest build() => _build();

  _$GetObjectTaggingRequest _build() {
    final _$result = _$v ??
        new _$GetObjectTaggingRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetObjectTaggingRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GetObjectTaggingRequest', 'key'),
            requestPayer: requestPayer,
            versionId: versionId);
    replace(_$result);
    return _$result;
  }
}

class _$GetObjectTaggingRequestPayload extends GetObjectTaggingRequestPayload {
  factory _$GetObjectTaggingRequestPayload(
          [void Function(GetObjectTaggingRequestPayloadBuilder)? updates]) =>
      (new GetObjectTaggingRequestPayloadBuilder()..update(updates))._build();

  _$GetObjectTaggingRequestPayload._() : super._();

  @override
  GetObjectTaggingRequestPayload rebuild(
          void Function(GetObjectTaggingRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectTaggingRequestPayloadBuilder toBuilder() =>
      new GetObjectTaggingRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectTaggingRequestPayload;
  }

  @override
  int get hashCode {
    return 91458753;
  }
}

class GetObjectTaggingRequestPayloadBuilder
    implements
        Builder<GetObjectTaggingRequestPayload,
            GetObjectTaggingRequestPayloadBuilder> {
  _$GetObjectTaggingRequestPayload? _$v;

  GetObjectTaggingRequestPayloadBuilder() {
    GetObjectTaggingRequestPayload._init(this);
  }

  @override
  void replace(GetObjectTaggingRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectTaggingRequestPayload;
  }

  @override
  void update(void Function(GetObjectTaggingRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectTaggingRequestPayload build() => _build();

  _$GetObjectTaggingRequestPayload _build() {
    final _$result = _$v ?? new _$GetObjectTaggingRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
