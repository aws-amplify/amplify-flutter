// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_information.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventInformation extends EventInformation {
  @override
  final String? eventDescription;
  @override
  final String? eventSubType;
  @override
  final String? instanceId;

  factory _$EventInformation(
          [void Function(EventInformationBuilder)? updates]) =>
      (new EventInformationBuilder()..update(updates))._build();

  _$EventInformation._(
      {this.eventDescription, this.eventSubType, this.instanceId})
      : super._();

  @override
  EventInformation rebuild(void Function(EventInformationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventInformationBuilder toBuilder() =>
      new EventInformationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventInformation &&
        eventDescription == other.eventDescription &&
        eventSubType == other.eventSubType &&
        instanceId == other.instanceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventDescription.hashCode);
    _$hash = $jc(_$hash, eventSubType.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EventInformationBuilder
    implements Builder<EventInformation, EventInformationBuilder> {
  _$EventInformation? _$v;

  String? _eventDescription;
  String? get eventDescription => _$this._eventDescription;
  set eventDescription(String? eventDescription) =>
      _$this._eventDescription = eventDescription;

  String? _eventSubType;
  String? get eventSubType => _$this._eventSubType;
  set eventSubType(String? eventSubType) => _$this._eventSubType = eventSubType;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  EventInformationBuilder();

  EventInformationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventDescription = $v.eventDescription;
      _eventSubType = $v.eventSubType;
      _instanceId = $v.instanceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventInformation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventInformation;
  }

  @override
  void update(void Function(EventInformationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventInformation build() => _build();

  _$EventInformation _build() {
    final _$result = _$v ??
        new _$EventInformation._(
            eventDescription: eventDescription,
            eventSubType: eventSubType,
            instanceId: instanceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
