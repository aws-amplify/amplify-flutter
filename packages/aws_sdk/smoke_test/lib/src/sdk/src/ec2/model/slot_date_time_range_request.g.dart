// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_date_time_range_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SlotDateTimeRangeRequest extends SlotDateTimeRangeRequest {
  @override
  final DateTime? earliestTime;
  @override
  final DateTime? latestTime;

  factory _$SlotDateTimeRangeRequest(
          [void Function(SlotDateTimeRangeRequestBuilder)? updates]) =>
      (new SlotDateTimeRangeRequestBuilder()..update(updates))._build();

  _$SlotDateTimeRangeRequest._({this.earliestTime, this.latestTime})
      : super._();

  @override
  SlotDateTimeRangeRequest rebuild(
          void Function(SlotDateTimeRangeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SlotDateTimeRangeRequestBuilder toBuilder() =>
      new SlotDateTimeRangeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SlotDateTimeRangeRequest &&
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

class SlotDateTimeRangeRequestBuilder
    implements
        Builder<SlotDateTimeRangeRequest, SlotDateTimeRangeRequestBuilder> {
  _$SlotDateTimeRangeRequest? _$v;

  DateTime? _earliestTime;
  DateTime? get earliestTime => _$this._earliestTime;
  set earliestTime(DateTime? earliestTime) =>
      _$this._earliestTime = earliestTime;

  DateTime? _latestTime;
  DateTime? get latestTime => _$this._latestTime;
  set latestTime(DateTime? latestTime) => _$this._latestTime = latestTime;

  SlotDateTimeRangeRequestBuilder();

  SlotDateTimeRangeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _earliestTime = $v.earliestTime;
      _latestTime = $v.latestTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SlotDateTimeRangeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SlotDateTimeRangeRequest;
  }

  @override
  void update(void Function(SlotDateTimeRangeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SlotDateTimeRangeRequest build() => _build();

  _$SlotDateTimeRangeRequest _build() {
    final _$result = _$v ??
        new _$SlotDateTimeRangeRequest._(
            earliestTime: earliestTime, latestTime: latestTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
