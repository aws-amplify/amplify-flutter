// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.events_batch;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventsBatch extends EventsBatch {
  @override
  final _i2.PublicEndpoint endpoint;
  @override
  final _i4.BuiltMap<String, _i3.Event> events;

  factory _$EventsBatch([void Function(EventsBatchBuilder)? updates]) =>
      (new EventsBatchBuilder()..update(updates))._build();

  _$EventsBatch._({required this.endpoint, required this.events}) : super._() {
    BuiltValueNullFieldError.checkNotNull(endpoint, r'EventsBatch', 'endpoint');
    BuiltValueNullFieldError.checkNotNull(events, r'EventsBatch', 'events');
  }

  @override
  EventsBatch rebuild(void Function(EventsBatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventsBatchBuilder toBuilder() => new EventsBatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventsBatch &&
        endpoint == other.endpoint &&
        events == other.events;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, endpoint.hashCode), events.hashCode));
  }
}

class EventsBatchBuilder implements Builder<EventsBatch, EventsBatchBuilder> {
  _$EventsBatch? _$v;

  _i2.PublicEndpointBuilder? _endpoint;
  _i2.PublicEndpointBuilder get endpoint =>
      _$this._endpoint ??= new _i2.PublicEndpointBuilder();
  set endpoint(_i2.PublicEndpointBuilder? endpoint) =>
      _$this._endpoint = endpoint;

  _i4.MapBuilder<String, _i3.Event>? _events;
  _i4.MapBuilder<String, _i3.Event> get events =>
      _$this._events ??= new _i4.MapBuilder<String, _i3.Event>();
  set events(_i4.MapBuilder<String, _i3.Event>? events) =>
      _$this._events = events;

  EventsBatchBuilder() {
    EventsBatch._init(this);
  }

  EventsBatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoint = $v.endpoint.toBuilder();
      _events = $v.events.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventsBatch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventsBatch;
  }

  @override
  void update(void Function(EventsBatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventsBatch build() => _build();

  _$EventsBatch _build() {
    _$EventsBatch _$result;
    try {
      _$result = _$v ??
          new _$EventsBatch._(
              endpoint: endpoint.build(), events: events.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'endpoint';
        endpoint.build();
        _$failedField = 'events';
        events.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EventsBatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
