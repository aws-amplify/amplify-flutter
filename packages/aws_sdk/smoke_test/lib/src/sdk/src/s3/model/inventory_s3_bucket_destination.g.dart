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
  final _i2.InventoryEncryption? encryption;
  @override
  final _i3.InventoryFormat format;
  @override
  final String? prefix;

  factory _$InventoryS3BucketDestination(
          [void Function(InventoryS3BucketDestinationBuilder)? updates]) =>
      (new InventoryS3BucketDestinationBuilder()..update(updates))._build();

  _$InventoryS3BucketDestination._(
      {this.accountId,
      required this.bucket,
      this.encryption,
      required this.format,
      this.prefix})
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
        encryption == other.encryption &&
        format == other.format &&
        prefix == other.prefix;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, accountId.hashCode), bucket.hashCode),
                encryption.hashCode),
            format.hashCode),
        prefix.hashCode));
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

  _i2.InventoryEncryptionBuilder? _encryption;
  _i2.InventoryEncryptionBuilder get encryption =>
      _$this._encryption ??= new _i2.InventoryEncryptionBuilder();
  set encryption(_i2.InventoryEncryptionBuilder? encryption) =>
      _$this._encryption = encryption;

  _i3.InventoryFormat? _format;
  _i3.InventoryFormat? get format => _$this._format;
  set format(_i3.InventoryFormat? format) => _$this._format = format;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  InventoryS3BucketDestinationBuilder() {
    InventoryS3BucketDestination._init(this);
  }

  InventoryS3BucketDestinationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _bucket = $v.bucket;
      _encryption = $v.encryption?.toBuilder();
      _format = $v.format;
      _prefix = $v.prefix;
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
              encryption: _encryption?.build(),
              format: BuiltValueNullFieldError.checkNotNull(
                  format, r'InventoryS3BucketDestination', 'format'),
              prefix: prefix);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
