// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bucket_logging_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketLoggingOutput extends GetBucketLoggingOutput {
  @override
  final LoggingEnabled? loggingEnabled;

  factory _$GetBucketLoggingOutput(
          [void Function(GetBucketLoggingOutputBuilder)? updates]) =>
      (new GetBucketLoggingOutputBuilder()..update(updates))._build();

  _$GetBucketLoggingOutput._({this.loggingEnabled}) : super._();

  @override
  GetBucketLoggingOutput rebuild(
          void Function(GetBucketLoggingOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketLoggingOutputBuilder toBuilder() =>
      new GetBucketLoggingOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketLoggingOutput &&
        loggingEnabled == other.loggingEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loggingEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketLoggingOutputBuilder
    implements Builder<GetBucketLoggingOutput, GetBucketLoggingOutputBuilder> {
  _$GetBucketLoggingOutput? _$v;

  LoggingEnabledBuilder? _loggingEnabled;
  LoggingEnabledBuilder get loggingEnabled =>
      _$this._loggingEnabled ??= new LoggingEnabledBuilder();
  set loggingEnabled(LoggingEnabledBuilder? loggingEnabled) =>
      _$this._loggingEnabled = loggingEnabled;

  GetBucketLoggingOutputBuilder();

  GetBucketLoggingOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loggingEnabled = $v.loggingEnabled?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketLoggingOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketLoggingOutput;
  }

  @override
  void update(void Function(GetBucketLoggingOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketLoggingOutput build() => _build();

  _$GetBucketLoggingOutput _build() {
    _$GetBucketLoggingOutput _$result;
    try {
      _$result = _$v ??
          new _$GetBucketLoggingOutput._(
              loggingEnabled: _loggingEnabled?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loggingEnabled';
        _loggingEnabled?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetBucketLoggingOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
