// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.time_to_live_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeToLiveDescription extends TimeToLiveDescription {
  @override
  final String? attributeName;
  @override
  final _i2.TimeToLiveStatus? timeToLiveStatus;

  factory _$TimeToLiveDescription(
          [void Function(TimeToLiveDescriptionBuilder)? updates]) =>
      (new TimeToLiveDescriptionBuilder()..update(updates))._build();

  _$TimeToLiveDescription._({this.attributeName, this.timeToLiveStatus})
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
        attributeName == other.attributeName &&
        timeToLiveStatus == other.timeToLiveStatus;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, attributeName.hashCode), timeToLiveStatus.hashCode));
  }
}

class TimeToLiveDescriptionBuilder
    implements Builder<TimeToLiveDescription, TimeToLiveDescriptionBuilder> {
  _$TimeToLiveDescription? _$v;

  String? _attributeName;
  String? get attributeName => _$this._attributeName;
  set attributeName(String? attributeName) =>
      _$this._attributeName = attributeName;

  _i2.TimeToLiveStatus? _timeToLiveStatus;
  _i2.TimeToLiveStatus? get timeToLiveStatus => _$this._timeToLiveStatus;
  set timeToLiveStatus(_i2.TimeToLiveStatus? timeToLiveStatus) =>
      _$this._timeToLiveStatus = timeToLiveStatus;

  TimeToLiveDescriptionBuilder() {
    TimeToLiveDescription._init(this);
  }

  TimeToLiveDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeName = $v.attributeName;
      _timeToLiveStatus = $v.timeToLiveStatus;
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
            attributeName: attributeName, timeToLiveStatus: timeToLiveStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
