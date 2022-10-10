// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_acl_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectAclRequest extends GetObjectAclRequest {
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

  factory _$GetObjectAclRequest(
          [void Function(GetObjectAclRequestBuilder)? updates]) =>
      (new GetObjectAclRequestBuilder()..update(updates))._build();

  _$GetObjectAclRequest._(
      {required this.bucket,
      this.expectedBucketOwner,
      required this.key,
      this.requestPayer,
      this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetObjectAclRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(key, r'GetObjectAclRequest', 'key');
  }

  @override
  GetObjectAclRequest rebuild(
          void Function(GetObjectAclRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectAclRequestBuilder toBuilder() =>
      new GetObjectAclRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectAclRequest &&
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

class GetObjectAclRequestBuilder
    implements Builder<GetObjectAclRequest, GetObjectAclRequestBuilder> {
  _$GetObjectAclRequest? _$v;

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

  GetObjectAclRequestBuilder() {
    GetObjectAclRequest._init(this);
  }

  GetObjectAclRequestBuilder get _$this {
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
  void replace(GetObjectAclRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectAclRequest;
  }

  @override
  void update(void Function(GetObjectAclRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectAclRequest build() => _build();

  _$GetObjectAclRequest _build() {
    final _$result = _$v ??
        new _$GetObjectAclRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetObjectAclRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GetObjectAclRequest', 'key'),
            requestPayer: requestPayer,
            versionId: versionId);
    replace(_$result);
    return _$result;
  }
}

class _$GetObjectAclRequestPayload extends GetObjectAclRequestPayload {
  factory _$GetObjectAclRequestPayload(
          [void Function(GetObjectAclRequestPayloadBuilder)? updates]) =>
      (new GetObjectAclRequestPayloadBuilder()..update(updates))._build();

  _$GetObjectAclRequestPayload._() : super._();

  @override
  GetObjectAclRequestPayload rebuild(
          void Function(GetObjectAclRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectAclRequestPayloadBuilder toBuilder() =>
      new GetObjectAclRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectAclRequestPayload;
  }

  @override
  int get hashCode {
    return 274248117;
  }
}

class GetObjectAclRequestPayloadBuilder
    implements
        Builder<GetObjectAclRequestPayload, GetObjectAclRequestPayloadBuilder> {
  _$GetObjectAclRequestPayload? _$v;

  GetObjectAclRequestPayloadBuilder() {
    GetObjectAclRequestPayload._init(this);
  }

  @override
  void replace(GetObjectAclRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectAclRequestPayload;
  }

  @override
  void update(void Function(GetObjectAclRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectAclRequestPayload build() => _build();

  _$GetObjectAclRequestPayload _build() {
    final _$result = _$v ?? new _$GetObjectAclRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
