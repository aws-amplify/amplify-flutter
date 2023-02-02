// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.delete_object_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteObjectRequest extends DeleteObjectRequest {
  @override
  final String bucket;
  @override
  final bool? bypassGovernanceRetention;
  @override
  final String? expectedBucketOwner;
  @override
  final String key;
  @override
  final String? mfa;
  @override
  final _i3.RequestPayer? requestPayer;
  @override
  final String? versionId;

  factory _$DeleteObjectRequest(
          [void Function(DeleteObjectRequestBuilder)? updates]) =>
      (new DeleteObjectRequestBuilder()..update(updates))._build();

  _$DeleteObjectRequest._(
      {required this.bucket,
      this.bypassGovernanceRetention,
      this.expectedBucketOwner,
      required this.key,
      this.mfa,
      this.requestPayer,
      this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteObjectRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(key, r'DeleteObjectRequest', 'key');
  }

  @override
  DeleteObjectRequest rebuild(
          void Function(DeleteObjectRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteObjectRequestBuilder toBuilder() =>
      new DeleteObjectRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteObjectRequest &&
        bucket == other.bucket &&
        bypassGovernanceRetention == other.bypassGovernanceRetention &&
        expectedBucketOwner == other.expectedBucketOwner &&
        key == other.key &&
        mfa == other.mfa &&
        requestPayer == other.requestPayer &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, bypassGovernanceRetention.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, mfa.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteObjectRequestBuilder
    implements Builder<DeleteObjectRequest, DeleteObjectRequestBuilder> {
  _$DeleteObjectRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  bool? _bypassGovernanceRetention;
  bool? get bypassGovernanceRetention => _$this._bypassGovernanceRetention;
  set bypassGovernanceRetention(bool? bypassGovernanceRetention) =>
      _$this._bypassGovernanceRetention = bypassGovernanceRetention;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _mfa;
  String? get mfa => _$this._mfa;
  set mfa(String? mfa) => _$this._mfa = mfa;

  _i3.RequestPayer? _requestPayer;
  _i3.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i3.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  DeleteObjectRequestBuilder() {
    DeleteObjectRequest._init(this);
  }

  DeleteObjectRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _bypassGovernanceRetention = $v.bypassGovernanceRetention;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _key = $v.key;
      _mfa = $v.mfa;
      _requestPayer = $v.requestPayer;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteObjectRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteObjectRequest;
  }

  @override
  void update(void Function(DeleteObjectRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteObjectRequest build() => _build();

  _$DeleteObjectRequest _build() {
    final _$result = _$v ??
        new _$DeleteObjectRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteObjectRequest', 'bucket'),
            bypassGovernanceRetention: bypassGovernanceRetention,
            expectedBucketOwner: expectedBucketOwner,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'DeleteObjectRequest', 'key'),
            mfa: mfa,
            requestPayer: requestPayer,
            versionId: versionId);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteObjectRequestPayload extends DeleteObjectRequestPayload {
  factory _$DeleteObjectRequestPayload(
          [void Function(DeleteObjectRequestPayloadBuilder)? updates]) =>
      (new DeleteObjectRequestPayloadBuilder()..update(updates))._build();

  _$DeleteObjectRequestPayload._() : super._();

  @override
  DeleteObjectRequestPayload rebuild(
          void Function(DeleteObjectRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteObjectRequestPayloadBuilder toBuilder() =>
      new DeleteObjectRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteObjectRequestPayload;
  }

  @override
  int get hashCode {
    return 798446261;
  }
}

class DeleteObjectRequestPayloadBuilder
    implements
        Builder<DeleteObjectRequestPayload, DeleteObjectRequestPayloadBuilder> {
  _$DeleteObjectRequestPayload? _$v;

  DeleteObjectRequestPayloadBuilder() {
    DeleteObjectRequestPayload._init(this);
  }

  @override
  void replace(DeleteObjectRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteObjectRequestPayload;
  }

  @override
  void update(void Function(DeleteObjectRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteObjectRequestPayload build() => _build();

  _$DeleteObjectRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteObjectRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
