// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.point_intime_recovery_specification;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PointIntimeRecoverySpecification
    extends PointIntimeRecoverySpecification {
  @override
  final bool pointIntimeRecoveryEnabled;

  factory _$PointIntimeRecoverySpecification(
          [void Function(PointIntimeRecoverySpecificationBuilder)? updates]) =>
      (new PointIntimeRecoverySpecificationBuilder()..update(updates))._build();

  _$PointIntimeRecoverySpecification._(
      {required this.pointIntimeRecoveryEnabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(pointIntimeRecoveryEnabled,
        r'PointIntimeRecoverySpecification', 'pointIntimeRecoveryEnabled');
  }

  @override
  PointIntimeRecoverySpecification rebuild(
          void Function(PointIntimeRecoverySpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PointIntimeRecoverySpecificationBuilder toBuilder() =>
      new PointIntimeRecoverySpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PointIntimeRecoverySpecification &&
        pointIntimeRecoveryEnabled == other.pointIntimeRecoveryEnabled;
  }

  @override
  int get hashCode {
    return $jf($jc(0, pointIntimeRecoveryEnabled.hashCode));
  }
}

class PointIntimeRecoverySpecificationBuilder
    implements
        Builder<PointIntimeRecoverySpecification,
            PointIntimeRecoverySpecificationBuilder> {
  _$PointIntimeRecoverySpecification? _$v;

  bool? _pointIntimeRecoveryEnabled;
  bool? get pointIntimeRecoveryEnabled => _$this._pointIntimeRecoveryEnabled;
  set pointIntimeRecoveryEnabled(bool? pointIntimeRecoveryEnabled) =>
      _$this._pointIntimeRecoveryEnabled = pointIntimeRecoveryEnabled;

  PointIntimeRecoverySpecificationBuilder() {
    PointIntimeRecoverySpecification._init(this);
  }

  PointIntimeRecoverySpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pointIntimeRecoveryEnabled = $v.pointIntimeRecoveryEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PointIntimeRecoverySpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PointIntimeRecoverySpecification;
  }

  @override
  void update(void Function(PointIntimeRecoverySpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PointIntimeRecoverySpecification build() => _build();

  _$PointIntimeRecoverySpecification _build() {
    final _$result = _$v ??
        new _$PointIntimeRecoverySpecification._(
            pointIntimeRecoveryEnabled: BuiltValueNullFieldError.checkNotNull(
                pointIntimeRecoveryEnabled,
                r'PointIntimeRecoverySpecification',
                'pointIntimeRecoveryEnabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
