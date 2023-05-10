// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_inventory_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketInventoryConfigurationRequest
    extends PutBucketInventoryConfigurationRequest {
  @override
  final String bucket;
  @override
  final String id;
  @override
  final _i2.InventoryConfiguration inventoryConfiguration;
  @override
  final String? expectedBucketOwner;

  factory _$PutBucketInventoryConfigurationRequest(
          [void Function(PutBucketInventoryConfigurationRequestBuilder)?
              updates]) =>
      (new PutBucketInventoryConfigurationRequestBuilder()..update(updates))
          ._build();

  _$PutBucketInventoryConfigurationRequest._(
      {required this.bucket,
      required this.id,
      required this.inventoryConfiguration,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketInventoryConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        id, r'PutBucketInventoryConfigurationRequest', 'id');
    BuiltValueNullFieldError.checkNotNull(inventoryConfiguration,
        r'PutBucketInventoryConfigurationRequest', 'inventoryConfiguration');
  }

  @override
  PutBucketInventoryConfigurationRequest rebuild(
          void Function(PutBucketInventoryConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketInventoryConfigurationRequestBuilder toBuilder() =>
      new PutBucketInventoryConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketInventoryConfigurationRequest &&
        bucket == other.bucket &&
        id == other.id &&
        inventoryConfiguration == other.inventoryConfiguration &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, inventoryConfiguration.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketInventoryConfigurationRequestBuilder
    implements
        Builder<PutBucketInventoryConfigurationRequest,
            PutBucketInventoryConfigurationRequestBuilder> {
  _$PutBucketInventoryConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.InventoryConfigurationBuilder? _inventoryConfiguration;
  _i2.InventoryConfigurationBuilder get inventoryConfiguration =>
      _$this._inventoryConfiguration ??=
          new _i2.InventoryConfigurationBuilder();
  set inventoryConfiguration(
          _i2.InventoryConfigurationBuilder? inventoryConfiguration) =>
      _$this._inventoryConfiguration = inventoryConfiguration;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutBucketInventoryConfigurationRequestBuilder() {
    PutBucketInventoryConfigurationRequest._init(this);
  }

  PutBucketInventoryConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _id = $v.id;
      _inventoryConfiguration = $v.inventoryConfiguration.toBuilder();
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketInventoryConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketInventoryConfigurationRequest;
  }

  @override
  void update(
      void Function(PutBucketInventoryConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketInventoryConfigurationRequest build() => _build();

  _$PutBucketInventoryConfigurationRequest _build() {
    _$PutBucketInventoryConfigurationRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketInventoryConfigurationRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketInventoryConfigurationRequest', 'bucket'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'PutBucketInventoryConfigurationRequest', 'id'),
              inventoryConfiguration: inventoryConfiguration.build(),
              expectedBucketOwner: expectedBucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inventoryConfiguration';
        inventoryConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketInventoryConfigurationRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
