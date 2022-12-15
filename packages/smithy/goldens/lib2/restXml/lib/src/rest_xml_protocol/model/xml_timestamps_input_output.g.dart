// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.xml_timestamps_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlTimestampsInputOutput extends XmlTimestampsInputOutput {
  @override
  final DateTime? dateTime;
  @override
  final DateTime? dateTimeOnTarget;
  @override
  final DateTime? epochSeconds;
  @override
  final DateTime? epochSecondsOnTarget;
  @override
  final DateTime? httpDate;
  @override
  final DateTime? httpDateOnTarget;
  @override
  final DateTime? normal;

  factory _$XmlTimestampsInputOutput(
          [void Function(XmlTimestampsInputOutputBuilder)? updates]) =>
      (new XmlTimestampsInputOutputBuilder()..update(updates))._build();

  _$XmlTimestampsInputOutput._(
      {this.dateTime,
      this.dateTimeOnTarget,
      this.epochSeconds,
      this.epochSecondsOnTarget,
      this.httpDate,
      this.httpDateOnTarget,
      this.normal})
      : super._();

  @override
  XmlTimestampsInputOutput rebuild(
          void Function(XmlTimestampsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlTimestampsInputOutputBuilder toBuilder() =>
      new XmlTimestampsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlTimestampsInputOutput &&
        dateTime == other.dateTime &&
        dateTimeOnTarget == other.dateTimeOnTarget &&
        epochSeconds == other.epochSeconds &&
        epochSecondsOnTarget == other.epochSecondsOnTarget &&
        httpDate == other.httpDate &&
        httpDateOnTarget == other.httpDateOnTarget &&
        normal == other.normal;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, dateTime.hashCode),
                            dateTimeOnTarget.hashCode),
                        epochSeconds.hashCode),
                    epochSecondsOnTarget.hashCode),
                httpDate.hashCode),
            httpDateOnTarget.hashCode),
        normal.hashCode));
  }
}

class XmlTimestampsInputOutputBuilder
    implements
        Builder<XmlTimestampsInputOutput, XmlTimestampsInputOutputBuilder> {
  _$XmlTimestampsInputOutput? _$v;

  DateTime? _dateTime;
  DateTime? get dateTime => _$this._dateTime;
  set dateTime(DateTime? dateTime) => _$this._dateTime = dateTime;

  DateTime? _dateTimeOnTarget;
  DateTime? get dateTimeOnTarget => _$this._dateTimeOnTarget;
  set dateTimeOnTarget(DateTime? dateTimeOnTarget) =>
      _$this._dateTimeOnTarget = dateTimeOnTarget;

  DateTime? _epochSeconds;
  DateTime? get epochSeconds => _$this._epochSeconds;
  set epochSeconds(DateTime? epochSeconds) =>
      _$this._epochSeconds = epochSeconds;

  DateTime? _epochSecondsOnTarget;
  DateTime? get epochSecondsOnTarget => _$this._epochSecondsOnTarget;
  set epochSecondsOnTarget(DateTime? epochSecondsOnTarget) =>
      _$this._epochSecondsOnTarget = epochSecondsOnTarget;

  DateTime? _httpDate;
  DateTime? get httpDate => _$this._httpDate;
  set httpDate(DateTime? httpDate) => _$this._httpDate = httpDate;

  DateTime? _httpDateOnTarget;
  DateTime? get httpDateOnTarget => _$this._httpDateOnTarget;
  set httpDateOnTarget(DateTime? httpDateOnTarget) =>
      _$this._httpDateOnTarget = httpDateOnTarget;

  DateTime? _normal;
  DateTime? get normal => _$this._normal;
  set normal(DateTime? normal) => _$this._normal = normal;

  XmlTimestampsInputOutputBuilder() {
    XmlTimestampsInputOutput._init(this);
  }

  XmlTimestampsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dateTime = $v.dateTime;
      _dateTimeOnTarget = $v.dateTimeOnTarget;
      _epochSeconds = $v.epochSeconds;
      _epochSecondsOnTarget = $v.epochSecondsOnTarget;
      _httpDate = $v.httpDate;
      _httpDateOnTarget = $v.httpDateOnTarget;
      _normal = $v.normal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlTimestampsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlTimestampsInputOutput;
  }

  @override
  void update(void Function(XmlTimestampsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlTimestampsInputOutput build() => _build();

  _$XmlTimestampsInputOutput _build() {
    final _$result = _$v ??
        new _$XmlTimestampsInputOutput._(
            dateTime: dateTime,
            dateTimeOnTarget: dateTimeOnTarget,
            epochSeconds: epochSeconds,
            epochSecondsOnTarget: epochSecondsOnTarget,
            httpDate: httpDate,
            httpDateOnTarget: httpDateOnTarget,
            normal: normal);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
