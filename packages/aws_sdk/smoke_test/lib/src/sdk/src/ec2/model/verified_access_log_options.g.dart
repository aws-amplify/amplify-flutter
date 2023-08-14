// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_log_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessLogOptions extends VerifiedAccessLogOptions {
  @override
  final VerifiedAccessLogS3DestinationOptions? s3;
  @override
  final VerifiedAccessLogCloudWatchLogsDestinationOptions? cloudWatchLogs;
  @override
  final VerifiedAccessLogKinesisDataFirehoseDestinationOptions?
      kinesisDataFirehose;
  @override
  final String? logVersion;
  @override
  final bool includeTrustContext;

  factory _$VerifiedAccessLogOptions(
          [void Function(VerifiedAccessLogOptionsBuilder)? updates]) =>
      (new VerifiedAccessLogOptionsBuilder()..update(updates))._build();

  _$VerifiedAccessLogOptions._(
      {this.s3,
      this.cloudWatchLogs,
      this.kinesisDataFirehose,
      this.logVersion,
      required this.includeTrustContext})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(includeTrustContext,
        r'VerifiedAccessLogOptions', 'includeTrustContext');
  }

  @override
  VerifiedAccessLogOptions rebuild(
          void Function(VerifiedAccessLogOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessLogOptionsBuilder toBuilder() =>
      new VerifiedAccessLogOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessLogOptions &&
        s3 == other.s3 &&
        cloudWatchLogs == other.cloudWatchLogs &&
        kinesisDataFirehose == other.kinesisDataFirehose &&
        logVersion == other.logVersion &&
        includeTrustContext == other.includeTrustContext;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, s3.hashCode);
    _$hash = $jc(_$hash, cloudWatchLogs.hashCode);
    _$hash = $jc(_$hash, kinesisDataFirehose.hashCode);
    _$hash = $jc(_$hash, logVersion.hashCode);
    _$hash = $jc(_$hash, includeTrustContext.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessLogOptionsBuilder
    implements
        Builder<VerifiedAccessLogOptions, VerifiedAccessLogOptionsBuilder> {
  _$VerifiedAccessLogOptions? _$v;

  VerifiedAccessLogS3DestinationOptionsBuilder? _s3;
  VerifiedAccessLogS3DestinationOptionsBuilder get s3 =>
      _$this._s3 ??= new VerifiedAccessLogS3DestinationOptionsBuilder();
  set s3(VerifiedAccessLogS3DestinationOptionsBuilder? s3) => _$this._s3 = s3;

  VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder? _cloudWatchLogs;
  VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder get cloudWatchLogs =>
      _$this._cloudWatchLogs ??=
          new VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder();
  set cloudWatchLogs(
          VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder?
              cloudWatchLogs) =>
      _$this._cloudWatchLogs = cloudWatchLogs;

  VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder?
      _kinesisDataFirehose;
  VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder
      get kinesisDataFirehose => _$this._kinesisDataFirehose ??=
          new VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder();
  set kinesisDataFirehose(
          VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder?
              kinesisDataFirehose) =>
      _$this._kinesisDataFirehose = kinesisDataFirehose;

  String? _logVersion;
  String? get logVersion => _$this._logVersion;
  set logVersion(String? logVersion) => _$this._logVersion = logVersion;

  bool? _includeTrustContext;
  bool? get includeTrustContext => _$this._includeTrustContext;
  set includeTrustContext(bool? includeTrustContext) =>
      _$this._includeTrustContext = includeTrustContext;

  VerifiedAccessLogOptionsBuilder() {
    VerifiedAccessLogOptions._init(this);
  }

  VerifiedAccessLogOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _s3 = $v.s3?.toBuilder();
      _cloudWatchLogs = $v.cloudWatchLogs?.toBuilder();
      _kinesisDataFirehose = $v.kinesisDataFirehose?.toBuilder();
      _logVersion = $v.logVersion;
      _includeTrustContext = $v.includeTrustContext;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessLogOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessLogOptions;
  }

  @override
  void update(void Function(VerifiedAccessLogOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessLogOptions build() => _build();

  _$VerifiedAccessLogOptions _build() {
    _$VerifiedAccessLogOptions _$result;
    try {
      _$result = _$v ??
          new _$VerifiedAccessLogOptions._(
              s3: _s3?.build(),
              cloudWatchLogs: _cloudWatchLogs?.build(),
              kinesisDataFirehose: _kinesisDataFirehose?.build(),
              logVersion: logVersion,
              includeTrustContext: BuiltValueNullFieldError.checkNotNull(
                  includeTrustContext,
                  r'VerifiedAccessLogOptions',
                  'includeTrustContext'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3';
        _s3?.build();
        _$failedField = 'cloudWatchLogs';
        _cloudWatchLogs?.build();
        _$failedField = 'kinesisDataFirehose';
        _kinesisDataFirehose?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VerifiedAccessLogOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
