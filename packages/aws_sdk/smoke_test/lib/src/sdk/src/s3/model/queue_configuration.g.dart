// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.queue_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueueConfiguration extends QueueConfiguration {
  @override
  final _i4.BuiltList<_i2.Event> events;
  @override
  final _i3.NotificationConfigurationFilter? filter;
  @override
  final String? id;
  @override
  final String queueArn;

  factory _$QueueConfiguration(
          [void Function(QueueConfigurationBuilder)? updates]) =>
      (new QueueConfigurationBuilder()..update(updates))._build();

  _$QueueConfiguration._(
      {required this.events, this.filter, this.id, required this.queueArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        events, r'QueueConfiguration', 'events');
    BuiltValueNullFieldError.checkNotNull(
        queueArn, r'QueueConfiguration', 'queueArn');
  }

  @override
  QueueConfiguration rebuild(
          void Function(QueueConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueueConfigurationBuilder toBuilder() =>
      new QueueConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueueConfiguration &&
        events == other.events &&
        filter == other.filter &&
        id == other.id &&
        queueArn == other.queueArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, queueArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class QueueConfigurationBuilder
    implements Builder<QueueConfiguration, QueueConfigurationBuilder> {
  _$QueueConfiguration? _$v;

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

  String? _queueArn;
  String? get queueArn => _$this._queueArn;
  set queueArn(String? queueArn) => _$this._queueArn = queueArn;

  QueueConfigurationBuilder() {
    QueueConfiguration._init(this);
  }

  QueueConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _events = $v.events.toBuilder();
      _filter = $v.filter?.toBuilder();
      _id = $v.id;
      _queueArn = $v.queueArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueueConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueueConfiguration;
  }

  @override
  void update(void Function(QueueConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueueConfiguration build() => _build();

  _$QueueConfiguration _build() {
    _$QueueConfiguration _$result;
    try {
      _$result = _$v ??
          new _$QueueConfiguration._(
              events: events.build(),
              filter: _filter?.build(),
              id: id,
              queueArn: BuiltValueNullFieldError.checkNotNull(
                  queueArn, r'QueueConfiguration', 'queueArn'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'events';
        events.build();
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QueueConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
