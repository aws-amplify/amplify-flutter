// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_object_acl_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutObjectAclRequest extends PutObjectAclRequest {
  @override
  final _i2.AccessControlPolicy? accessControlPolicy;
  @override
  final _i4.ObjectCannedAcl? acl;
  @override
  final String bucket;
  @override
  final _i5.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? contentMd5;
  @override
  final String? expectedBucketOwner;
  @override
  final String? grantFullControl;
  @override
  final String? grantRead;
  @override
  final String? grantReadAcp;
  @override
  final String? grantWrite;
  @override
  final String? grantWriteAcp;
  @override
  final String key;
  @override
  final _i6.RequestPayer? requestPayer;
  @override
  final String? versionId;

  factory _$PutObjectAclRequest(
          [void Function(PutObjectAclRequestBuilder)? updates]) =>
      (new PutObjectAclRequestBuilder()..update(updates))._build();

  _$PutObjectAclRequest._(
      {this.accessControlPolicy,
      this.acl,
      required this.bucket,
      this.checksumAlgorithm,
      this.contentMd5,
      this.expectedBucketOwner,
      this.grantFullControl,
      this.grantRead,
      this.grantReadAcp,
      this.grantWrite,
      this.grantWriteAcp,
      required this.key,
      this.requestPayer,
      this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutObjectAclRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(key, r'PutObjectAclRequest', 'key');
  }

  @override
  PutObjectAclRequest rebuild(
          void Function(PutObjectAclRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectAclRequestBuilder toBuilder() =>
      new PutObjectAclRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectAclRequest &&
        accessControlPolicy == other.accessControlPolicy &&
        acl == other.acl &&
        bucket == other.bucket &&
        checksumAlgorithm == other.checksumAlgorithm &&
        contentMd5 == other.contentMd5 &&
        expectedBucketOwner == other.expectedBucketOwner &&
        grantFullControl == other.grantFullControl &&
        grantRead == other.grantRead &&
        grantReadAcp == other.grantReadAcp &&
        grantWrite == other.grantWrite &&
        grantWriteAcp == other.grantWriteAcp &&
        key == other.key &&
        requestPayer == other.requestPayer &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessControlPolicy.hashCode);
    _$hash = $jc(_$hash, acl.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, grantFullControl.hashCode);
    _$hash = $jc(_$hash, grantRead.hashCode);
    _$hash = $jc(_$hash, grantReadAcp.hashCode);
    _$hash = $jc(_$hash, grantWrite.hashCode);
    _$hash = $jc(_$hash, grantWriteAcp.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutObjectAclRequestBuilder
    implements Builder<PutObjectAclRequest, PutObjectAclRequestBuilder> {
  _$PutObjectAclRequest? _$v;

  _i2.AccessControlPolicyBuilder? _accessControlPolicy;
  _i2.AccessControlPolicyBuilder get accessControlPolicy =>
      _$this._accessControlPolicy ??= new _i2.AccessControlPolicyBuilder();
  set accessControlPolicy(
          _i2.AccessControlPolicyBuilder? accessControlPolicy) =>
      _$this._accessControlPolicy = accessControlPolicy;

  _i4.ObjectCannedAcl? _acl;
  _i4.ObjectCannedAcl? get acl => _$this._acl;
  set acl(_i4.ObjectCannedAcl? acl) => _$this._acl = acl;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i5.ChecksumAlgorithm? _checksumAlgorithm;
  _i5.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i5.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  String? _contentMd5;
  String? get contentMd5 => _$this._contentMd5;
  set contentMd5(String? contentMd5) => _$this._contentMd5 = contentMd5;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

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

  String? _grantWrite;
  String? get grantWrite => _$this._grantWrite;
  set grantWrite(String? grantWrite) => _$this._grantWrite = grantWrite;

  String? _grantWriteAcp;
  String? get grantWriteAcp => _$this._grantWriteAcp;
  set grantWriteAcp(String? grantWriteAcp) =>
      _$this._grantWriteAcp = grantWriteAcp;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  _i6.RequestPayer? _requestPayer;
  _i6.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i6.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  PutObjectAclRequestBuilder() {
    PutObjectAclRequest._init(this);
  }

  PutObjectAclRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessControlPolicy = $v.accessControlPolicy?.toBuilder();
      _acl = $v.acl;
      _bucket = $v.bucket;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _contentMd5 = $v.contentMd5;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _grantFullControl = $v.grantFullControl;
      _grantRead = $v.grantRead;
      _grantReadAcp = $v.grantReadAcp;
      _grantWrite = $v.grantWrite;
      _grantWriteAcp = $v.grantWriteAcp;
      _key = $v.key;
      _requestPayer = $v.requestPayer;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutObjectAclRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectAclRequest;
  }

  @override
  void update(void Function(PutObjectAclRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectAclRequest build() => _build();

  _$PutObjectAclRequest _build() {
    _$PutObjectAclRequest _$result;
    try {
      _$result = _$v ??
          new _$PutObjectAclRequest._(
              accessControlPolicy: _accessControlPolicy?.build(),
              acl: acl,
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutObjectAclRequest', 'bucket'),
              checksumAlgorithm: checksumAlgorithm,
              contentMd5: contentMd5,
              expectedBucketOwner: expectedBucketOwner,
              grantFullControl: grantFullControl,
              grantRead: grantRead,
              grantReadAcp: grantReadAcp,
              grantWrite: grantWrite,
              grantWriteAcp: grantWriteAcp,
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'PutObjectAclRequest', 'key'),
              requestPayer: requestPayer,
              versionId: versionId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessControlPolicy';
        _accessControlPolicy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutObjectAclRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
