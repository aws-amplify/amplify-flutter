// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_to_live_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeToLiveDescription extends TimeToLiveDescription {
  @override
  final _i2.TimeToLiveStatus? timeToLiveStatus;
  @override
  final String? attributeName;

  factory _$TimeToLiveDescription(
          [void Function(TimeToLiveDescriptionBuilder)? updates]) =>
      (new TimeToLiveDescriptionBuilder()..update(updates))._build();

  _$TimeToLiveDescription._({this.timeToLiveStatus, this.attributeName})
      : super._();

  @override
  TimeToLiveDescription rebuild(
          void Function(TimeToLiveDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeToLiveDescriptionBuilder toBuilder() =>
      new TimeToLiveDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeToLiveDescription &&
        timeToLiveStatus == other.timeToLiveStatus &&
        attributeName == other.attributeName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timeToLiveStatus.hashCode);
    _$hash = $jc(_$hash, attributeName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TimeToLiveDescriptionBuilder
    implements Builder<TimeToLiveDescription, TimeToLiveDescriptionBuilder> {
  _$TimeToLiveDescription? _$v;

  _i2.TimeToLiveStatus? _timeToLiveStatus;
  _i2.TimeToLiveStatus? get timeToLiveStatus => _$this._timeToLiveStatus;
  set timeToLiveStatus(_i2.TimeToLiveStatus? timeToLiveStatus) =>
      _$this._timeToLiveStatus = timeToLiveStatus;

  String? _attributeName;
  String? get attributeName => _$this._attributeName;
  set attributeName(String? attributeName) =>
      _$this._attributeName = attributeName;

  TimeToLiveDescriptionBuilder() {
    TimeToLiveDescription._init(this);
  }

  TimeToLiveDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeToLiveStatus = $v.timeToLiveStatus;
      _attributeName = $v.attributeName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeToLiveDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeToLiveDescription;
  }

  @override
  void update(void Function(TimeToLiveDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeToLiveDescription build() => _build();

  _$TimeToLiveDescription _build() {
    final _$result = _$v ??
        new _$TimeToLiveDescription._(
            timeToLiveStatus: timeToLiveStatus, attributeName: attributeName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
