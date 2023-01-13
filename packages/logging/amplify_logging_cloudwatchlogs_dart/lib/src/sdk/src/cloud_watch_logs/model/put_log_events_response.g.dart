// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_logging_cloudwatchlogs_dart.cloud_watch_logs.model.put_log_events_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutLogEventsResponse extends PutLogEventsResponse {
  @override
  final String? nextSequenceToken;
  @override
  final _i2.RejectedLogEventsInfo? rejectedLogEventsInfo;

  factory _$PutLogEventsResponse(
          [void Function(PutLogEventsResponseBuilder)? updates]) =>
      (new PutLogEventsResponseBuilder()..update(updates))._build();

  _$PutLogEventsResponse._({this.nextSequenceToken, this.rejectedLogEventsInfo})
      : super._();

  @override
  PutLogEventsResponse rebuild(
          void Function(PutLogEventsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutLogEventsResponseBuilder toBuilder() =>
      new PutLogEventsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutLogEventsResponse &&
        nextSequenceToken == other.nextSequenceToken &&
        rejectedLogEventsInfo == other.rejectedLogEventsInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(0, nextSequenceToken.hashCode), rejectedLogEventsInfo.hashCode));
  }
}

class PutLogEventsResponseBuilder
    implements Builder<PutLogEventsResponse, PutLogEventsResponseBuilder> {
  _$PutLogEventsResponse? _$v;

  String? _nextSequenceToken;
  String? get nextSequenceToken => _$this._nextSequenceToken;
  set nextSequenceToken(String? nextSequenceToken) =>
      _$this._nextSequenceToken = nextSequenceToken;

  _i2.RejectedLogEventsInfoBuilder? _rejectedLogEventsInfo;
  _i2.RejectedLogEventsInfoBuilder get rejectedLogEventsInfo =>
      _$this._rejectedLogEventsInfo ??= new _i2.RejectedLogEventsInfoBuilder();
  set rejectedLogEventsInfo(
          _i2.RejectedLogEventsInfoBuilder? rejectedLogEventsInfo) =>
      _$this._rejectedLogEventsInfo = rejectedLogEventsInfo;

  PutLogEventsResponseBuilder() {
    PutLogEventsResponse._init(this);
  }

  PutLogEventsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextSequenceToken = $v.nextSequenceToken;
      _rejectedLogEventsInfo = $v.rejectedLogEventsInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutLogEventsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutLogEventsResponse;
  }

  @override
  void update(void Function(PutLogEventsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutLogEventsResponse build() => _build();

  _$PutLogEventsResponse _build() {
    _$PutLogEventsResponse _$result;
    try {
      _$result = _$v ??
          new _$PutLogEventsResponse._(
              nextSequenceToken: nextSequenceToken,
              rejectedLogEventsInfo: _rejectedLogEventsInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rejectedLogEventsInfo';
        _rejectedLogEventsInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutLogEventsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
