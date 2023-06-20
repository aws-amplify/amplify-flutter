// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueueConfiguration extends QueueConfiguration {
  @override
  final String? id;
  @override
  final String queueArn;
  @override
  final _i4.BuiltList<_i2.Event> events;
  @override
  final _i3.NotificationConfigurationFilter? filter;

  factory _$QueueConfiguration(
          [void Function(QueueConfigurationBuilder)? updates]) =>
      (new QueueConfigurationBuilder()..update(updates))._build();

  _$QueueConfiguration._(
      {this.id, required this.queueArn, required this.events, this.filter})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        queueArn, r'QueueConfiguration', 'queueArn');
    BuiltValueNullFieldError.checkNotNull(
        events, r'QueueConfiguration', 'events');
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
        id == other.id &&
        queueArn == other.queueArn &&
        events == other.events &&
        filter == other.filter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, queueArn.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class QueueConfigurationBuilder
    implements Builder<QueueConfiguration, QueueConfigurationBuilder> {
  _$QueueConfiguration? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _queueArn;
  String? get queueArn => _$this._queueArn;
  set queueArn(String? queueArn) => _$this._queueArn = queueArn;

  _i4.ListBuilder<_i2.Event>? _events;
  _i4.ListBuilder<_i2.Event> get events =>
      _$this._events ??= new _i4.ListBuilder<_i2.Event>();
  set events(_i4.ListBuilder<_i2.Event>? events) => _$this._events = events;

  _i3.NotificationConfigurationFilterBuilder? _filter;
  _i3.NotificationConfigurationFilterBuilder get filter =>
      _$this._filter ??= new _i3.NotificationConfigurationFilterBuilder();
  set filter(_i3.NotificationConfigurationFilterBuilder? filter) =>
      _$this._filter = filter;

  QueueConfigurationBuilder() {
    QueueConfiguration._init(this);
  }

  QueueConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _queueArn = $v.queueArn;
      _events = $v.events.toBuilder();
      _filter = $v.filter?.toBuilder();
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
              id: id,
              queueArn: BuiltValueNullFieldError.checkNotNull(
                  queueArn, r'QueueConfiguration', 'queueArn'),
              events: events.build(),
              filter: _filter?.build());
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
