// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_logging_cloudwatchlogs_dart.cloud_watch_logs.model.put_log_events_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutLogEventsRequest extends PutLogEventsRequest {
  @override
  final _i4.BuiltList<_i3.InputLogEvent> logEvents;
  @override
  final String logGroupName;
  @override
  final String logStreamName;
  @override
  final String? sequenceToken;

  factory _$PutLogEventsRequest(
          [void Function(PutLogEventsRequestBuilder)? updates]) =>
      (new PutLogEventsRequestBuilder()..update(updates))._build();

  _$PutLogEventsRequest._(
      {required this.logEvents,
      required this.logGroupName,
      required this.logStreamName,
      this.sequenceToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        logEvents, r'PutLogEventsRequest', 'logEvents');
    BuiltValueNullFieldError.checkNotNull(
        logGroupName, r'PutLogEventsRequest', 'logGroupName');
    BuiltValueNullFieldError.checkNotNull(
        logStreamName, r'PutLogEventsRequest', 'logStreamName');
  }

  @override
  PutLogEventsRequest rebuild(
          void Function(PutLogEventsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutLogEventsRequestBuilder toBuilder() =>
      new PutLogEventsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutLogEventsRequest &&
        logEvents == other.logEvents &&
        logGroupName == other.logGroupName &&
        logStreamName == other.logStreamName &&
        sequenceToken == other.sequenceToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, logEvents.hashCode), logGroupName.hashCode),
            logStreamName.hashCode),
        sequenceToken.hashCode));
  }
}

class PutLogEventsRequestBuilder
    implements Builder<PutLogEventsRequest, PutLogEventsRequestBuilder> {
  _$PutLogEventsRequest? _$v;

  _i4.ListBuilder<_i3.InputLogEvent>? _logEvents;
  _i4.ListBuilder<_i3.InputLogEvent> get logEvents =>
      _$this._logEvents ??= new _i4.ListBuilder<_i3.InputLogEvent>();
  set logEvents(_i4.ListBuilder<_i3.InputLogEvent>? logEvents) =>
      _$this._logEvents = logEvents;

  String? _logGroupName;
  String? get logGroupName => _$this._logGroupName;
  set logGroupName(String? logGroupName) => _$this._logGroupName = logGroupName;

  String? _logStreamName;
  String? get logStreamName => _$this._logStreamName;
  set logStreamName(String? logStreamName) =>
      _$this._logStreamName = logStreamName;

  String? _sequenceToken;
  String? get sequenceToken => _$this._sequenceToken;
  set sequenceToken(String? sequenceToken) =>
      _$this._sequenceToken = sequenceToken;

  PutLogEventsRequestBuilder() {
    PutLogEventsRequest._init(this);
  }

  PutLogEventsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logEvents = $v.logEvents.toBuilder();
      _logGroupName = $v.logGroupName;
      _logStreamName = $v.logStreamName;
      _sequenceToken = $v.sequenceToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutLogEventsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutLogEventsRequest;
  }

  @override
  void update(void Function(PutLogEventsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutLogEventsRequest build() => _build();

  _$PutLogEventsRequest _build() {
    _$PutLogEventsRequest _$result;
    try {
      _$result = _$v ??
          new _$PutLogEventsRequest._(
              logEvents: logEvents.build(),
              logGroupName: BuiltValueNullFieldError.checkNotNull(
                  logGroupName, r'PutLogEventsRequest', 'logGroupName'),
              logStreamName: BuiltValueNullFieldError.checkNotNull(
                  logStreamName, r'PutLogEventsRequest', 'logStreamName'),
              sequenceToken: sequenceToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'logEvents';
        logEvents.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutLogEventsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
