// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_logging_cloudwatchlogs_dart.cloud_watch_logs.model.rejected_log_events_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RejectedLogEventsInfo extends RejectedLogEventsInfo {
  @override
  final int? expiredLogEventEndIndex;
  @override
  final int? tooNewLogEventStartIndex;
  @override
  final int? tooOldLogEventEndIndex;

  factory _$RejectedLogEventsInfo(
          [void Function(RejectedLogEventsInfoBuilder)? updates]) =>
      (new RejectedLogEventsInfoBuilder()..update(updates))._build();

  _$RejectedLogEventsInfo._(
      {this.expiredLogEventEndIndex,
      this.tooNewLogEventStartIndex,
      this.tooOldLogEventEndIndex})
      : super._();

  @override
  RejectedLogEventsInfo rebuild(
          void Function(RejectedLogEventsInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RejectedLogEventsInfoBuilder toBuilder() =>
      new RejectedLogEventsInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RejectedLogEventsInfo &&
        expiredLogEventEndIndex == other.expiredLogEventEndIndex &&
        tooNewLogEventStartIndex == other.tooNewLogEventStartIndex &&
        tooOldLogEventEndIndex == other.tooOldLogEventEndIndex;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, expiredLogEventEndIndex.hashCode),
            tooNewLogEventStartIndex.hashCode),
        tooOldLogEventEndIndex.hashCode));
  }
}

class RejectedLogEventsInfoBuilder
    implements Builder<RejectedLogEventsInfo, RejectedLogEventsInfoBuilder> {
  _$RejectedLogEventsInfo? _$v;

  int? _expiredLogEventEndIndex;
  int? get expiredLogEventEndIndex => _$this._expiredLogEventEndIndex;
  set expiredLogEventEndIndex(int? expiredLogEventEndIndex) =>
      _$this._expiredLogEventEndIndex = expiredLogEventEndIndex;

  int? _tooNewLogEventStartIndex;
  int? get tooNewLogEventStartIndex => _$this._tooNewLogEventStartIndex;
  set tooNewLogEventStartIndex(int? tooNewLogEventStartIndex) =>
      _$this._tooNewLogEventStartIndex = tooNewLogEventStartIndex;

  int? _tooOldLogEventEndIndex;
  int? get tooOldLogEventEndIndex => _$this._tooOldLogEventEndIndex;
  set tooOldLogEventEndIndex(int? tooOldLogEventEndIndex) =>
      _$this._tooOldLogEventEndIndex = tooOldLogEventEndIndex;

  RejectedLogEventsInfoBuilder() {
    RejectedLogEventsInfo._init(this);
  }

  RejectedLogEventsInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expiredLogEventEndIndex = $v.expiredLogEventEndIndex;
      _tooNewLogEventStartIndex = $v.tooNewLogEventStartIndex;
      _tooOldLogEventEndIndex = $v.tooOldLogEventEndIndex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RejectedLogEventsInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RejectedLogEventsInfo;
  }

  @override
  void update(void Function(RejectedLogEventsInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RejectedLogEventsInfo build() => _build();

  _$RejectedLogEventsInfo _build() {
    final _$result = _$v ??
        new _$RejectedLogEventsInfo._(
            expiredLogEventEndIndex: expiredLogEventEndIndex,
            tooNewLogEventStartIndex: tooNewLogEventStartIndex,
            tooOldLogEventEndIndex: tooOldLogEventEndIndex);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
