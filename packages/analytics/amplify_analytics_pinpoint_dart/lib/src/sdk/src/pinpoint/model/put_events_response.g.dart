// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.put_events_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutEventsResponse extends PutEventsResponse {
  @override
  final _i3.EventsResponse eventsResponse;

  factory _$PutEventsResponse(
          [void Function(PutEventsResponseBuilder)? updates]) =>
      (new PutEventsResponseBuilder()..update(updates))._build();

  _$PutEventsResponse._({required this.eventsResponse}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        eventsResponse, r'PutEventsResponse', 'eventsResponse');
  }

  @override
  PutEventsResponse rebuild(void Function(PutEventsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutEventsResponseBuilder toBuilder() =>
      new PutEventsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutEventsResponse && eventsResponse == other.eventsResponse;
  }

  @override
  int get hashCode {
    return $jf($jc(0, eventsResponse.hashCode));
  }
}

class PutEventsResponseBuilder
    implements Builder<PutEventsResponse, PutEventsResponseBuilder> {
  _$PutEventsResponse? _$v;

  _i3.EventsResponseBuilder? _eventsResponse;
  _i3.EventsResponseBuilder get eventsResponse =>
      _$this._eventsResponse ??= new _i3.EventsResponseBuilder();
  set eventsResponse(_i3.EventsResponseBuilder? eventsResponse) =>
      _$this._eventsResponse = eventsResponse;

  PutEventsResponseBuilder() {
    PutEventsResponse._init(this);
  }

  PutEventsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventsResponse = $v.eventsResponse.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutEventsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutEventsResponse;
  }

  @override
  void update(void Function(PutEventsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutEventsResponse build() => _build();

  _$PutEventsResponse _build() {
    _$PutEventsResponse _$result;
    try {
      _$result = _$v ??
          new _$PutEventsResponse._(eventsResponse: eventsResponse.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'eventsResponse';
        eventsResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutEventsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
