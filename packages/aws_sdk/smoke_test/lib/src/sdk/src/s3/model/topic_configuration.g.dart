// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.topic_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TopicConfiguration extends TopicConfiguration {
  @override
  final _i4.BuiltList<_i2.Event> events;
  @override
  final _i3.NotificationConfigurationFilter? filter;
  @override
  final String? id;
  @override
  final String topicArn;

  factory _$TopicConfiguration(
          [void Function(TopicConfigurationBuilder)? updates]) =>
      (new TopicConfigurationBuilder()..update(updates))._build();

  _$TopicConfiguration._(
      {required this.events, this.filter, this.id, required this.topicArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        events, r'TopicConfiguration', 'events');
    BuiltValueNullFieldError.checkNotNull(
        topicArn, r'TopicConfiguration', 'topicArn');
  }

  @override
  TopicConfiguration rebuild(
          void Function(TopicConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopicConfigurationBuilder toBuilder() =>
      new TopicConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopicConfiguration &&
        events == other.events &&
        filter == other.filter &&
        id == other.id &&
        topicArn == other.topicArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, topicArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TopicConfigurationBuilder
    implements Builder<TopicConfiguration, TopicConfigurationBuilder> {
  _$TopicConfiguration? _$v;

  _i4.ListBuilder<_i2.Event>? _events;
  _i4.ListBuilder<_i2.Event> get events =>
      _$this._events ??= new _i4.ListBuilder<_i2.Event>();
  set events(_i4.ListBuilder<_i2.Event>? events) => _$this._events = events;

  _i3.NotificationConfigurationFilterBuilder? _filter;
  _i3.NotificationConfigurationFilterBuilder get filter =>
      _$this._filter ??= new _i3.NotificationConfigurationFilterBuilder();
  set filter(_i3.NotificationConfigurationFilterBuilder? filter) =>
      _$this._filter = filter;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _topicArn;
  String? get topicArn => _$this._topicArn;
  set topicArn(String? topicArn) => _$this._topicArn = topicArn;

  TopicConfigurationBuilder() {
    TopicConfiguration._init(this);
  }

  TopicConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _events = $v.events.toBuilder();
      _filter = $v.filter?.toBuilder();
      _id = $v.id;
      _topicArn = $v.topicArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopicConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TopicConfiguration;
  }

  @override
  void update(void Function(TopicConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TopicConfiguration build() => _build();

  _$TopicConfiguration _build() {
    _$TopicConfiguration _$result;
    try {
      _$result = _$v ??
          new _$TopicConfiguration._(
              events: events.build(),
              filter: _filter?.build(),
              id: id,
              topicArn: BuiltValueNullFieldError.checkNotNull(
                  topicArn, r'TopicConfiguration', 'topicArn'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'events';
        events.build();
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TopicConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
