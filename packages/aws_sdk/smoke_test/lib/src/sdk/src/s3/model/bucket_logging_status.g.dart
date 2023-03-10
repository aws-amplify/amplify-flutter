// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.bucket_logging_status;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BucketLoggingStatus extends BucketLoggingStatus {
  @override
  final _i2.LoggingEnabled? loggingEnabled;

  factory _$BucketLoggingStatus(
          [void Function(BucketLoggingStatusBuilder)? updates]) =>
      (new BucketLoggingStatusBuilder()..update(updates))._build();

  _$BucketLoggingStatus._({this.loggingEnabled}) : super._();

  @override
  BucketLoggingStatus rebuild(
          void Function(BucketLoggingStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BucketLoggingStatusBuilder toBuilder() =>
      new BucketLoggingStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BucketLoggingStatus &&
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

class BucketLoggingStatusBuilder
    implements Builder<BucketLoggingStatus, BucketLoggingStatusBuilder> {
  _$BucketLoggingStatus? _$v;

  _i2.LoggingEnabledBuilder? _loggingEnabled;
  _i2.LoggingEnabledBuilder get loggingEnabled =>
      _$this._loggingEnabled ??= new _i2.LoggingEnabledBuilder();
  set loggingEnabled(_i2.LoggingEnabledBuilder? loggingEnabled) =>
      _$this._loggingEnabled = loggingEnabled;

  BucketLoggingStatusBuilder() {
    BucketLoggingStatus._init(this);
  }

  BucketLoggingStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loggingEnabled = $v.loggingEnabled?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BucketLoggingStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BucketLoggingStatus;
  }

  @override
  void update(void Function(BucketLoggingStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BucketLoggingStatus build() => _build();

  _$BucketLoggingStatus _build() {
    _$BucketLoggingStatus _$result;
    try {
      _$result = _$v ??
          new _$BucketLoggingStatus._(loggingEnabled: _loggingEnabled?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loggingEnabled';
        _loggingEnabled?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BucketLoggingStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
