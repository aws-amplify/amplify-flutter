// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_log_cloud_watch_logs_destination_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessLogCloudWatchLogsDestinationOptions
    extends VerifiedAccessLogCloudWatchLogsDestinationOptions {
  @override
  final bool enabled;
  @override
  final String? logGroup;

  factory _$VerifiedAccessLogCloudWatchLogsDestinationOptions(
          [void Function(
                  VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder)?
              updates]) =>
      (new VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder()
            ..update(updates))
          ._build();

  _$VerifiedAccessLogCloudWatchLogsDestinationOptions._(
      {required this.enabled, this.logGroup})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(enabled,
        r'VerifiedAccessLogCloudWatchLogsDestinationOptions', 'enabled');
  }

  @override
  VerifiedAccessLogCloudWatchLogsDestinationOptions rebuild(
          void Function(
                  VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder toBuilder() =>
      new VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessLogCloudWatchLogsDestinationOptions &&
        enabled == other.enabled &&
        logGroup == other.logGroup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, logGroup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder
    implements
        Builder<VerifiedAccessLogCloudWatchLogsDestinationOptions,
            VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder> {
  _$VerifiedAccessLogCloudWatchLogsDestinationOptions? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _logGroup;
  String? get logGroup => _$this._logGroup;
  set logGroup(String? logGroup) => _$this._logGroup = logGroup;

  VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder() {
    VerifiedAccessLogCloudWatchLogsDestinationOptions._init(this);
  }

  VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _logGroup = $v.logGroup;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessLogCloudWatchLogsDestinationOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessLogCloudWatchLogsDestinationOptions;
  }

  @override
  void update(
      void Function(VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessLogCloudWatchLogsDestinationOptions build() => _build();

  _$VerifiedAccessLogCloudWatchLogsDestinationOptions _build() {
    final _$result = _$v ??
        new _$VerifiedAccessLogCloudWatchLogsDestinationOptions._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled,
                r'VerifiedAccessLogCloudWatchLogsDestinationOptions',
                'enabled'),
            logGroup: logGroup);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
