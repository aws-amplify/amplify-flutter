// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloud_watch_log_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CloudWatchLogOptions extends CloudWatchLogOptions {
  @override
  final bool logEnabled;
  @override
  final String? logGroupArn;
  @override
  final String? logOutputFormat;

  factory _$CloudWatchLogOptions(
          [void Function(CloudWatchLogOptionsBuilder)? updates]) =>
      (new CloudWatchLogOptionsBuilder()..update(updates))._build();

  _$CloudWatchLogOptions._(
      {required this.logEnabled, this.logGroupArn, this.logOutputFormat})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        logEnabled, r'CloudWatchLogOptions', 'logEnabled');
  }

  @override
  CloudWatchLogOptions rebuild(
          void Function(CloudWatchLogOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CloudWatchLogOptionsBuilder toBuilder() =>
      new CloudWatchLogOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CloudWatchLogOptions &&
        logEnabled == other.logEnabled &&
        logGroupArn == other.logGroupArn &&
        logOutputFormat == other.logOutputFormat;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logEnabled.hashCode);
    _$hash = $jc(_$hash, logGroupArn.hashCode);
    _$hash = $jc(_$hash, logOutputFormat.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CloudWatchLogOptionsBuilder
    implements Builder<CloudWatchLogOptions, CloudWatchLogOptionsBuilder> {
  _$CloudWatchLogOptions? _$v;

  bool? _logEnabled;
  bool? get logEnabled => _$this._logEnabled;
  set logEnabled(bool? logEnabled) => _$this._logEnabled = logEnabled;

  String? _logGroupArn;
  String? get logGroupArn => _$this._logGroupArn;
  set logGroupArn(String? logGroupArn) => _$this._logGroupArn = logGroupArn;

  String? _logOutputFormat;
  String? get logOutputFormat => _$this._logOutputFormat;
  set logOutputFormat(String? logOutputFormat) =>
      _$this._logOutputFormat = logOutputFormat;

  CloudWatchLogOptionsBuilder() {
    CloudWatchLogOptions._init(this);
  }

  CloudWatchLogOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logEnabled = $v.logEnabled;
      _logGroupArn = $v.logGroupArn;
      _logOutputFormat = $v.logOutputFormat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CloudWatchLogOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CloudWatchLogOptions;
  }

  @override
  void update(void Function(CloudWatchLogOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CloudWatchLogOptions build() => _build();

  _$CloudWatchLogOptions _build() {
    final _$result = _$v ??
        new _$CloudWatchLogOptions._(
            logEnabled: BuiltValueNullFieldError.checkNotNull(
                logEnabled, r'CloudWatchLogOptions', 'logEnabled'),
            logGroupArn: logGroupArn,
            logOutputFormat: logOutputFormat);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
