// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_start_time_range_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SlotStartTimeRangeRequest extends SlotStartTimeRangeRequest {
  @override
  final DateTime? earliestTime;
  @override
  final DateTime? latestTime;

  factory _$SlotStartTimeRangeRequest(
          [void Function(SlotStartTimeRangeRequestBuilder)? updates]) =>
      (new SlotStartTimeRangeRequestBuilder()..update(updates))._build();

  _$SlotStartTimeRangeRequest._({this.earliestTime, this.latestTime})
      : super._();

  @override
  SlotStartTimeRangeRequest rebuild(
          void Function(SlotStartTimeRangeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SlotStartTimeRangeRequestBuilder toBuilder() =>
      new SlotStartTimeRangeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SlotStartTimeRangeRequest &&
        earliestTime == other.earliestTime &&
        latestTime == other.latestTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, earliestTime.hashCode);
    _$hash = $jc(_$hash, latestTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SlotStartTimeRangeRequestBuilder
    implements
        Builder<SlotStartTimeRangeRequest, SlotStartTimeRangeRequestBuilder> {
  _$SlotStartTimeRangeRequest? _$v;

  DateTime? _earliestTime;
  DateTime? get earliestTime => _$this._earliestTime;
  set earliestTime(DateTime? earliestTime) =>
      _$this._earliestTime = earliestTime;

  DateTime? _latestTime;
  DateTime? get latestTime => _$this._latestTime;
  set latestTime(DateTime? latestTime) => _$this._latestTime = latestTime;

  SlotStartTimeRangeRequestBuilder();

  SlotStartTimeRangeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _earliestTime = $v.earliestTime;
      _latestTime = $v.latestTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SlotStartTimeRangeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SlotStartTimeRangeRequest;
  }

  @override
  void update(void Function(SlotStartTimeRangeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SlotStartTimeRangeRequest build() => _build();

  _$SlotStartTimeRangeRequest _build() {
    final _$result = _$v ??
        new _$SlotStartTimeRangeRequest._(
            earliestTime: earliestTime, latestTime: latestTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
