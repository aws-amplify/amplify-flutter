// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_log_kinesis_data_firehose_destination_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessLogKinesisDataFirehoseDestinationOptions
    extends VerifiedAccessLogKinesisDataFirehoseDestinationOptions {
  @override
  final bool enabled;
  @override
  final String? deliveryStream;

  factory _$VerifiedAccessLogKinesisDataFirehoseDestinationOptions(
          [void Function(
                  VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder)?
              updates]) =>
      (new VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder()
            ..update(updates))
          ._build();

  _$VerifiedAccessLogKinesisDataFirehoseDestinationOptions._(
      {required this.enabled, this.deliveryStream})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(enabled,
        r'VerifiedAccessLogKinesisDataFirehoseDestinationOptions', 'enabled');
  }

  @override
  VerifiedAccessLogKinesisDataFirehoseDestinationOptions rebuild(
          void Function(
                  VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder toBuilder() =>
      new VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessLogKinesisDataFirehoseDestinationOptions &&
        enabled == other.enabled &&
        deliveryStream == other.deliveryStream;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, deliveryStream.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder
    implements
        Builder<VerifiedAccessLogKinesisDataFirehoseDestinationOptions,
            VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder> {
  _$VerifiedAccessLogKinesisDataFirehoseDestinationOptions? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _deliveryStream;
  String? get deliveryStream => _$this._deliveryStream;
  set deliveryStream(String? deliveryStream) =>
      _$this._deliveryStream = deliveryStream;

  VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder() {
    VerifiedAccessLogKinesisDataFirehoseDestinationOptions._init(this);
  }

  VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _deliveryStream = $v.deliveryStream;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessLogKinesisDataFirehoseDestinationOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessLogKinesisDataFirehoseDestinationOptions;
  }

  @override
  void update(
      void Function(
              VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessLogKinesisDataFirehoseDestinationOptions build() => _build();

  _$VerifiedAccessLogKinesisDataFirehoseDestinationOptions _build() {
    final _$result = _$v ??
        new _$VerifiedAccessLogKinesisDataFirehoseDestinationOptions._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled,
                r'VerifiedAccessLogKinesisDataFirehoseDestinationOptions',
                'enabled'),
            deliveryStream: deliveryStream);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
