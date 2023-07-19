// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_log_events_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutLogEventsRequest extends PutLogEventsRequest {
  @override
  final String logGroupName;
  @override
  final String logStreamName;
  @override
  final _i4.BuiltList<_i3.InputLogEvent> logEvents;
  @override
  final String? sequenceToken;

  factory _$PutLogEventsRequest(
          [void Function(PutLogEventsRequestBuilder)? updates]) =>
      (new PutLogEventsRequestBuilder()..update(updates))._build();

  _$PutLogEventsRequest._(
      {required this.logGroupName,
      required this.logStreamName,
      required this.logEvents,
      this.sequenceToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        logGroupName, r'PutLogEventsRequest', 'logGroupName');
    BuiltValueNullFieldError.checkNotNull(
        logStreamName, r'PutLogEventsRequest', 'logStreamName');
    BuiltValueNullFieldError.checkNotNull(
        logEvents, r'PutLogEventsRequest', 'logEvents');
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
        logGroupName == other.logGroupName &&
        logStreamName == other.logStreamName &&
        logEvents == other.logEvents &&
        sequenceToken == other.sequenceToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logGroupName.hashCode);
    _$hash = $jc(_$hash, logStreamName.hashCode);
    _$hash = $jc(_$hash, logEvents.hashCode);
    _$hash = $jc(_$hash, sequenceToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutLogEventsRequestBuilder
    implements Builder<PutLogEventsRequest, PutLogEventsRequestBuilder> {
  _$PutLogEventsRequest? _$v;

  String? _logGroupName;
  String? get logGroupName => _$this._logGroupName;
  set logGroupName(String? logGroupName) => _$this._logGroupName = logGroupName;

  String? _logStreamName;
  String? get logStreamName => _$this._logStreamName;
  set logStreamName(String? logStreamName) =>
      _$this._logStreamName = logStreamName;

  _i4.ListBuilder<_i3.InputLogEvent>? _logEvents;
  _i4.ListBuilder<_i3.InputLogEvent> get logEvents =>
      _$this._logEvents ??= new _i4.ListBuilder<_i3.InputLogEvent>();
  set logEvents(_i4.ListBuilder<_i3.InputLogEvent>? logEvents) =>
      _$this._logEvents = logEvents;

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
      _logGroupName = $v.logGroupName;
      _logStreamName = $v.logStreamName;
      _logEvents = $v.logEvents.toBuilder();
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
              logGroupName: BuiltValueNullFieldError.checkNotNull(
                  logGroupName, r'PutLogEventsRequest', 'logGroupName'),
              logStreamName: BuiltValueNullFieldError.checkNotNull(
                  logStreamName, r'PutLogEventsRequest', 'logStreamName'),
              logEvents: logEvents.build(),
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
