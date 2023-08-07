// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Destination extends Destination {
  @override
  final String bucket;
  @override
  final String? account;
  @override
  final StorageClass? storageClass;
  @override
  final AccessControlTranslation? accessControlTranslation;
  @override
  final EncryptionConfiguration? encryptionConfiguration;
  @override
  final ReplicationTime? replicationTime;
  @override
  final Metrics? metrics;

  factory _$Destination([void Function(DestinationBuilder)? updates]) =>
      (new DestinationBuilder()..update(updates))._build();

  _$Destination._(
      {required this.bucket,
      this.account,
      this.storageClass,
      this.accessControlTranslation,
      this.encryptionConfiguration,
      this.replicationTime,
      this.metrics})
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
        bucket == other.bucket &&
        account == other.account &&
        storageClass == other.storageClass &&
        accessControlTranslation == other.accessControlTranslation &&
        encryptionConfiguration == other.encryptionConfiguration &&
        replicationTime == other.replicationTime &&
        metrics == other.metrics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jc(_$hash, accessControlTranslation.hashCode);
    _$hash = $jc(_$hash, encryptionConfiguration.hashCode);
    _$hash = $jc(_$hash, replicationTime.hashCode);
    _$hash = $jc(_$hash, metrics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DestinationBuilder implements Builder<Destination, DestinationBuilder> {
  _$Destination? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  StorageClass? _storageClass;
  StorageClass? get storageClass => _$this._storageClass;
  set storageClass(StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  AccessControlTranslationBuilder? _accessControlTranslation;
  AccessControlTranslationBuilder get accessControlTranslation =>
      _$this._accessControlTranslation ??=
          new AccessControlTranslationBuilder();
  set accessControlTranslation(
          AccessControlTranslationBuilder? accessControlTranslation) =>
      _$this._accessControlTranslation = accessControlTranslation;

  EncryptionConfigurationBuilder? _encryptionConfiguration;
  EncryptionConfigurationBuilder get encryptionConfiguration =>
      _$this._encryptionConfiguration ??= new EncryptionConfigurationBuilder();
  set encryptionConfiguration(
          EncryptionConfigurationBuilder? encryptionConfiguration) =>
      _$this._encryptionConfiguration = encryptionConfiguration;

  ReplicationTimeBuilder? _replicationTime;
  ReplicationTimeBuilder get replicationTime =>
      _$this._replicationTime ??= new ReplicationTimeBuilder();
  set replicationTime(ReplicationTimeBuilder? replicationTime) =>
      _$this._replicationTime = replicationTime;

  MetricsBuilder? _metrics;
  MetricsBuilder get metrics => _$this._metrics ??= new MetricsBuilder();
  set metrics(MetricsBuilder? metrics) => _$this._metrics = metrics;

  DestinationBuilder();

  DestinationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _account = $v.account;
      _storageClass = $v.storageClass;
      _accessControlTranslation = $v.accessControlTranslation?.toBuilder();
      _encryptionConfiguration = $v.encryptionConfiguration?.toBuilder();
      _replicationTime = $v.replicationTime?.toBuilder();
      _metrics = $v.metrics?.toBuilder();
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
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'Destination', 'bucket'),
              account: account,
              storageClass: storageClass,
              accessControlTranslation: _accessControlTranslation?.build(),
              encryptionConfiguration: _encryptionConfiguration?.build(),
              replicationTime: _replicationTime?.build(),
              metrics: _metrics?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessControlTranslation';
        _accessControlTranslation?.build();
        _$failedField = 'encryptionConfiguration';
        _encryptionConfiguration?.build();
        _$failedField = 'replicationTime';
        _replicationTime?.build();
        _$failedField = 'metrics';
        _metrics?.build();
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
