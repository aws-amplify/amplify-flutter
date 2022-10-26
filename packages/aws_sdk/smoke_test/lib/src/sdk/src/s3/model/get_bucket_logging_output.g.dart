// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_logging_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketLoggingOutput extends GetBucketLoggingOutput {
  @override
  final _i2.LoggingEnabled? loggingEnabled;

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
    return $jf($jc(0, loggingEnabled.hashCode));
  }
}

class GetBucketLoggingOutputBuilder
    implements Builder<GetBucketLoggingOutput, GetBucketLoggingOutputBuilder> {
  _$GetBucketLoggingOutput? _$v;

  _i2.LoggingEnabledBuilder? _loggingEnabled;
  _i2.LoggingEnabledBuilder get loggingEnabled =>
      _$this._loggingEnabled ??= new _i2.LoggingEnabledBuilder();
  set loggingEnabled(_i2.LoggingEnabledBuilder? loggingEnabled) =>
      _$this._loggingEnabled = loggingEnabled;

  GetBucketLoggingOutputBuilder() {
    GetBucketLoggingOutput._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
