// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_acl_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketAclRequest extends PutBucketAclRequest {
  @override
  final _i2.AccessControlPolicy? accessControlPolicy;
  @override
  final _i4.BucketCannedAcl? acl;
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

  factory _$PutBucketAclRequest(
          [void Function(PutBucketAclRequestBuilder)? updates]) =>
      (new PutBucketAclRequestBuilder()..update(updates))._build();

  _$PutBucketAclRequest._(
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
      this.grantWriteAcp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketAclRequest', 'bucket');
  }

  @override
  PutBucketAclRequest rebuild(
          void Function(PutBucketAclRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketAclRequestBuilder toBuilder() =>
      new PutBucketAclRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketAclRequest &&
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
        grantWriteAcp == other.grantWriteAcp;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketAclRequestBuilder
    implements Builder<PutBucketAclRequest, PutBucketAclRequestBuilder> {
  _$PutBucketAclRequest? _$v;

  _i2.AccessControlPolicyBuilder? _accessControlPolicy;
  _i2.AccessControlPolicyBuilder get accessControlPolicy =>
      _$this._accessControlPolicy ??= new _i2.AccessControlPolicyBuilder();
  set accessControlPolicy(
          _i2.AccessControlPolicyBuilder? accessControlPolicy) =>
      _$this._accessControlPolicy = accessControlPolicy;

  _i4.BucketCannedAcl? _acl;
  _i4.BucketCannedAcl? get acl => _$this._acl;
  set acl(_i4.BucketCannedAcl? acl) => _$this._acl = acl;

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

  PutBucketAclRequestBuilder() {
    PutBucketAclRequest._init(this);
  }

  PutBucketAclRequestBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketAclRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketAclRequest;
  }

  @override
  void update(void Function(PutBucketAclRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketAclRequest build() => _build();

  _$PutBucketAclRequest _build() {
    _$PutBucketAclRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketAclRequest._(
              accessControlPolicy: _accessControlPolicy?.build(),
              acl: acl,
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketAclRequest', 'bucket'),
              checksumAlgorithm: checksumAlgorithm,
              contentMd5: contentMd5,
              expectedBucketOwner: expectedBucketOwner,
              grantFullControl: grantFullControl,
              grantRead: grantRead,
              grantReadAcp: grantReadAcp,
              grantWrite: grantWrite,
              grantWriteAcp: grantWriteAcp);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessControlPolicy';
        _accessControlPolicy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketAclRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
