// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.external_evaluation;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalEvaluation extends ExternalEvaluation {
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

  factory _$ExternalEvaluation(
          [void Function(ExternalEvaluationBuilder)? updates]) =>
      (new ExternalEvaluationBuilder()..update(updates))._build();

  _$ExternalEvaluation._(
      {required this.complianceResourceType,
      required this.complianceResourceId,
      required this.complianceType,
      this.annotation,
      required this.orderingTimestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(complianceResourceType,
        r'ExternalEvaluation', 'complianceResourceType');
    BuiltValueNullFieldError.checkNotNull(
        complianceResourceId, r'ExternalEvaluation', 'complianceResourceId');
    BuiltValueNullFieldError.checkNotNull(
        complianceType, r'ExternalEvaluation', 'complianceType');
    BuiltValueNullFieldError.checkNotNull(
        orderingTimestamp, r'ExternalEvaluation', 'orderingTimestamp');
  }

  @override
  ExternalEvaluation rebuild(
          void Function(ExternalEvaluationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalEvaluationBuilder toBuilder() =>
      new ExternalEvaluationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalEvaluation &&
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

class ExternalEvaluationBuilder
    implements Builder<ExternalEvaluation, ExternalEvaluationBuilder> {
  _$ExternalEvaluation? _$v;

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

  ExternalEvaluationBuilder() {
    ExternalEvaluation._init(this);
  }

  ExternalEvaluationBuilder get _$this {
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
  void replace(ExternalEvaluation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExternalEvaluation;
  }

  @override
  void update(void Function(ExternalEvaluationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalEvaluation build() => _build();

  _$ExternalEvaluation _build() {
    final _$result = _$v ??
        new _$ExternalEvaluation._(
            complianceResourceType: BuiltValueNullFieldError.checkNotNull(
                complianceResourceType,
                r'ExternalEvaluation',
                'complianceResourceType'),
            complianceResourceId: BuiltValueNullFieldError.checkNotNull(
                complianceResourceId,
                r'ExternalEvaluation',
                'complianceResourceId'),
            complianceType: BuiltValueNullFieldError.checkNotNull(
                complianceType, r'ExternalEvaluation', 'complianceType'),
            annotation: annotation,
            orderingTimestamp: BuiltValueNullFieldError.checkNotNull(
                orderingTimestamp, r'ExternalEvaluation', 'orderingTimestamp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
