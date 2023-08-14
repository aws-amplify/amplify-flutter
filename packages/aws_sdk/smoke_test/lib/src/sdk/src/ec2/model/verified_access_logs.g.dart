// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_logs.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessLogs extends VerifiedAccessLogs {
  @override
  final VerifiedAccessLogS3Destination? s3;
  @override
  final VerifiedAccessLogCloudWatchLogsDestination? cloudWatchLogs;
  @override
  final VerifiedAccessLogKinesisDataFirehoseDestination? kinesisDataFirehose;
  @override
  final String? logVersion;
  @override
  final bool includeTrustContext;

  factory _$VerifiedAccessLogs(
          [void Function(VerifiedAccessLogsBuilder)? updates]) =>
      (new VerifiedAccessLogsBuilder()..update(updates))._build();

  _$VerifiedAccessLogs._(
      {this.s3,
      this.cloudWatchLogs,
      this.kinesisDataFirehose,
      this.logVersion,
      required this.includeTrustContext})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        includeTrustContext, r'VerifiedAccessLogs', 'includeTrustContext');
  }

  @override
  VerifiedAccessLogs rebuild(
          void Function(VerifiedAccessLogsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessLogsBuilder toBuilder() =>
      new VerifiedAccessLogsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessLogs &&
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

class VerifiedAccessLogsBuilder
    implements Builder<VerifiedAccessLogs, VerifiedAccessLogsBuilder> {
  _$VerifiedAccessLogs? _$v;

  VerifiedAccessLogS3DestinationBuilder? _s3;
  VerifiedAccessLogS3DestinationBuilder get s3 =>
      _$this._s3 ??= new VerifiedAccessLogS3DestinationBuilder();
  set s3(VerifiedAccessLogS3DestinationBuilder? s3) => _$this._s3 = s3;

  VerifiedAccessLogCloudWatchLogsDestinationBuilder? _cloudWatchLogs;
  VerifiedAccessLogCloudWatchLogsDestinationBuilder get cloudWatchLogs =>
      _$this._cloudWatchLogs ??=
          new VerifiedAccessLogCloudWatchLogsDestinationBuilder();
  set cloudWatchLogs(
          VerifiedAccessLogCloudWatchLogsDestinationBuilder? cloudWatchLogs) =>
      _$this._cloudWatchLogs = cloudWatchLogs;

  VerifiedAccessLogKinesisDataFirehoseDestinationBuilder? _kinesisDataFirehose;
  VerifiedAccessLogKinesisDataFirehoseDestinationBuilder
      get kinesisDataFirehose => _$this._kinesisDataFirehose ??=
          new VerifiedAccessLogKinesisDataFirehoseDestinationBuilder();
  set kinesisDataFirehose(
          VerifiedAccessLogKinesisDataFirehoseDestinationBuilder?
              kinesisDataFirehose) =>
      _$this._kinesisDataFirehose = kinesisDataFirehose;

  String? _logVersion;
  String? get logVersion => _$this._logVersion;
  set logVersion(String? logVersion) => _$this._logVersion = logVersion;

  bool? _includeTrustContext;
  bool? get includeTrustContext => _$this._includeTrustContext;
  set includeTrustContext(bool? includeTrustContext) =>
      _$this._includeTrustContext = includeTrustContext;

  VerifiedAccessLogsBuilder() {
    VerifiedAccessLogs._init(this);
  }

  VerifiedAccessLogsBuilder get _$this {
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
  void replace(VerifiedAccessLogs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessLogs;
  }

  @override
  void update(void Function(VerifiedAccessLogsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessLogs build() => _build();

  _$VerifiedAccessLogs _build() {
    _$VerifiedAccessLogs _$result;
    try {
      _$result = _$v ??
          new _$VerifiedAccessLogs._(
              s3: _s3?.build(),
              cloudWatchLogs: _cloudWatchLogs?.build(),
              kinesisDataFirehose: _kinesisDataFirehose?.build(),
              logVersion: logVersion,
              includeTrustContext: BuiltValueNullFieldError.checkNotNull(
                  includeTrustContext,
                  r'VerifiedAccessLogs',
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
            r'VerifiedAccessLogs', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
