// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.evaluation;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Evaluation extends Evaluation {
  @override
  final String? annotation;
  @override
  final String complianceResourceId;
  @override
  final String complianceResourceType;
  @override
  final _i2.ComplianceType complianceType;
  @override
  final DateTime orderingTimestamp;

  factory _$Evaluation([void Function(EvaluationBuilder)? updates]) =>
      (new EvaluationBuilder()..update(updates))._build();

  _$Evaluation._(
      {this.annotation,
      required this.complianceResourceId,
      required this.complianceResourceType,
      required this.complianceType,
      required this.orderingTimestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        complianceResourceId, r'Evaluation', 'complianceResourceId');
    BuiltValueNullFieldError.checkNotNull(
        complianceResourceType, r'Evaluation', 'complianceResourceType');
    BuiltValueNullFieldError.checkNotNull(
        complianceType, r'Evaluation', 'complianceType');
    BuiltValueNullFieldError.checkNotNull(
        orderingTimestamp, r'Evaluation', 'orderingTimestamp');
  }

  @override
  Evaluation rebuild(void Function(EvaluationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvaluationBuilder toBuilder() => new EvaluationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Evaluation &&
        annotation == other.annotation &&
        complianceResourceId == other.complianceResourceId &&
        complianceResourceType == other.complianceResourceType &&
        complianceType == other.complianceType &&
        orderingTimestamp == other.orderingTimestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, annotation.hashCode), complianceResourceId.hashCode),
                complianceResourceType.hashCode),
            complianceType.hashCode),
        orderingTimestamp.hashCode));
  }
}

class EvaluationBuilder implements Builder<Evaluation, EvaluationBuilder> {
  _$Evaluation? _$v;

  String? _annotation;
  String? get annotation => _$this._annotation;
  set annotation(String? annotation) => _$this._annotation = annotation;

  String? _complianceResourceId;
  String? get complianceResourceId => _$this._complianceResourceId;
  set complianceResourceId(String? complianceResourceId) =>
      _$this._complianceResourceId = complianceResourceId;

  String? _complianceResourceType;
  String? get complianceResourceType => _$this._complianceResourceType;
  set complianceResourceType(String? complianceResourceType) =>
      _$this._complianceResourceType = complianceResourceType;

  _i2.ComplianceType? _complianceType;
  _i2.ComplianceType? get complianceType => _$this._complianceType;
  set complianceType(_i2.ComplianceType? complianceType) =>
      _$this._complianceType = complianceType;

  DateTime? _orderingTimestamp;
  DateTime? get orderingTimestamp => _$this._orderingTimestamp;
  set orderingTimestamp(DateTime? orderingTimestamp) =>
      _$this._orderingTimestamp = orderingTimestamp;

  EvaluationBuilder() {
    Evaluation._init(this);
  }

  EvaluationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _annotation = $v.annotation;
      _complianceResourceId = $v.complianceResourceId;
      _complianceResourceType = $v.complianceResourceType;
      _complianceType = $v.complianceType;
      _orderingTimestamp = $v.orderingTimestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Evaluation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Evaluation;
  }

  @override
  void update(void Function(EvaluationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Evaluation build() => _build();

  _$Evaluation _build() {
    final _$result = _$v ??
        new _$Evaluation._(
            annotation: annotation,
            complianceResourceId: BuiltValueNullFieldError.checkNotNull(
                complianceResourceId, r'Evaluation', 'complianceResourceId'),
            complianceResourceType: BuiltValueNullFieldError.checkNotNull(
                complianceResourceType,
                r'Evaluation',
                'complianceResourceType'),
            complianceType: BuiltValueNullFieldError.checkNotNull(
                complianceType, r'Evaluation', 'complianceType'),
            orderingTimestamp: BuiltValueNullFieldError.checkNotNull(
                orderingTimestamp, r'Evaluation', 'orderingTimestamp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
