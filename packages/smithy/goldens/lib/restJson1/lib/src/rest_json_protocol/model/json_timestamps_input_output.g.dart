// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.json_timestamps_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonTimestampsInputOutput extends JsonTimestampsInputOutput {
  @override
  final DateTime? dateTime;
  @override
  final DateTime? epochSeconds;
  @override
  final DateTime? httpDate;
  @override
  final DateTime? normal;

  factory _$JsonTimestampsInputOutput(
          [void Function(JsonTimestampsInputOutputBuilder)? updates]) =>
      (new JsonTimestampsInputOutputBuilder()..update(updates))._build();

  _$JsonTimestampsInputOutput._(
      {this.dateTime, this.epochSeconds, this.httpDate, this.normal})
      : super._();

  @override
  JsonTimestampsInputOutput rebuild(
          void Function(JsonTimestampsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonTimestampsInputOutputBuilder toBuilder() =>
      new JsonTimestampsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonTimestampsInputOutput &&
        dateTime == other.dateTime &&
        epochSeconds == other.epochSeconds &&
        httpDate == other.httpDate &&
        normal == other.normal;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, dateTime.hashCode), epochSeconds.hashCode),
            httpDate.hashCode),
        normal.hashCode));
  }
}

class JsonTimestampsInputOutputBuilder
    implements
        Builder<JsonTimestampsInputOutput, JsonTimestampsInputOutputBuilder> {
  _$JsonTimestampsInputOutput? _$v;

  DateTime? _dateTime;
  DateTime? get dateTime => _$this._dateTime;
  set dateTime(DateTime? dateTime) => _$this._dateTime = dateTime;

  DateTime? _epochSeconds;
  DateTime? get epochSeconds => _$this._epochSeconds;
  set epochSeconds(DateTime? epochSeconds) =>
      _$this._epochSeconds = epochSeconds;

  DateTime? _httpDate;
  DateTime? get httpDate => _$this._httpDate;
  set httpDate(DateTime? httpDate) => _$this._httpDate = httpDate;

  DateTime? _normal;
  DateTime? get normal => _$this._normal;
  set normal(DateTime? normal) => _$this._normal = normal;

  JsonTimestampsInputOutputBuilder() {
    JsonTimestampsInputOutput._init(this);
  }

  JsonTimestampsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dateTime = $v.dateTime;
      _epochSeconds = $v.epochSeconds;
      _httpDate = $v.httpDate;
      _normal = $v.normal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonTimestampsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonTimestampsInputOutput;
  }

  @override
  void update(void Function(JsonTimestampsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonTimestampsInputOutput build() => _build();

  _$JsonTimestampsInputOutput _build() {
    final _$result = _$v ??
        new _$JsonTimestampsInputOutput._(
            dateTime: dateTime,
            epochSeconds: epochSeconds,
            httpDate: httpDate,
            normal: normal);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
