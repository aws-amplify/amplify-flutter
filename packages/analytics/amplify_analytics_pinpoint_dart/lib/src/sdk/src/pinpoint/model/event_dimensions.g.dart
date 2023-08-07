// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dimensions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventDimensions extends EventDimensions {
  @override
  final _i2.BuiltMap<String, AttributeDimension>? attributes;
  @override
  final SetDimension? eventType;
  @override
  final _i2.BuiltMap<String, MetricDimension>? metrics;

  factory _$EventDimensions([void Function(EventDimensionsBuilder)? updates]) =>
      (new EventDimensionsBuilder()..update(updates))._build();

  _$EventDimensions._({this.attributes, this.eventType, this.metrics})
      : super._();

  @override
  EventDimensions rebuild(void Function(EventDimensionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventDimensionsBuilder toBuilder() =>
      new EventDimensionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventDimensions &&
        attributes == other.attributes &&
        eventType == other.eventType &&
        metrics == other.metrics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, metrics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EventDimensionsBuilder
    implements Builder<EventDimensions, EventDimensionsBuilder> {
  _$EventDimensions? _$v;

  _i2.MapBuilder<String, AttributeDimension>? _attributes;
  _i2.MapBuilder<String, AttributeDimension> get attributes =>
      _$this._attributes ??= new _i2.MapBuilder<String, AttributeDimension>();
  set attributes(_i2.MapBuilder<String, AttributeDimension>? attributes) =>
      _$this._attributes = attributes;

  SetDimensionBuilder? _eventType;
  SetDimensionBuilder get eventType =>
      _$this._eventType ??= new SetDimensionBuilder();
  set eventType(SetDimensionBuilder? eventType) =>
      _$this._eventType = eventType;

  _i2.MapBuilder<String, MetricDimension>? _metrics;
  _i2.MapBuilder<String, MetricDimension> get metrics =>
      _$this._metrics ??= new _i2.MapBuilder<String, MetricDimension>();
  set metrics(_i2.MapBuilder<String, MetricDimension>? metrics) =>
      _$this._metrics = metrics;

  EventDimensionsBuilder();

  EventDimensionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributes = $v.attributes?.toBuilder();
      _eventType = $v.eventType?.toBuilder();
      _metrics = $v.metrics?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventDimensions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventDimensions;
  }

  @override
  void update(void Function(EventDimensionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventDimensions build() => _build();

  _$EventDimensions _build() {
    _$EventDimensions _$result;
    try {
      _$result = _$v ??
          new _$EventDimensions._(
              attributes: _attributes?.build(),
              eventType: _eventType?.build(),
              metrics: _metrics?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributes';
        _attributes?.build();
        _$failedField = 'eventType';
        _eventType?.build();
        _$failedField = 'metrics';
        _metrics?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EventDimensions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
