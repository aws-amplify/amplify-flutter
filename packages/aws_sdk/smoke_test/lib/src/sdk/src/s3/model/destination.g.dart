// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.destination;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Destination extends Destination {
  @override
  final _i2.AccessControlTranslation? accessControlTranslation;
  @override
  final String? account;
  @override
  final String bucket;
  @override
  final _i3.EncryptionConfiguration? encryptionConfiguration;
  @override
  final _i4.Metrics? metrics;
  @override
  final _i5.ReplicationTime? replicationTime;
  @override
  final _i6.StorageClass? storageClass;

  factory _$Destination([void Function(DestinationBuilder)? updates]) =>
      (new DestinationBuilder()..update(updates))._build();

  _$Destination._(
      {this.accessControlTranslation,
      this.account,
      required this.bucket,
      this.encryptionConfiguration,
      this.metrics,
      this.replicationTime,
      this.storageClass})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(bucket, r'Destination', 'bucket');
  }

  @override
  Destination rebuild(void Function(DestinationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DestinationBuilder toBuilder() => new DestinationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Destination &&
        accessControlTranslation == other.accessControlTranslation &&
        account == other.account &&
        bucket == other.bucket &&
        encryptionConfiguration == other.encryptionConfiguration &&
        metrics == other.metrics &&
        replicationTime == other.replicationTime &&
        storageClass == other.storageClass;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessControlTranslation.hashCode);
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, encryptionConfiguration.hashCode);
    _$hash = $jc(_$hash, metrics.hashCode);
    _$hash = $jc(_$hash, replicationTime.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DestinationBuilder implements Builder<Destination, DestinationBuilder> {
  _$Destination? _$v;

  _i2.AccessControlTranslationBuilder? _accessControlTranslation;
  _i2.AccessControlTranslationBuilder get accessControlTranslation =>
      _$this._accessControlTranslation ??=
          new _i2.AccessControlTranslationBuilder();
  set accessControlTranslation(
          _i2.AccessControlTranslationBuilder? accessControlTranslation) =>
      _$this._accessControlTranslation = accessControlTranslation;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i3.EncryptionConfigurationBuilder? _encryptionConfiguration;
  _i3.EncryptionConfigurationBuilder get encryptionConfiguration =>
      _$this._encryptionConfiguration ??=
          new _i3.EncryptionConfigurationBuilder();
  set encryptionConfiguration(
          _i3.EncryptionConfigurationBuilder? encryptionConfiguration) =>
      _$this._encryptionConfiguration = encryptionConfiguration;

  _i4.MetricsBuilder? _metrics;
  _i4.MetricsBuilder get metrics =>
      _$this._metrics ??= new _i4.MetricsBuilder();
  set metrics(_i4.MetricsBuilder? metrics) => _$this._metrics = metrics;

  _i5.ReplicationTimeBuilder? _replicationTime;
  _i5.ReplicationTimeBuilder get replicationTime =>
      _$this._replicationTime ??= new _i5.ReplicationTimeBuilder();
  set replicationTime(_i5.ReplicationTimeBuilder? replicationTime) =>
      _$this._replicationTime = replicationTime;

  _i6.StorageClass? _storageClass;
  _i6.StorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i6.StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  DestinationBuilder() {
    Destination._init(this);
  }

  DestinationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessControlTranslation = $v.accessControlTranslation?.toBuilder();
      _account = $v.account;
      _bucket = $v.bucket;
      _encryptionConfiguration = $v.encryptionConfiguration?.toBuilder();
      _metrics = $v.metrics?.toBuilder();
      _replicationTime = $v.replicationTime?.toBuilder();
      _storageClass = $v.storageClass;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Destination other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Destination;
  }

  @override
  void update(void Function(DestinationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Destination build() => _build();

  _$Destination _build() {
    _$Destination _$result;
    try {
      _$result = _$v ??
          new _$Destination._(
              accessControlTranslation: _accessControlTranslation?.build(),
              account: account,
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'Destination', 'bucket'),
              encryptionConfiguration: _encryptionConfiguration?.build(),
              metrics: _metrics?.build(),
              replicationTime: _replicationTime?.build(),
              storageClass: storageClass);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessControlTranslation';
        _accessControlTranslation?.build();

        _$failedField = 'encryptionConfiguration';
        _encryptionConfiguration?.build();
        _$failedField = 'metrics';
        _metrics?.build();
        _$failedField = 'replicationTime';
        _replicationTime?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Destination', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
