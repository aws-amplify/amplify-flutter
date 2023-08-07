// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_event_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthEventType extends AuthEventType {
  @override
  final String? eventId;
  @override
  final EventType? eventType;
  @override
  final DateTime? creationDate;
  @override
  final EventResponseType? eventResponse;
  @override
  final EventRiskType? eventRisk;
  @override
  final _i2.BuiltList<ChallengeResponseType>? challengeResponses;
  @override
  final EventContextDataType? eventContextData;
  @override
  final EventFeedbackType? eventFeedback;

  factory _$AuthEventType([void Function(AuthEventTypeBuilder)? updates]) =>
      (new AuthEventTypeBuilder()..update(updates))._build();

  _$AuthEventType._(
      {this.eventId,
      this.eventType,
      this.creationDate,
      this.eventResponse,
      this.eventRisk,
      this.challengeResponses,
      this.eventContextData,
      this.eventFeedback})
      : super._();

  @override
  AuthEventType rebuild(void Function(AuthEventTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthEventTypeBuilder toBuilder() => new AuthEventTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthEventType &&
        eventId == other.eventId &&
        eventType == other.eventType &&
        creationDate == other.creationDate &&
        eventResponse == other.eventResponse &&
        eventRisk == other.eventRisk &&
        challengeResponses == other.challengeResponses &&
        eventContextData == other.eventContextData &&
        eventFeedback == other.eventFeedback;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, creationDate.hashCode);
    _$hash = $jc(_$hash, eventResponse.hashCode);
    _$hash = $jc(_$hash, eventRisk.hashCode);
    _$hash = $jc(_$hash, challengeResponses.hashCode);
    _$hash = $jc(_$hash, eventContextData.hashCode);
    _$hash = $jc(_$hash, eventFeedback.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AuthEventTypeBuilder
    implements Builder<AuthEventType, AuthEventTypeBuilder> {
  _$AuthEventType? _$v;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  EventType? _eventType;
  EventType? get eventType => _$this._eventType;
  set eventType(EventType? eventType) => _$this._eventType = eventType;

  DateTime? _creationDate;
  DateTime? get creationDate => _$this._creationDate;
  set creationDate(DateTime? creationDate) =>
      _$this._creationDate = creationDate;

  EventResponseType? _eventResponse;
  EventResponseType? get eventResponse => _$this._eventResponse;
  set eventResponse(EventResponseType? eventResponse) =>
      _$this._eventResponse = eventResponse;

  EventRiskTypeBuilder? _eventRisk;
  EventRiskTypeBuilder get eventRisk =>
      _$this._eventRisk ??= new EventRiskTypeBuilder();
  set eventRisk(EventRiskTypeBuilder? eventRisk) =>
      _$this._eventRisk = eventRisk;

  _i2.ListBuilder<ChallengeResponseType>? _challengeResponses;
  _i2.ListBuilder<ChallengeResponseType> get challengeResponses =>
      _$this._challengeResponses ??=
          new _i2.ListBuilder<ChallengeResponseType>();
  set challengeResponses(
          _i2.ListBuilder<ChallengeResponseType>? challengeResponses) =>
      _$this._challengeResponses = challengeResponses;

  EventContextDataTypeBuilder? _eventContextData;
  EventContextDataTypeBuilder get eventContextData =>
      _$this._eventContextData ??= new EventContextDataTypeBuilder();
  set eventContextData(EventContextDataTypeBuilder? eventContextData) =>
      _$this._eventContextData = eventContextData;

  EventFeedbackTypeBuilder? _eventFeedback;
  EventFeedbackTypeBuilder get eventFeedback =>
      _$this._eventFeedback ??= new EventFeedbackTypeBuilder();
  set eventFeedback(EventFeedbackTypeBuilder? eventFeedback) =>
      _$this._eventFeedback = eventFeedback;

  AuthEventTypeBuilder();

  AuthEventTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventId = $v.eventId;
      _eventType = $v.eventType;
      _creationDate = $v.creationDate;
      _eventResponse = $v.eventResponse;
      _eventRisk = $v.eventRisk?.toBuilder();
      _challengeResponses = $v.challengeResponses?.toBuilder();
      _eventContextData = $v.eventContextData?.toBuilder();
      _eventFeedback = $v.eventFeedback?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthEventType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthEventType;
  }

  @override
  void update(void Function(AuthEventTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthEventType build() => _build();

  _$AuthEventType _build() {
    _$AuthEventType _$result;
    try {
      _$result = _$v ??
          new _$AuthEventType._(
              eventId: eventId,
              eventType: eventType,
              creationDate: creationDate,
              eventResponse: eventResponse,
              eventRisk: _eventRisk?.build(),
              challengeResponses: _challengeResponses?.build(),
              eventContextData: _eventContextData?.build(),
              eventFeedback: _eventFeedback?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'eventRisk';
        _eventRisk?.build();
        _$failedField = 'challengeResponses';
        _challengeResponses?.build();
        _$failedField = 'eventContextData';
        _eventContextData?.build();
        _$failedField = 'eventFeedback';
        _eventFeedback?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthEventType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
