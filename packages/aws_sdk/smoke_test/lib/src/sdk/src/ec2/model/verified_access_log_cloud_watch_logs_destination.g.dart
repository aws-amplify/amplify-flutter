// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_log_cloud_watch_logs_destination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessLogCloudWatchLogsDestination
    extends VerifiedAccessLogCloudWatchLogsDestination {
  @override
  final bool enabled;
  @override
  final VerifiedAccessLogDeliveryStatus? deliveryStatus;
  @override
  final String? logGroup;

  factory _$VerifiedAccessLogCloudWatchLogsDestination(
          [void Function(VerifiedAccessLogCloudWatchLogsDestinationBuilder)?
              updates]) =>
      (new VerifiedAccessLogCloudWatchLogsDestinationBuilder()..update(updates))
          ._build();

  _$VerifiedAccessLogCloudWatchLogsDestination._(
      {required this.enabled, this.deliveryStatus, this.logGroup})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'VerifiedAccessLogCloudWatchLogsDestination', 'enabled');
  }

  @override
  VerifiedAccessLogCloudWatchLogsDestination rebuild(
          void Function(VerifiedAccessLogCloudWatchLogsDestinationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessLogCloudWatchLogsDestinationBuilder toBuilder() =>
      new VerifiedAccessLogCloudWatchLogsDestinationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessLogCloudWatchLogsDestination &&
        enabled == other.enabled &&
        deliveryStatus == other.deliveryStatus &&
        logGroup == other.logGroup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, deliveryStatus.hashCode);
    _$hash = $jc(_$hash, logGroup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessLogCloudWatchLogsDestinationBuilder
    implements
        Builder<VerifiedAccessLogCloudWatchLogsDestination,
            VerifiedAccessLogCloudWatchLogsDestinationBuilder> {
  _$VerifiedAccessLogCloudWatchLogsDestination? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  VerifiedAccessLogDeliveryStatusBuilder? _deliveryStatus;
  VerifiedAccessLogDeliveryStatusBuilder get deliveryStatus =>
      _$this._deliveryStatus ??= new VerifiedAccessLogDeliveryStatusBuilder();
  set deliveryStatus(VerifiedAccessLogDeliveryStatusBuilder? deliveryStatus) =>
      _$this._deliveryStatus = deliveryStatus;

  String? _logGroup;
  String? get logGroup => _$this._logGroup;
  set logGroup(String? logGroup) => _$this._logGroup = logGroup;

  VerifiedAccessLogCloudWatchLogsDestinationBuilder() {
    VerifiedAccessLogCloudWatchLogsDestination._init(this);
  }

  VerifiedAccessLogCloudWatchLogsDestinationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _deliveryStatus = $v.deliveryStatus?.toBuilder();
      _logGroup = $v.logGroup;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessLogCloudWatchLogsDestination other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessLogCloudWatchLogsDestination;
  }

  @override
  void update(
      void Function(VerifiedAccessLogCloudWatchLogsDestinationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessLogCloudWatchLogsDestination build() => _build();

  _$VerifiedAccessLogCloudWatchLogsDestination _build() {
    _$VerifiedAccessLogCloudWatchLogsDestination _$result;
    try {
      _$result = _$v ??
          new _$VerifiedAccessLogCloudWatchLogsDestination._(
              enabled: BuiltValueNullFieldError.checkNotNull(enabled,
                  r'VerifiedAccessLogCloudWatchLogsDestination', 'enabled'),
              deliveryStatus: _deliveryStatus?.build(),
              logGroup: logGroup);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deliveryStatus';
        _deliveryStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VerifiedAccessLogCloudWatchLogsDestination',
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
