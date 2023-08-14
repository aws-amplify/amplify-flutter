// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datetime_offsets_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DatetimeOffsetsOutput extends DatetimeOffsetsOutput {
  @override
  final DateTime? datetime;

  factory _$DatetimeOffsetsOutput(
          [void Function(DatetimeOffsetsOutputBuilder)? updates]) =>
      (new DatetimeOffsetsOutputBuilder()..update(updates))._build();

  _$DatetimeOffsetsOutput._({this.datetime}) : super._();

  @override
  DatetimeOffsetsOutput rebuild(
          void Function(DatetimeOffsetsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatetimeOffsetsOutputBuilder toBuilder() =>
      new DatetimeOffsetsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatetimeOffsetsOutput && datetime == other.datetime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, datetime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DatetimeOffsetsOutputBuilder
    implements Builder<DatetimeOffsetsOutput, DatetimeOffsetsOutputBuilder> {
  _$DatetimeOffsetsOutput? _$v;

  DateTime? _datetime;
  DateTime? get datetime => _$this._datetime;
  set datetime(DateTime? datetime) => _$this._datetime = datetime;

  DatetimeOffsetsOutputBuilder();

  DatetimeOffsetsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _datetime = $v.datetime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatetimeOffsetsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatetimeOffsetsOutput;
  }

  @override
  void update(void Function(DatetimeOffsetsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatetimeOffsetsOutput build() => _build();

  _$DatetimeOffsetsOutput _build() {
    final _$result = _$v ?? new _$DatetimeOffsetsOutput._(datetime: datetime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
