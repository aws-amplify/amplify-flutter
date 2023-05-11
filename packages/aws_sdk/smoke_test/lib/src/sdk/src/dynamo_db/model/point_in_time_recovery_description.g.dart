// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.point_in_time_recovery_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PointInTimeRecoveryDescription extends PointInTimeRecoveryDescription {
  @override
  final _i2.PointInTimeRecoveryStatus? pointInTimeRecoveryStatus;
  @override
  final DateTime? earliestRestorableDateTime;
  @override
  final DateTime? latestRestorableDateTime;

  factory _$PointInTimeRecoveryDescription(
          [void Function(PointInTimeRecoveryDescriptionBuilder)? updates]) =>
      (new PointInTimeRecoveryDescriptionBuilder()..update(updates))._build();

  _$PointInTimeRecoveryDescription._(
      {this.pointInTimeRecoveryStatus,
      this.earliestRestorableDateTime,
      this.latestRestorableDateTime})
      : super._();

  @override
  PointInTimeRecoveryDescription rebuild(
          void Function(PointInTimeRecoveryDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PointInTimeRecoveryDescriptionBuilder toBuilder() =>
      new PointInTimeRecoveryDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PointInTimeRecoveryDescription &&
        pointInTimeRecoveryStatus == other.pointInTimeRecoveryStatus &&
        earliestRestorableDateTime == other.earliestRestorableDateTime &&
        latestRestorableDateTime == other.latestRestorableDateTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pointInTimeRecoveryStatus.hashCode);
    _$hash = $jc(_$hash, earliestRestorableDateTime.hashCode);
    _$hash = $jc(_$hash, latestRestorableDateTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PointInTimeRecoveryDescriptionBuilder
    implements
        Builder<PointInTimeRecoveryDescription,
            PointInTimeRecoveryDescriptionBuilder> {
  _$PointInTimeRecoveryDescription? _$v;

  _i2.PointInTimeRecoveryStatus? _pointInTimeRecoveryStatus;
  _i2.PointInTimeRecoveryStatus? get pointInTimeRecoveryStatus =>
      _$this._pointInTimeRecoveryStatus;
  set pointInTimeRecoveryStatus(
          _i2.PointInTimeRecoveryStatus? pointInTimeRecoveryStatus) =>
      _$this._pointInTimeRecoveryStatus = pointInTimeRecoveryStatus;

  DateTime? _earliestRestorableDateTime;
  DateTime? get earliestRestorableDateTime =>
      _$this._earliestRestorableDateTime;
  set earliestRestorableDateTime(DateTime? earliestRestorableDateTime) =>
      _$this._earliestRestorableDateTime = earliestRestorableDateTime;

  DateTime? _latestRestorableDateTime;
  DateTime? get latestRestorableDateTime => _$this._latestRestorableDateTime;
  set latestRestorableDateTime(DateTime? latestRestorableDateTime) =>
      _$this._latestRestorableDateTime = latestRestorableDateTime;

  PointInTimeRecoveryDescriptionBuilder() {
    PointInTimeRecoveryDescription._init(this);
  }

  PointInTimeRecoveryDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pointInTimeRecoveryStatus = $v.pointInTimeRecoveryStatus;
      _earliestRestorableDateTime = $v.earliestRestorableDateTime;
      _latestRestorableDateTime = $v.latestRestorableDateTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PointInTimeRecoveryDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PointInTimeRecoveryDescription;
  }

  @override
  void update(void Function(PointInTimeRecoveryDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PointInTimeRecoveryDescription build() => _build();

  _$PointInTimeRecoveryDescription _build() {
    final _$result = _$v ??
        new _$PointInTimeRecoveryDescription._(
            pointInTimeRecoveryStatus: pointInTimeRecoveryStatus,
            earliestRestorableDateTime: earliestRestorableDateTime,
            latestRestorableDateTime: latestRestorableDateTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
