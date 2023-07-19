// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_stream.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LogStream extends LogStream {
  @override
  final String? logStreamName;
  @override
  final _i2.Int64? creationTime;
  @override
  final _i2.Int64? firstEventTimestamp;
  @override
  final _i2.Int64? lastEventTimestamp;
  @override
  final _i2.Int64? lastIngestionTime;
  @override
  final String? uploadSequenceToken;
  @override
  final String? arn;
  @override
  final _i2.Int64? storedBytes;

  factory _$LogStream([void Function(LogStreamBuilder)? updates]) =>
      (new LogStreamBuilder()..update(updates))._build();

  _$LogStream._(
      {this.logStreamName,
      this.creationTime,
      this.firstEventTimestamp,
      this.lastEventTimestamp,
      this.lastIngestionTime,
      this.uploadSequenceToken,
      this.arn,
      this.storedBytes})
      : super._();

  @override
  LogStream rebuild(void Function(LogStreamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogStreamBuilder toBuilder() => new LogStreamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogStream &&
        logStreamName == other.logStreamName &&
        creationTime == other.creationTime &&
        firstEventTimestamp == other.firstEventTimestamp &&
        lastEventTimestamp == other.lastEventTimestamp &&
        lastIngestionTime == other.lastIngestionTime &&
        uploadSequenceToken == other.uploadSequenceToken &&
        arn == other.arn &&
        storedBytes == other.storedBytes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logStreamName.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, firstEventTimestamp.hashCode);
    _$hash = $jc(_$hash, lastEventTimestamp.hashCode);
    _$hash = $jc(_$hash, lastIngestionTime.hashCode);
    _$hash = $jc(_$hash, uploadSequenceToken.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, storedBytes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LogStreamBuilder implements Builder<LogStream, LogStreamBuilder> {
  _$LogStream? _$v;

  String? _logStreamName;
  String? get logStreamName => _$this._logStreamName;
  set logStreamName(String? logStreamName) =>
      _$this._logStreamName = logStreamName;

  _i2.Int64? _creationTime;
  _i2.Int64? get creationTime => _$this._creationTime;
  set creationTime(_i2.Int64? creationTime) =>
      _$this._creationTime = creationTime;

  _i2.Int64? _firstEventTimestamp;
  _i2.Int64? get firstEventTimestamp => _$this._firstEventTimestamp;
  set firstEventTimestamp(_i2.Int64? firstEventTimestamp) =>
      _$this._firstEventTimestamp = firstEventTimestamp;

  _i2.Int64? _lastEventTimestamp;
  _i2.Int64? get lastEventTimestamp => _$this._lastEventTimestamp;
  set lastEventTimestamp(_i2.Int64? lastEventTimestamp) =>
      _$this._lastEventTimestamp = lastEventTimestamp;

  _i2.Int64? _lastIngestionTime;
  _i2.Int64? get lastIngestionTime => _$this._lastIngestionTime;
  set lastIngestionTime(_i2.Int64? lastIngestionTime) =>
      _$this._lastIngestionTime = lastIngestionTime;

  String? _uploadSequenceToken;
  String? get uploadSequenceToken => _$this._uploadSequenceToken;
  set uploadSequenceToken(String? uploadSequenceToken) =>
      _$this._uploadSequenceToken = uploadSequenceToken;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  _i2.Int64? _storedBytes;
  _i2.Int64? get storedBytes => _$this._storedBytes;
  set storedBytes(_i2.Int64? storedBytes) => _$this._storedBytes = storedBytes;

  LogStreamBuilder() {
    LogStream._init(this);
  }

  LogStreamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logStreamName = $v.logStreamName;
      _creationTime = $v.creationTime;
      _firstEventTimestamp = $v.firstEventTimestamp;
      _lastEventTimestamp = $v.lastEventTimestamp;
      _lastIngestionTime = $v.lastIngestionTime;
      _uploadSequenceToken = $v.uploadSequenceToken;
      _arn = $v.arn;
      _storedBytes = $v.storedBytes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogStream other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogStream;
  }

  @override
  void update(void Function(LogStreamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogStream build() => _build();

  _$LogStream _build() {
    final _$result = _$v ??
        new _$LogStream._(
            logStreamName: logStreamName,
            creationTime: creationTime,
            firstEventTimestamp: firstEventTimestamp,
            lastEventTimestamp: lastEventTimestamp,
            lastIngestionTime: lastIngestionTime,
            uploadSequenceToken: uploadSequenceToken,
            arn: arn,
            storedBytes: storedBytes);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
