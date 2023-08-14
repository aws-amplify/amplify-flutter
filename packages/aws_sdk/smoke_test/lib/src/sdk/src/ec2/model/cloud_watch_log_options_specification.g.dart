// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloud_watch_log_options_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CloudWatchLogOptionsSpecification
    extends CloudWatchLogOptionsSpecification {
  @override
  final bool logEnabled;
  @override
  final String? logGroupArn;
  @override
  final String? logOutputFormat;

  factory _$CloudWatchLogOptionsSpecification(
          [void Function(CloudWatchLogOptionsSpecificationBuilder)? updates]) =>
      (new CloudWatchLogOptionsSpecificationBuilder()..update(updates))
          ._build();

  _$CloudWatchLogOptionsSpecification._(
      {required this.logEnabled, this.logGroupArn, this.logOutputFormat})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        logEnabled, r'CloudWatchLogOptionsSpecification', 'logEnabled');
  }

  @override
  CloudWatchLogOptionsSpecification rebuild(
          void Function(CloudWatchLogOptionsSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CloudWatchLogOptionsSpecificationBuilder toBuilder() =>
      new CloudWatchLogOptionsSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CloudWatchLogOptionsSpecification &&
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

class CloudWatchLogOptionsSpecificationBuilder
    implements
        Builder<CloudWatchLogOptionsSpecification,
            CloudWatchLogOptionsSpecificationBuilder> {
  _$CloudWatchLogOptionsSpecification? _$v;

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

  CloudWatchLogOptionsSpecificationBuilder() {
    CloudWatchLogOptionsSpecification._init(this);
  }

  CloudWatchLogOptionsSpecificationBuilder get _$this {
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
  void replace(CloudWatchLogOptionsSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CloudWatchLogOptionsSpecification;
  }

  @override
  void update(
      void Function(CloudWatchLogOptionsSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CloudWatchLogOptionsSpecification build() => _build();

  _$CloudWatchLogOptionsSpecification _build() {
    final _$result = _$v ??
        new _$CloudWatchLogOptionsSpecification._(
            logEnabled: BuiltValueNullFieldError.checkNotNull(
                logEnabled, r'CloudWatchLogOptionsSpecification', 'logEnabled'),
            logGroupArn: logGroupArn,
            logOutputFormat: logOutputFormat);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
