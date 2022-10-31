// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.create_bucket_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateBucketRequest extends CreateBucketRequest {
  @override
  final _i4.BucketCannedAcl? acl;
  @override
  final String bucket;
  @override
  final _i2.CreateBucketConfiguration? createBucketConfiguration;
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
  final bool? objectLockEnabledForBucket;
  @override
  final _i5.ObjectOwnership? objectOwnership;

  factory _$CreateBucketRequest(
          [void Function(CreateBucketRequestBuilder)? updates]) =>
      (new CreateBucketRequestBuilder()..update(updates))._build();

  _$CreateBucketRequest._(
      {this.acl,
      required this.bucket,
      this.createBucketConfiguration,
      this.grantFullControl,
      this.grantRead,
      this.grantReadAcp,
      this.grantWrite,
      this.grantWriteAcp,
      this.objectLockEnabledForBucket,
      this.objectOwnership})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'CreateBucketRequest', 'bucket');
  }

  @override
  CreateBucketRequest rebuild(
          void Function(CreateBucketRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateBucketRequestBuilder toBuilder() =>
      new CreateBucketRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBucketRequest &&
        acl == other.acl &&
        bucket == other.bucket &&
        createBucketConfiguration == other.createBucketConfiguration &&
        grantFullControl == other.grantFullControl &&
        grantRead == other.grantRead &&
        grantReadAcp == other.grantReadAcp &&
        grantWrite == other.grantWrite &&
        grantWriteAcp == other.grantWriteAcp &&
        objectLockEnabledForBucket == other.objectLockEnabledForBucket &&
        objectOwnership == other.objectOwnership;
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
                                $jc($jc($jc(0, acl.hashCode), bucket.hashCode),
                                    createBucketConfiguration.hashCode),
                                grantFullControl.hashCode),
                            grantRead.hashCode),
                        grantReadAcp.hashCode),
                    grantWrite.hashCode),
                grantWriteAcp.hashCode),
            objectLockEnabledForBucket.hashCode),
        objectOwnership.hashCode));
  }
}

class CreateBucketRequestBuilder
    implements Builder<CreateBucketRequest, CreateBucketRequestBuilder> {
  _$CreateBucketRequest? _$v;

  _i4.BucketCannedAcl? _acl;
  _i4.BucketCannedAcl? get acl => _$this._acl;
  set acl(_i4.BucketCannedAcl? acl) => _$this._acl = acl;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i2.CreateBucketConfigurationBuilder? _createBucketConfiguration;
  _i2.CreateBucketConfigurationBuilder get createBucketConfiguration =>
      _$this._createBucketConfiguration ??=
          new _i2.CreateBucketConfigurationBuilder();
  set createBucketConfiguration(
          _i2.CreateBucketConfigurationBuilder? createBucketConfiguration) =>
      _$this._createBucketConfiguration = createBucketConfiguration;

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

  bool? _objectLockEnabledForBucket;
  bool? get objectLockEnabledForBucket => _$this._objectLockEnabledForBucket;
  set objectLockEnabledForBucket(bool? objectLockEnabledForBucket) =>
      _$this._objectLockEnabledForBucket = objectLockEnabledForBucket;

  _i5.ObjectOwnership? _objectOwnership;
  _i5.ObjectOwnership? get objectOwnership => _$this._objectOwnership;
  set objectOwnership(_i5.ObjectOwnership? objectOwnership) =>
      _$this._objectOwnership = objectOwnership;

  CreateBucketRequestBuilder() {
    CreateBucketRequest._init(this);
  }

  CreateBucketRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _acl = $v.acl;
      _bucket = $v.bucket;
      _createBucketConfiguration = $v.createBucketConfiguration?.toBuilder();
      _grantFullControl = $v.grantFullControl;
      _grantRead = $v.grantRead;
      _grantReadAcp = $v.grantReadAcp;
      _grantWrite = $v.grantWrite;
      _grantWriteAcp = $v.grantWriteAcp;
      _objectLockEnabledForBucket = $v.objectLockEnabledForBucket;
      _objectOwnership = $v.objectOwnership;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateBucketRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateBucketRequest;
  }

  @override
  void update(void Function(CreateBucketRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBucketRequest build() => _build();

  _$CreateBucketRequest _build() {
    _$CreateBucketRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateBucketRequest._(
              acl: acl,
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'CreateBucketRequest', 'bucket'),
              createBucketConfiguration: _createBucketConfiguration?.build(),
              grantFullControl: grantFullControl,
              grantRead: grantRead,
              grantReadAcp: grantReadAcp,
              grantWrite: grantWrite,
              grantWriteAcp: grantWriteAcp,
              objectLockEnabledForBucket: objectLockEnabledForBucket,
              objectOwnership: objectOwnership);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createBucketConfiguration';
        _createBucketConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateBucketRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
