// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.event_dimensions;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventDimensions extends EventDimensions {
  @override
  final _i2.BuiltMap<String, _i3.AttributeDimension>? attributes;
  @override
  final _i4.SetDimension? eventType;
  @override
  final _i2.BuiltMap<String, _i5.MetricDimension>? metrics;

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
    return $jf($jc($jc($jc(0, attributes.hashCode), eventType.hashCode),
        metrics.hashCode));
  }
}

class EventDimensionsBuilder
    implements Builder<EventDimensions, EventDimensionsBuilder> {
  _$EventDimensions? _$v;

  _i2.MapBuilder<String, _i3.AttributeDimension>? _attributes;
  _i2.MapBuilder<String, _i3.AttributeDimension> get attributes =>
      _$this._attributes ??=
          new _i2.MapBuilder<String, _i3.AttributeDimension>();
  set attributes(_i2.MapBuilder<String, _i3.AttributeDimension>? attributes) =>
      _$this._attributes = attributes;

  _i4.SetDimensionBuilder? _eventType;
  _i4.SetDimensionBuilder get eventType =>
      _$this._eventType ??= new _i4.SetDimensionBuilder();
  set eventType(_i4.SetDimensionBuilder? eventType) =>
      _$this._eventType = eventType;

  _i2.MapBuilder<String, _i5.MetricDimension>? _metrics;
  _i2.MapBuilder<String, _i5.MetricDimension> get metrics =>
      _$this._metrics ??= new _i2.MapBuilder<String, _i5.MetricDimension>();
  set metrics(_i2.MapBuilder<String, _i5.MetricDimension>? metrics) =>
      _$this._metrics = metrics;

  EventDimensionsBuilder() {
    EventDimensions._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
