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
    return $jf($jc($jc(0, end.hashCode), start.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
