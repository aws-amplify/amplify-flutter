// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_status_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VolumeStatusEvent extends VolumeStatusEvent {
  @override
  final String? description;
  @override
  final String? eventId;
  @override
  final String? eventType;
  @override
  final DateTime? notAfter;
  @override
  final DateTime? notBefore;
  @override
  final String? instanceId;

  factory _$VolumeStatusEvent(
          [void Function(VolumeStatusEventBuilder)? updates]) =>
      (new VolumeStatusEventBuilder()..update(updates))._build();

  _$VolumeStatusEvent._(
      {this.description,
      this.eventId,
      this.eventType,
      this.notAfter,
      this.notBefore,
      this.instanceId})
      : super._();

  @override
  VolumeStatusEvent rebuild(void Function(VolumeStatusEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VolumeStatusEventBuilder toBuilder() =>
      new VolumeStatusEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VolumeStatusEvent &&
        description == other.description &&
        eventId == other.eventId &&
        eventType == other.eventType &&
        notAfter == other.notAfter &&
        notBefore == other.notBefore &&
        instanceId == other.instanceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, notAfter.hashCode);
    _$hash = $jc(_$hash, notBefore.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VolumeStatusEventBuilder
    implements Builder<VolumeStatusEvent, VolumeStatusEventBuilder> {
  _$VolumeStatusEvent? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  String? _eventType;
  String? get eventType => _$this._eventType;
  set eventType(String? eventType) => _$this._eventType = eventType;

  DateTime? _notAfter;
  DateTime? get notAfter => _$this._notAfter;
  set notAfter(DateTime? notAfter) => _$this._notAfter = notAfter;

  DateTime? _notBefore;
  DateTime? get notBefore => _$this._notBefore;
  set notBefore(DateTime? notBefore) => _$this._notBefore = notBefore;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  VolumeStatusEventBuilder();

  VolumeStatusEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _eventId = $v.eventId;
      _eventType = $v.eventType;
      _notAfter = $v.notAfter;
      _notBefore = $v.notBefore;
      _instanceId = $v.instanceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VolumeStatusEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VolumeStatusEvent;
  }

  @override
  void update(void Function(VolumeStatusEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VolumeStatusEvent build() => _build();

  _$VolumeStatusEvent _build() {
    final _$result = _$v ??
        new _$VolumeStatusEvent._(
            description: description,
            eventId: eventId,
            eventType: eventType,
            notAfter: notAfter,
            notBefore: notBefore,
            instanceId: instanceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
