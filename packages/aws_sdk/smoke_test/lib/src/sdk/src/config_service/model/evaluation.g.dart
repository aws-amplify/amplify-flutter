// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.evaluation;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Evaluation extends Evaluation {
  @override
  final String complianceResourceType;
  @override
  final String complianceResourceId;
  @override
  final _i2.ComplianceType complianceType;
  @override
  final String? annotation;
  @override
  final DateTime orderingTimestamp;

  factory _$Evaluation([void Function(EvaluationBuilder)? updates]) =>
      (new EvaluationBuilder()..update(updates))._build();

  _$Evaluation._(
      {required this.complianceResourceType,
      required this.complianceResourceId,
      required this.complianceType,
      this.annotation,
      required this.orderingTimestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        complianceResourceType, r'Evaluation', 'complianceResourceType');
    BuiltValueNullFieldError.checkNotNull(
        complianceResourceId, r'Evaluation', 'complianceResourceId');
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
        complianceResourceType == other.complianceResourceType &&
        complianceResourceId == other.complianceResourceId &&
        complianceType == other.complianceType &&
        annotation == other.annotation &&
        orderingTimestamp == other.orderingTimestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceResourceType.hashCode);
    _$hash = $jc(_$hash, complianceResourceId.hashCode);
    _$hash = $jc(_$hash, complianceType.hashCode);
    _$hash = $jc(_$hash, annotation.hashCode);
    _$hash = $jc(_$hash, orderingTimestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EvaluationBuilder implements Builder<Evaluation, EvaluationBuilder> {
  _$Evaluation? _$v;

  String? _complianceResourceType;
  String? get complianceResourceType => _$this._complianceResourceType;
  set complianceResourceType(String? complianceResourceType) =>
      _$this._complianceResourceType = complianceResourceType;

  String? _complianceResourceId;
  String? get complianceResourceId => _$this._complianceResourceId;
  set complianceResourceId(String? complianceResourceId) =>
      _$this._complianceResourceId = complianceResourceId;

  _i2.ComplianceType? _complianceType;
  _i2.ComplianceType? get complianceType => _$this._complianceType;
  set complianceType(_i2.ComplianceType? complianceType) =>
      _$this._complianceType = complianceType;

  String? _annotation;
  String? get annotation => _$this._annotation;
  set annotation(String? annotation) => _$this._annotation = annotation;

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
      _complianceResourceType = $v.complianceResourceType;
      _complianceResourceId = $v.complianceResourceId;
      _complianceType = $v.complianceType;
      _annotation = $v.annotation;
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
            complianceResourceType: BuiltValueNullFieldError.checkNotNull(
                complianceResourceType,
                r'Evaluation',
                'complianceResourceType'),
            complianceResourceId: BuiltValueNullFieldError.checkNotNull(
                complianceResourceId, r'Evaluation', 'complianceResourceId'),
            complianceType: BuiltValueNullFieldError.checkNotNull(
                complianceType, r'Evaluation', 'complianceType'),
            annotation: annotation,
            orderingTimestamp: BuiltValueNullFieldError.checkNotNull(
                orderingTimestamp, r'Evaluation', 'orderingTimestamp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
