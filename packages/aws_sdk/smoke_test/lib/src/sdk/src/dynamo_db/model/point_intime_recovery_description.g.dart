// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.point_intime_recovery_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PointIntimeRecoveryDescription extends PointIntimeRecoveryDescription {
  @override
  final DateTime? earliestRestorableDateTime;
  @override
  final DateTime? latestRestorableDateTime;
  @override
  final _i2.PointIntimeRecoveryStatus? pointIntimeRecoveryStatus;

  factory _$PointIntimeRecoveryDescription(
          [void Function(PointIntimeRecoveryDescriptionBuilder)? updates]) =>
      (new PointIntimeRecoveryDescriptionBuilder()..update(updates))._build();

  _$PointIntimeRecoveryDescription._(
      {this.earliestRestorableDateTime,
      this.latestRestorableDateTime,
      this.pointIntimeRecoveryStatus})
      : super._();

  @override
  PointIntimeRecoveryDescription rebuild(
          void Function(PointIntimeRecoveryDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PointIntimeRecoveryDescriptionBuilder toBuilder() =>
      new PointIntimeRecoveryDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PointIntimeRecoveryDescription &&
        earliestRestorableDateTime == other.earliestRestorableDateTime &&
        latestRestorableDateTime == other.latestRestorableDateTime &&
        pointIntimeRecoveryStatus == other.pointIntimeRecoveryStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, earliestRestorableDateTime.hashCode),
            latestRestorableDateTime.hashCode),
        pointIntimeRecoveryStatus.hashCode));
  }
}

class PointIntimeRecoveryDescriptionBuilder
    implements
        Builder<PointIntimeRecoveryDescription,
            PointIntimeRecoveryDescriptionBuilder> {
  _$PointIntimeRecoveryDescription? _$v;

  DateTime? _earliestRestorableDateTime;
  DateTime? get earliestRestorableDateTime =>
      _$this._earliestRestorableDateTime;
  set earliestRestorableDateTime(DateTime? earliestRestorableDateTime) =>
      _$this._earliestRestorableDateTime = earliestRestorableDateTime;

  DateTime? _latestRestorableDateTime;
  DateTime? get latestRestorableDateTime => _$this._latestRestorableDateTime;
  set latestRestorableDateTime(DateTime? latestRestorableDateTime) =>
      _$this._latestRestorableDateTime = latestRestorableDateTime;

  _i2.PointIntimeRecoveryStatus? _pointIntimeRecoveryStatus;
  _i2.PointIntimeRecoveryStatus? get pointIntimeRecoveryStatus =>
      _$this._pointIntimeRecoveryStatus;
  set pointIntimeRecoveryStatus(
          _i2.PointIntimeRecoveryStatus? pointIntimeRecoveryStatus) =>
      _$this._pointIntimeRecoveryStatus = pointIntimeRecoveryStatus;

  PointIntimeRecoveryDescriptionBuilder() {
    PointIntimeRecoveryDescription._init(this);
  }

  PointIntimeRecoveryDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _earliestRestorableDateTime = $v.earliestRestorableDateTime;
      _latestRestorableDateTime = $v.latestRestorableDateTime;
      _pointIntimeRecoveryStatus = $v.pointIntimeRecoveryStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PointIntimeRecoveryDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PointIntimeRecoveryDescription;
  }

  @override
  void update(void Function(PointIntimeRecoveryDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PointIntimeRecoveryDescription build() => _build();

  _$PointIntimeRecoveryDescription _build() {
    final _$result = _$v ??
        new _$PointIntimeRecoveryDescription._(
            earliestRestorableDateTime: earliestRestorableDateTime,
            latestRestorableDateTime: latestRestorableDateTime,
            pointIntimeRecoveryStatus: pointIntimeRecoveryStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
