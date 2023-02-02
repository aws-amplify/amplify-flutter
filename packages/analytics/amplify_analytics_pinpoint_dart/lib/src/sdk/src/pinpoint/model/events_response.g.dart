// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.events_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventsResponse extends EventsResponse {
  @override
  final _i3.BuiltMap<String, _i2.ItemResponse>? results;

  factory _$EventsResponse([void Function(EventsResponseBuilder)? updates]) =>
      (new EventsResponseBuilder()..update(updates))._build();

  _$EventsResponse._({this.results}) : super._();

  @override
  EventsResponse rebuild(void Function(EventsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventsResponseBuilder toBuilder() =>
      new EventsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventsResponse && results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EventsResponseBuilder
    implements Builder<EventsResponse, EventsResponseBuilder> {
  _$EventsResponse? _$v;

  _i3.MapBuilder<String, _i2.ItemResponse>? _results;
  _i3.MapBuilder<String, _i2.ItemResponse> get results =>
      _$this._results ??= new _i3.MapBuilder<String, _i2.ItemResponse>();
  set results(_i3.MapBuilder<String, _i2.ItemResponse>? results) =>
      _$this._results = results;

  EventsResponseBuilder() {
    EventsResponse._init(this);
  }

  EventsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventsResponse;
  }

  @override
  void update(void Function(EventsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventsResponse build() => _build();

  _$EventsResponse _build() {
    _$EventsResponse _$result;
    try {
      _$result = _$v ?? new _$EventsResponse._(results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EventsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
