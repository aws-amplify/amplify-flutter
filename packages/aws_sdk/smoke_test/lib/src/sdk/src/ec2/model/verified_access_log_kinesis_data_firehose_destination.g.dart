// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_log_kinesis_data_firehose_destination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessLogKinesisDataFirehoseDestination
    extends VerifiedAccessLogKinesisDataFirehoseDestination {
  @override
  final bool enabled;
  @override
  final VerifiedAccessLogDeliveryStatus? deliveryStatus;
  @override
  final String? deliveryStream;

  factory _$VerifiedAccessLogKinesisDataFirehoseDestination(
          [void Function(
                  VerifiedAccessLogKinesisDataFirehoseDestinationBuilder)?
              updates]) =>
      (new VerifiedAccessLogKinesisDataFirehoseDestinationBuilder()
            ..update(updates))
          ._build();

  _$VerifiedAccessLogKinesisDataFirehoseDestination._(
      {required this.enabled, this.deliveryStatus, this.deliveryStream})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'VerifiedAccessLogKinesisDataFirehoseDestination', 'enabled');
  }

  @override
  VerifiedAccessLogKinesisDataFirehoseDestination rebuild(
          void Function(VerifiedAccessLogKinesisDataFirehoseDestinationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessLogKinesisDataFirehoseDestinationBuilder toBuilder() =>
      new VerifiedAccessLogKinesisDataFirehoseDestinationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessLogKinesisDataFirehoseDestination &&
        enabled == other.enabled &&
        deliveryStatus == other.deliveryStatus &&
        deliveryStream == other.deliveryStream;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, deliveryStatus.hashCode);
    _$hash = $jc(_$hash, deliveryStream.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessLogKinesisDataFirehoseDestinationBuilder
    implements
        Builder<VerifiedAccessLogKinesisDataFirehoseDestination,
            VerifiedAccessLogKinesisDataFirehoseDestinationBuilder> {
  _$VerifiedAccessLogKinesisDataFirehoseDestination? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  VerifiedAccessLogDeliveryStatusBuilder? _deliveryStatus;
  VerifiedAccessLogDeliveryStatusBuilder get deliveryStatus =>
      _$this._deliveryStatus ??= new VerifiedAccessLogDeliveryStatusBuilder();
  set deliveryStatus(VerifiedAccessLogDeliveryStatusBuilder? deliveryStatus) =>
      _$this._deliveryStatus = deliveryStatus;

  String? _deliveryStream;
  String? get deliveryStream => _$this._deliveryStream;
  set deliveryStream(String? deliveryStream) =>
      _$this._deliveryStream = deliveryStream;

  VerifiedAccessLogKinesisDataFirehoseDestinationBuilder() {
    VerifiedAccessLogKinesisDataFirehoseDestination._init(this);
  }

  VerifiedAccessLogKinesisDataFirehoseDestinationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _deliveryStatus = $v.deliveryStatus?.toBuilder();
      _deliveryStream = $v.deliveryStream;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessLogKinesisDataFirehoseDestination other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessLogKinesisDataFirehoseDestination;
  }

  @override
  void update(
      void Function(VerifiedAccessLogKinesisDataFirehoseDestinationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessLogKinesisDataFirehoseDestination build() => _build();

  _$VerifiedAccessLogKinesisDataFirehoseDestination _build() {
    _$VerifiedAccessLogKinesisDataFirehoseDestination _$result;
    try {
      _$result = _$v ??
          new _$VerifiedAccessLogKinesisDataFirehoseDestination._(
              enabled: BuiltValueNullFieldError.checkNotNull(
                  enabled,
                  r'VerifiedAccessLogKinesisDataFirehoseDestination',
                  'enabled'),
              deliveryStatus: _deliveryStatus?.build(),
              deliveryStream: deliveryStream);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deliveryStatus';
        _deliveryStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VerifiedAccessLogKinesisDataFirehoseDestination',
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
