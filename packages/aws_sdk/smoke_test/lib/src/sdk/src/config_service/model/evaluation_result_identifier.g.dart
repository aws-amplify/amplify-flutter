// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluation_result_identifier.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EvaluationResultIdentifier extends EvaluationResultIdentifier {
  @override
  final _i2.EvaluationResultQualifier? evaluationResultQualifier;
  @override
  final DateTime? orderingTimestamp;
  @override
  final String? resourceEvaluationId;

  factory _$EvaluationResultIdentifier(
          [void Function(EvaluationResultIdentifierBuilder)? updates]) =>
      (new EvaluationResultIdentifierBuilder()..update(updates))._build();

  _$EvaluationResultIdentifier._(
      {this.evaluationResultQualifier,
      this.orderingTimestamp,
      this.resourceEvaluationId})
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
        orderingTimestamp == other.orderingTimestamp &&
        resourceEvaluationId == other.resourceEvaluationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, evaluationResultQualifier.hashCode);
    _$hash = $jc(_$hash, orderingTimestamp.hashCode);
    _$hash = $jc(_$hash, resourceEvaluationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

  String? _resourceEvaluationId;
  String? get resourceEvaluationId => _$this._resourceEvaluationId;
  set resourceEvaluationId(String? resourceEvaluationId) =>
      _$this._resourceEvaluationId = resourceEvaluationId;

  EvaluationResultIdentifierBuilder() {
    EvaluationResultIdentifier._init(this);
  }

  EvaluationResultIdentifierBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evaluationResultQualifier = $v.evaluationResultQualifier?.toBuilder();
      _orderingTimestamp = $v.orderingTimestamp;
      _resourceEvaluationId = $v.resourceEvaluationId;
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
              orderingTimestamp: orderingTimestamp,
              resourceEvaluationId: resourceEvaluationId);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
