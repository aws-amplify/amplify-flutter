// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.session;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Session extends Session {
  @override
  final int duration;
  @override
  final String id;
  @override
  final String startTimestamp;
  @override
  final String? stopTimestamp;

  factory _$Session([void Function(SessionBuilder)? updates]) =>
      (new SessionBuilder()..update(updates))._build();

  _$Session._(
      {required this.duration,
      required this.id,
      required this.startTimestamp,
      this.stopTimestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(duration, r'Session', 'duration');
    BuiltValueNullFieldError.checkNotNull(id, r'Session', 'id');
    BuiltValueNullFieldError.checkNotNull(
        startTimestamp, r'Session', 'startTimestamp');
  }

  @override
  Session rebuild(void Function(SessionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionBuilder toBuilder() => new SessionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Session &&
        duration == other.duration &&
        id == other.id &&
        startTimestamp == other.startTimestamp &&
        stopTimestamp == other.stopTimestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, duration.hashCode), id.hashCode),
            startTimestamp.hashCode),
        stopTimestamp.hashCode));
  }
}

class SessionBuilder implements Builder<Session, SessionBuilder> {
  _$Session? _$v;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _startTimestamp;
  String? get startTimestamp => _$this._startTimestamp;
  set startTimestamp(String? startTimestamp) =>
      _$this._startTimestamp = startTimestamp;

  String? _stopTimestamp;
  String? get stopTimestamp => _$this._stopTimestamp;
  set stopTimestamp(String? stopTimestamp) =>
      _$this._stopTimestamp = stopTimestamp;

  SessionBuilder() {
    Session._init(this);
  }

  SessionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _duration = $v.duration;
      _id = $v.id;
      _startTimestamp = $v.startTimestamp;
      _stopTimestamp = $v.stopTimestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Session other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Session;
  }

  @override
  void update(void Function(SessionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Session build() => _build();

  _$Session _build() {
    final _$result = _$v ??
        new _$Session._(
            duration: BuiltValueNullFieldError.checkNotNull(
                duration, r'Session', 'duration'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'Session', 'id'),
            startTimestamp: BuiltValueNullFieldError.checkNotNull(
                startTimestamp, r'Session', 'startTimestamp'),
            stopTimestamp: stopTimestamp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
