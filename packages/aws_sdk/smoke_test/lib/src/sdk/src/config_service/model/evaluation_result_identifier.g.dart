// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.evaluation_result_identifier;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EvaluationResultIdentifier extends EvaluationResultIdentifier {
  @override
  final _i2.EvaluationResultQualifier? evaluationResultQualifier;
  @override
  final DateTime? orderingTimestamp;

  factory _$EvaluationResultIdentifier(
          [void Function(EvaluationResultIdentifierBuilder)? updates]) =>
      (new EvaluationResultIdentifierBuilder()..update(updates))._build();

  _$EvaluationResultIdentifier._(
      {this.evaluationResultQualifier, this.orderingTimestamp})
      : super._();

  @override
  EvaluationResultIdentifier rebuild(
          void Function(EvaluationResultIdentifierBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvaluationResultIdentifierBuilder toBuilder() =>
      new EvaluationResultIdentifierBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EvaluationResultIdentifier &&
        evaluationResultQualifier == other.evaluationResultQualifier &&
        orderingTimestamp == other.orderingTimestamp;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, evaluationResultQualifier.hashCode),
        orderingTimestamp.hashCode));
  }
}

class EvaluationResultIdentifierBuilder
    implements
        Builder<EvaluationResultIdentifier, EvaluationResultIdentifierBuilder> {
  _$EvaluationResultIdentifier? _$v;

  _i2.EvaluationResultQualifierBuilder? _evaluationResultQualifier;
  _i2.EvaluationResultQualifierBuilder get evaluationResultQualifier =>
      _$this._evaluationResultQualifier ??=
          new _i2.EvaluationResultQualifierBuilder();
  set evaluationResultQualifier(
          _i2.EvaluationResultQualifierBuilder? evaluationResultQualifier) =>
      _$this._evaluationResultQualifier = evaluationResultQualifier;

  DateTime? _orderingTimestamp;
  DateTime? get orderingTimestamp => _$this._orderingTimestamp;
  set orderingTimestamp(DateTime? orderingTimestamp) =>
      _$this._orderingTimestamp = orderingTimestamp;

  EvaluationResultIdentifierBuilder() {
    EvaluationResultIdentifier._init(this);
  }

  EvaluationResultIdentifierBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evaluationResultQualifier = $v.evaluationResultQualifier?.toBuilder();
      _orderingTimestamp = $v.orderingTimestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EvaluationResultIdentifier other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EvaluationResultIdentifier;
  }

  @override
  void update(void Function(EvaluationResultIdentifierBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EvaluationResultIdentifier build() => _build();

  _$EvaluationResultIdentifier _build() {
    _$EvaluationResultIdentifier _$result;
    try {
      _$result = _$v ??
          new _$EvaluationResultIdentifier._(
              evaluationResultQualifier: _evaluationResultQualifier?.build(),
              orderingTimestamp: orderingTimestamp);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'evaluationResultQualifier';
        _evaluationResultQualifier?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EvaluationResultIdentifier', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
