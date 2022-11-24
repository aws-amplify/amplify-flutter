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
    return $jf($jc(0, pointInTimeRecoveryEnabled.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
