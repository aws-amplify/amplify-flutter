// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rejected_log_events_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RejectedLogEventsInfo extends RejectedLogEventsInfo {
  @override
  final int? tooNewLogEventStartIndex;
  @override
  final int? tooOldLogEventEndIndex;
  @override
  final int? expiredLogEventEndIndex;

  factory _$RejectedLogEventsInfo(
          [void Function(RejectedLogEventsInfoBuilder)? updates]) =>
      (new RejectedLogEventsInfoBuilder()..update(updates))._build();

  _$RejectedLogEventsInfo._(
      {this.tooNewLogEventStartIndex,
      this.tooOldLogEventEndIndex,
      this.expiredLogEventEndIndex})
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
        tooNewLogEventStartIndex == other.tooNewLogEventStartIndex &&
        tooOldLogEventEndIndex == other.tooOldLogEventEndIndex &&
        expiredLogEventEndIndex == other.expiredLogEventEndIndex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tooNewLogEventStartIndex.hashCode);
    _$hash = $jc(_$hash, tooOldLogEventEndIndex.hashCode);
    _$hash = $jc(_$hash, expiredLogEventEndIndex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RejectedLogEventsInfoBuilder
    implements Builder<RejectedLogEventsInfo, RejectedLogEventsInfoBuilder> {
  _$RejectedLogEventsInfo? _$v;

  int? _tooNewLogEventStartIndex;
  int? get tooNewLogEventStartIndex => _$this._tooNewLogEventStartIndex;
  set tooNewLogEventStartIndex(int? tooNewLogEventStartIndex) =>
      _$this._tooNewLogEventStartIndex = tooNewLogEventStartIndex;

  int? _tooOldLogEventEndIndex;
  int? get tooOldLogEventEndIndex => _$this._tooOldLogEventEndIndex;
  set tooOldLogEventEndIndex(int? tooOldLogEventEndIndex) =>
      _$this._tooOldLogEventEndIndex = tooOldLogEventEndIndex;

  int? _expiredLogEventEndIndex;
  int? get expiredLogEventEndIndex => _$this._expiredLogEventEndIndex;
  set expiredLogEventEndIndex(int? expiredLogEventEndIndex) =>
      _$this._expiredLogEventEndIndex = expiredLogEventEndIndex;

  RejectedLogEventsInfoBuilder() {
    RejectedLogEventsInfo._init(this);
  }

  RejectedLogEventsInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tooNewLogEventStartIndex = $v.tooNewLogEventStartIndex;
      _tooOldLogEventEndIndex = $v.tooOldLogEventEndIndex;
      _expiredLogEventEndIndex = $v.expiredLogEventEndIndex;
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
            tooNewLogEventStartIndex: tooNewLogEventStartIndex,
            tooOldLogEventEndIndex: tooOldLogEventEndIndex,
            expiredLogEventEndIndex: expiredLogEventEndIndex);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
