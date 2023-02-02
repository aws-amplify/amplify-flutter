// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delivery_channel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryChannel extends DeliveryChannel {
  @override
  final _i2.ConfigSnapshotDeliveryProperties? configSnapshotDeliveryProperties;
  @override
  final String? name;
  @override
  final String? s3BucketName;
  @override
  final String? s3KeyPrefix;
  @override
  final String? s3KmsKeyArn;
  @override
  final String? snsTopicArn;

  factory _$DeliveryChannel([void Function(DeliveryChannelBuilder)? updates]) =>
      (new DeliveryChannelBuilder()..update(updates))._build();

  _$DeliveryChannel._(
      {this.configSnapshotDeliveryProperties,
      this.name,
      this.s3BucketName,
      this.s3KeyPrefix,
      this.s3KmsKeyArn,
      this.snsTopicArn})
      : super._();

  @override
  DeliveryChannel rebuild(void Function(DeliveryChannelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryChannelBuilder toBuilder() =>
      new DeliveryChannelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryChannel &&
        configSnapshotDeliveryProperties ==
            other.configSnapshotDeliveryProperties &&
        name == other.name &&
        s3BucketName == other.s3BucketName &&
        s3KeyPrefix == other.s3KeyPrefix &&
        s3KmsKeyArn == other.s3KmsKeyArn &&
        snsTopicArn == other.snsTopicArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configSnapshotDeliveryProperties.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, s3BucketName.hashCode);
    _$hash = $jc(_$hash, s3KeyPrefix.hashCode);
    _$hash = $jc(_$hash, s3KmsKeyArn.hashCode);
    _$hash = $jc(_$hash, snsTopicArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeliveryChannelBuilder
    implements Builder<DeliveryChannel, DeliveryChannelBuilder> {
  _$DeliveryChannel? _$v;

  _i2.ConfigSnapshotDeliveryPropertiesBuilder?
      _configSnapshotDeliveryProperties;
  _i2.ConfigSnapshotDeliveryPropertiesBuilder
      get configSnapshotDeliveryProperties =>
          _$this._configSnapshotDeliveryProperties ??=
              new _i2.ConfigSnapshotDeliveryPropertiesBuilder();
  set configSnapshotDeliveryProperties(
          _i2.ConfigSnapshotDeliveryPropertiesBuilder?
              configSnapshotDeliveryProperties) =>
      _$this._configSnapshotDeliveryProperties =
          configSnapshotDeliveryProperties;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _s3BucketName;
  String? get s3BucketName => _$this._s3BucketName;
  set s3BucketName(String? s3BucketName) => _$this._s3BucketName = s3BucketName;

  String? _s3KeyPrefix;
  String? get s3KeyPrefix => _$this._s3KeyPrefix;
  set s3KeyPrefix(String? s3KeyPrefix) => _$this._s3KeyPrefix = s3KeyPrefix;

  String? _s3KmsKeyArn;
  String? get s3KmsKeyArn => _$this._s3KmsKeyArn;
  set s3KmsKeyArn(String? s3KmsKeyArn) => _$this._s3KmsKeyArn = s3KmsKeyArn;

  String? _snsTopicArn;
  String? get snsTopicArn => _$this._snsTopicArn;
  set snsTopicArn(String? snsTopicArn) => _$this._snsTopicArn = snsTopicArn;

  DeliveryChannelBuilder() {
    DeliveryChannel._init(this);
  }

  DeliveryChannelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configSnapshotDeliveryProperties =
          $v.configSnapshotDeliveryProperties?.toBuilder();
      _name = $v.name;
      _s3BucketName = $v.s3BucketName;
      _s3KeyPrefix = $v.s3KeyPrefix;
      _s3KmsKeyArn = $v.s3KmsKeyArn;
      _snsTopicArn = $v.snsTopicArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryChannel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeliveryChannel;
  }

  @override
  void update(void Function(DeliveryChannelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryChannel build() => _build();

  _$DeliveryChannel _build() {
    _$DeliveryChannel _$result;
    try {
      _$result = _$v ??
          new _$DeliveryChannel._(
              configSnapshotDeliveryProperties:
                  _configSnapshotDeliveryProperties?.build(),
              name: name,
              s3BucketName: s3BucketName,
              s3KeyPrefix: s3KeyPrefix,
              s3KmsKeyArn: s3KmsKeyArn,
              snsTopicArn: snsTopicArn);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configSnapshotDeliveryProperties';
        _configSnapshotDeliveryProperties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeliveryChannel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
