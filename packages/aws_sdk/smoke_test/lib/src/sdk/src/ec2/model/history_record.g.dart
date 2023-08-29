// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HistoryRecord extends HistoryRecord {
  @override
  final EventInformation? eventInformation;
  @override
  final EventType? eventType;
  @override
  final DateTime? timestamp;

  factory _$HistoryRecord([void Function(HistoryRecordBuilder)? updates]) =>
      (new HistoryRecordBuilder()..update(updates))._build();

  _$HistoryRecord._({this.eventInformation, this.eventType, this.timestamp})
      : super._();

  @override
  HistoryRecord rebuild(void Function(HistoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryRecordBuilder toBuilder() => new HistoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryRecord &&
        eventInformation == other.eventInformation &&
        eventType == other.eventType &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventInformation.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HistoryRecordBuilder
    implements Builder<HistoryRecord, HistoryRecordBuilder> {
  _$HistoryRecord? _$v;

  EventInformationBuilder? _eventInformation;
  EventInformationBuilder get eventInformation =>
      _$this._eventInformation ??= new EventInformationBuilder();
  set eventInformation(EventInformationBuilder? eventInformation) =>
      _$this._eventInformation = eventInformation;

  EventType? _eventType;
  EventType? get eventType => _$this._eventType;
  set eventType(EventType? eventType) => _$this._eventType = eventType;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  HistoryRecordBuilder();

  HistoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventInformation = $v.eventInformation?.toBuilder();
      _eventType = $v.eventType;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistoryRecord;
  }

  @override
  void update(void Function(HistoryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoryRecord build() => _build();

  _$HistoryRecord _build() {
    _$HistoryRecord _$result;
    try {
      _$result = _$v ??
          new _$HistoryRecord._(
              eventInformation: _eventInformation?.build(),
              eventType: eventType,
              timestamp: timestamp);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'eventInformation';
        _eventInformation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HistoryRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
