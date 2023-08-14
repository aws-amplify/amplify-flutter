// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_log_s3_destination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessLogS3Destination extends VerifiedAccessLogS3Destination {
  @override
  final bool enabled;
  @override
  final VerifiedAccessLogDeliveryStatus? deliveryStatus;
  @override
  final String? bucketName;
  @override
  final String? prefix;
  @override
  final String? bucketOwner;

  factory _$VerifiedAccessLogS3Destination(
          [void Function(VerifiedAccessLogS3DestinationBuilder)? updates]) =>
      (new VerifiedAccessLogS3DestinationBuilder()..update(updates))._build();

  _$VerifiedAccessLogS3Destination._(
      {required this.enabled,
      this.deliveryStatus,
      this.bucketName,
      this.prefix,
      this.bucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'VerifiedAccessLogS3Destination', 'enabled');
  }

  @override
  VerifiedAccessLogS3Destination rebuild(
          void Function(VerifiedAccessLogS3DestinationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessLogS3DestinationBuilder toBuilder() =>
      new VerifiedAccessLogS3DestinationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessLogS3Destination &&
        enabled == other.enabled &&
        deliveryStatus == other.deliveryStatus &&
        bucketName == other.bucketName &&
        prefix == other.prefix &&
        bucketOwner == other.bucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, deliveryStatus.hashCode);
    _$hash = $jc(_$hash, bucketName.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, bucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessLogS3DestinationBuilder
    implements
        Builder<VerifiedAccessLogS3Destination,
            VerifiedAccessLogS3DestinationBuilder> {
  _$VerifiedAccessLogS3Destination? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  VerifiedAccessLogDeliveryStatusBuilder? _deliveryStatus;
  VerifiedAccessLogDeliveryStatusBuilder get deliveryStatus =>
      _$this._deliveryStatus ??= new VerifiedAccessLogDeliveryStatusBuilder();
  set deliveryStatus(VerifiedAccessLogDeliveryStatusBuilder? deliveryStatus) =>
      _$this._deliveryStatus = deliveryStatus;

  String? _bucketName;
  String? get bucketName => _$this._bucketName;
  set bucketName(String? bucketName) => _$this._bucketName = bucketName;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _bucketOwner;
  String? get bucketOwner => _$this._bucketOwner;
  set bucketOwner(String? bucketOwner) => _$this._bucketOwner = bucketOwner;

  VerifiedAccessLogS3DestinationBuilder() {
    VerifiedAccessLogS3Destination._init(this);
  }

  VerifiedAccessLogS3DestinationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _deliveryStatus = $v.deliveryStatus?.toBuilder();
      _bucketName = $v.bucketName;
      _prefix = $v.prefix;
      _bucketOwner = $v.bucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessLogS3Destination other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessLogS3Destination;
  }

  @override
  void update(void Function(VerifiedAccessLogS3DestinationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessLogS3Destination build() => _build();

  _$VerifiedAccessLogS3Destination _build() {
    _$VerifiedAccessLogS3Destination _$result;
    try {
      _$result = _$v ??
          new _$VerifiedAccessLogS3Destination._(
              enabled: BuiltValueNullFieldError.checkNotNull(
                  enabled, r'VerifiedAccessLogS3Destination', 'enabled'),
              deliveryStatus: _deliveryStatus?.build(),
              bucketName: bucketName,
              prefix: prefix,
              bucketOwner: bucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deliveryStatus';
        _deliveryStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VerifiedAccessLogS3Destination', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
