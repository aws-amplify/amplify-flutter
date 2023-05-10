// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.inventory_s3_bucket_destination;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InventoryS3BucketDestination extends InventoryS3BucketDestination {
  @override
  final String? accountId;
  @override
  final String bucket;
  @override
  final _i2.InventoryFormat format;
  @override
  final String? prefix;
  @override
  final _i3.InventoryEncryption? encryption;

  factory _$InventoryS3BucketDestination(
          [void Function(InventoryS3BucketDestinationBuilder)? updates]) =>
      (new InventoryS3BucketDestinationBuilder()..update(updates))._build();

  _$InventoryS3BucketDestination._(
      {this.accountId,
      required this.bucket,
      required this.format,
      this.prefix,
      this.encryption})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'InventoryS3BucketDestination', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        format, r'InventoryS3BucketDestination', 'format');
  }

  @override
  InventoryS3BucketDestination rebuild(
          void Function(InventoryS3BucketDestinationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InventoryS3BucketDestinationBuilder toBuilder() =>
      new InventoryS3BucketDestinationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InventoryS3BucketDestination &&
        accountId == other.accountId &&
        bucket == other.bucket &&
        format == other.format &&
        prefix == other.prefix &&
        encryption == other.encryption;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, encryption.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InventoryS3BucketDestinationBuilder
    implements
        Builder<InventoryS3BucketDestination,
            InventoryS3BucketDestinationBuilder> {
  _$InventoryS3BucketDestination? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i2.InventoryFormat? _format;
  _i2.InventoryFormat? get format => _$this._format;
  set format(_i2.InventoryFormat? format) => _$this._format = format;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  _i3.InventoryEncryptionBuilder? _encryption;
  _i3.InventoryEncryptionBuilder get encryption =>
      _$this._encryption ??= new _i3.InventoryEncryptionBuilder();
  set encryption(_i3.InventoryEncryptionBuilder? encryption) =>
      _$this._encryption = encryption;

  InventoryS3BucketDestinationBuilder() {
    InventoryS3BucketDestination._init(this);
  }

  InventoryS3BucketDestinationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _bucket = $v.bucket;
      _format = $v.format;
      _prefix = $v.prefix;
      _encryption = $v.encryption?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InventoryS3BucketDestination other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InventoryS3BucketDestination;
  }

  @override
  void update(void Function(InventoryS3BucketDestinationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InventoryS3BucketDestination build() => _build();

  _$InventoryS3BucketDestination _build() {
    _$InventoryS3BucketDestination _$result;
    try {
      _$result = _$v ??
          new _$InventoryS3BucketDestination._(
              accountId: accountId,
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'InventoryS3BucketDestination', 'bucket'),
              format: BuiltValueNullFieldError.checkNotNull(
                  format, r'InventoryS3BucketDestination', 'format'),
              prefix: prefix,
              encryption: _encryption?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'encryption';
        _encryption?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InventoryS3BucketDestination', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
