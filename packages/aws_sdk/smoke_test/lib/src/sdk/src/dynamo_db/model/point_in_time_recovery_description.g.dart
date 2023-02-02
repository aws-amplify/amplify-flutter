// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.point_in_time_recovery_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PointInTimeRecoveryDescription extends PointInTimeRecoveryDescription {
  @override
  final DateTime? earliestRestorableDateTime;
  @override
  final DateTime? latestRestorableDateTime;
  @override
  final _i2.PointInTimeRecoveryStatus? pointInTimeRecoveryStatus;

  factory _$PointInTimeRecoveryDescription(
          [void Function(PointInTimeRecoveryDescriptionBuilder)? updates]) =>
      (new PointInTimeRecoveryDescriptionBuilder()..update(updates))._build();

  _$PointInTimeRecoveryDescription._(
      {this.earliestRestorableDateTime,
      this.latestRestorableDateTime,
      this.pointInTimeRecoveryStatus})
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
        earliestRestorableDateTime == other.earliestRestorableDateTime &&
        latestRestorableDateTime == other.latestRestorableDateTime &&
        pointInTimeRecoveryStatus == other.pointInTimeRecoveryStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, earliestRestorableDateTime.hashCode);
    _$hash = $jc(_$hash, latestRestorableDateTime.hashCode);
    _$hash = $jc(_$hash, pointInTimeRecoveryStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PointInTimeRecoveryDescriptionBuilder
    implements
        Builder<PointInTimeRecoveryDescription,
            PointInTimeRecoveryDescriptionBuilder> {
  _$PointInTimeRecoveryDescription? _$v;

  DateTime? _earliestRestorableDateTime;
  DateTime? get earliestRestorableDateTime =>
      _$this._earliestRestorableDateTime;
  set earliestRestorableDateTime(DateTime? earliestRestorableDateTime) =>
      _$this._earliestRestorableDateTime = earliestRestorableDateTime;

  DateTime? _latestRestorableDateTime;
  DateTime? get latestRestorableDateTime => _$this._latestRestorableDateTime;
  set latestRestorableDateTime(DateTime? latestRestorableDateTime) =>
      _$this._latestRestorableDateTime = latestRestorableDateTime;

  _i2.PointInTimeRecoveryStatus? _pointInTimeRecoveryStatus;
  _i2.PointInTimeRecoveryStatus? get pointInTimeRecoveryStatus =>
      _$this._pointInTimeRecoveryStatus;
  set pointInTimeRecoveryStatus(
          _i2.PointInTimeRecoveryStatus? pointInTimeRecoveryStatus) =>
      _$this._pointInTimeRecoveryStatus = pointInTimeRecoveryStatus;

  PointInTimeRecoveryDescriptionBuilder() {
    PointInTimeRecoveryDescription._init(this);
  }

  PointInTimeRecoveryDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _earliestRestorableDateTime = $v.earliestRestorableDateTime;
      _latestRestorableDateTime = $v.latestRestorableDateTime;
      _pointInTimeRecoveryStatus = $v.pointInTimeRecoveryStatus;
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
            earliestRestorableDateTime: earliestRestorableDateTime,
            latestRestorableDateTime: latestRestorableDateTime,
            pointInTimeRecoveryStatus: pointInTimeRecoveryStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
