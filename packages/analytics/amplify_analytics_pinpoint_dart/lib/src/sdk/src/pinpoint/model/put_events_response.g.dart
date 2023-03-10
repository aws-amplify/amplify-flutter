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
    var _$hash = 0;
    _$hash = $jc(_$hash, eventsResponse.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
