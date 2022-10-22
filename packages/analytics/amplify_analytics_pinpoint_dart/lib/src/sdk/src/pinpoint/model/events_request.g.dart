// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.events_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventsRequest extends EventsRequest {
  @override
  final _i2.BuiltMap<String, _i3.EventsBatch> batchItem;

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
    return $jf($jc(0, batchItem.hashCode));
  }
}

class EventsRequestBuilder
    implements Builder<EventsRequest, EventsRequestBuilder> {
  _$EventsRequest? _$v;

  _i2.MapBuilder<String, _i3.EventsBatch>? _batchItem;
  _i2.MapBuilder<String, _i3.EventsBatch> get batchItem =>
      _$this._batchItem ??= new _i2.MapBuilder<String, _i3.EventsBatch>();
  set batchItem(_i2.MapBuilder<String, _i3.EventsBatch>? batchItem) =>
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
