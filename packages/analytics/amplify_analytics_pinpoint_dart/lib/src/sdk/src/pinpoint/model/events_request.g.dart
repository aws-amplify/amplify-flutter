// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.events_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventsRequest extends EventsRequest {
  @override
  final _i3.BuiltMap<String, _i2.EventsBatch> batchItem;

  factory _$EventsRequest([void Function(EventsRequestBuilder)? updates]) =>
      (new EventsRequestBuilder()..update(updates))._build();

  _$EventsRequest._({required this.batchItem}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        batchItem, r'EventsRequest', 'batchItem');
  }

  @override
  EventsRequest rebuild(void Function(EventsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventsRequestBuilder toBuilder() => new EventsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventsRequest && batchItem == other.batchItem;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, batchItem.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EventsRequestBuilder
    implements Builder<EventsRequest, EventsRequestBuilder> {
  _$EventsRequest? _$v;

  _i3.MapBuilder<String, _i2.EventsBatch>? _batchItem;
  _i3.MapBuilder<String, _i2.EventsBatch> get batchItem =>
      _$this._batchItem ??= new _i3.MapBuilder<String, _i2.EventsBatch>();
  set batchItem(_i3.MapBuilder<String, _i2.EventsBatch>? batchItem) =>
      _$this._batchItem = batchItem;

  EventsRequestBuilder() {
    EventsRequest._init(this);
  }

  EventsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _batchItem = $v.batchItem.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventsRequest;
  }

  @override
  void update(void Function(EventsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventsRequest build() => _build();

  _$EventsRequest _build() {
    _$EventsRequest _$result;
    try {
      _$result = _$v ?? new _$EventsRequest._(batchItem: batchItem.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'batchItem';
        batchItem.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EventsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
