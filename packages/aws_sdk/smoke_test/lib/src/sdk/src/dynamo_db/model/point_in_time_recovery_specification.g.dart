// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.point_in_time_recovery_specification;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PointInTimeRecoverySpecification
    extends PointInTimeRecoverySpecification {
  @override
  final bool pointInTimeRecoveryEnabled;

  factory _$PointInTimeRecoverySpecification(
          [void Function(PointInTimeRecoverySpecificationBuilder)? updates]) =>
      (new PointInTimeRecoverySpecificationBuilder()..update(updates))._build();

  _$PointInTimeRecoverySpecification._(
      {required this.pointInTimeRecoveryEnabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(pointInTimeRecoveryEnabled,
        r'PointInTimeRecoverySpecification', 'pointInTimeRecoveryEnabled');
  }

  @override
  PointInTimeRecoverySpecification rebuild(
          void Function(PointInTimeRecoverySpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PointInTimeRecoverySpecificationBuilder toBuilder() =>
      new PointInTimeRecoverySpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PointInTimeRecoverySpecification &&
        pointInTimeRecoveryEnabled == other.pointInTimeRecoveryEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pointInTimeRecoveryEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PointInTimeRecoverySpecificationBuilder
    implements
        Builder<PointInTimeRecoverySpecification,
            PointInTimeRecoverySpecificationBuilder> {
  _$PointInTimeRecoverySpecification? _$v;

  bool? _pointInTimeRecoveryEnabled;
  bool? get pointInTimeRecoveryEnabled => _$this._pointInTimeRecoveryEnabled;
  set pointInTimeRecoveryEnabled(bool? pointInTimeRecoveryEnabled) =>
      _$this._pointInTimeRecoveryEnabled = pointInTimeRecoveryEnabled;

  PointInTimeRecoverySpecificationBuilder() {
    PointInTimeRecoverySpecification._init(this);
  }

  PointInTimeRecoverySpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pointInTimeRecoveryEnabled = $v.pointInTimeRecoveryEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PointInTimeRecoverySpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PointInTimeRecoverySpecification;
  }

  @override
  void update(void Function(PointInTimeRecoverySpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PointInTimeRecoverySpecification build() => _build();

  _$PointInTimeRecoverySpecification _build() {
    final _$result = _$v ??
        new _$PointInTimeRecoverySpecification._(
            pointInTimeRecoveryEnabled: BuiltValueNullFieldError.checkNotNull(
                pointInTimeRecoveryEnabled,
                r'PointInTimeRecoverySpecification',
                'pointInTimeRecoveryEnabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
