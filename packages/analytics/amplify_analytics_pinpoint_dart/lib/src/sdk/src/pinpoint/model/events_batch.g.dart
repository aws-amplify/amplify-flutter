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
    var _$hash = 0;
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
