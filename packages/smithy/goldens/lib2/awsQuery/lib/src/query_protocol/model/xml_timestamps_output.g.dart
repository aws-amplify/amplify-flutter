// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xml_timestamps_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlTimestampsOutput extends XmlTimestampsOutput {
  @override
  final DateTime? normal;
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

  factory _$XmlTimestampsOutput(
          [void Function(XmlTimestampsOutputBuilder)? updates]) =>
      (new XmlTimestampsOutputBuilder()..update(updates))._build();

  _$XmlTimestampsOutput._(
      {this.normal,
      this.dateTime,
      this.dateTimeOnTarget,
      this.epochSeconds,
      this.epochSecondsOnTarget,
      this.httpDate,
      this.httpDateOnTarget})
      : super._();

  @override
  XmlTimestampsOutput rebuild(
          void Function(XmlTimestampsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlTimestampsOutputBuilder toBuilder() =>
      new XmlTimestampsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlTimestampsOutput &&
        normal == other.normal &&
        dateTime == other.dateTime &&
        dateTimeOnTarget == other.dateTimeOnTarget &&
        epochSeconds == other.epochSeconds &&
        epochSecondsOnTarget == other.epochSecondsOnTarget &&
        httpDate == other.httpDate &&
        httpDateOnTarget == other.httpDateOnTarget;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, normal.hashCode);
    _$hash = $jc(_$hash, dateTime.hashCode);
    _$hash = $jc(_$hash, dateTimeOnTarget.hashCode);
    _$hash = $jc(_$hash, epochSeconds.hashCode);
    _$hash = $jc(_$hash, epochSecondsOnTarget.hashCode);
    _$hash = $jc(_$hash, httpDate.hashCode);
    _$hash = $jc(_$hash, httpDateOnTarget.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlTimestampsOutputBuilder
    implements Builder<XmlTimestampsOutput, XmlTimestampsOutputBuilder> {
  _$XmlTimestampsOutput? _$v;

  DateTime? _normal;
  DateTime? get normal => _$this._normal;
  set normal(DateTime? normal) => _$this._normal = normal;

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

  XmlTimestampsOutputBuilder();

  XmlTimestampsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _normal = $v.normal;
      _dateTime = $v.dateTime;
      _dateTimeOnTarget = $v.dateTimeOnTarget;
      _epochSeconds = $v.epochSeconds;
      _epochSecondsOnTarget = $v.epochSecondsOnTarget;
      _httpDate = $v.httpDate;
      _httpDateOnTarget = $v.httpDateOnTarget;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlTimestampsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlTimestampsOutput;
  }

  @override
  void update(void Function(XmlTimestampsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlTimestampsOutput build() => _build();

  _$XmlTimestampsOutput _build() {
    final _$result = _$v ??
        new _$XmlTimestampsOutput._(
            normal: normal,
            dateTime: dateTime,
            dateTimeOnTarget: dateTimeOnTarget,
            epochSeconds: epochSeconds,
            epochSecondsOnTarget: epochSecondsOnTarget,
            httpDate: httpDate,
            httpDateOnTarget: httpDateOnTarget);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
