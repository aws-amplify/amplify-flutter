// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.quiet_time;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuietTime extends QuietTime {
  @override
  final String? end;
  @override
  final String? start;

  factory _$QuietTime([void Function(QuietTimeBuilder)? updates]) =>
      (new QuietTimeBuilder()..update(updates))._build();

  _$QuietTime._({this.end, this.start}) : super._();

  @override
  QuietTime rebuild(void Function(QuietTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuietTimeBuilder toBuilder() => new QuietTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuietTime && end == other.end && start == other.start;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class QuietTimeBuilder implements Builder<QuietTime, QuietTimeBuilder> {
  _$QuietTime? _$v;

  String? _end;
  String? get end => _$this._end;
  set end(String? end) => _$this._end = end;

  String? _start;
  String? get start => _$this._start;
  set start(String? start) => _$this._start = start;

  QuietTimeBuilder() {
    QuietTime._init(this);
  }

  QuietTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _end = $v.end;
      _start = $v.start;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuietTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuietTime;
  }

  @override
  void update(void Function(QuietTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuietTime build() => _build();

  _$QuietTime _build() {
    final _$result = _$v ?? new _$QuietTime._(end: end, start: start);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
