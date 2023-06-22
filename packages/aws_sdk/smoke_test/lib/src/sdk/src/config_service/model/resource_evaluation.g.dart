// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_evaluation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceEvaluation extends ResourceEvaluation {
  @override
  final String? resourceEvaluationId;
  @override
  final _i2.EvaluationMode? evaluationMode;
  @override
  final DateTime? evaluationStartTimestamp;

  factory _$ResourceEvaluation(
          [void Function(ResourceEvaluationBuilder)? updates]) =>
      (new ResourceEvaluationBuilder()..update(updates))._build();

  _$ResourceEvaluation._(
      {this.resourceEvaluationId,
      this.evaluationMode,
      this.evaluationStartTimestamp})
      : super._();

  @override
  ResourceEvaluation rebuild(
          void Function(ResourceEvaluationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceEvaluationBuilder toBuilder() =>
      new ResourceEvaluationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceEvaluation &&
        resourceEvaluationId == other.resourceEvaluationId &&
        evaluationMode == other.evaluationMode &&
        evaluationStartTimestamp == other.evaluationStartTimestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceEvaluationId.hashCode);
    _$hash = $jc(_$hash, evaluationMode.hashCode);
    _$hash = $jc(_$hash, evaluationStartTimestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceEvaluationBuilder
    implements Builder<ResourceEvaluation, ResourceEvaluationBuilder> {
  _$ResourceEvaluation? _$v;

  String? _resourceEvaluationId;
  String? get resourceEvaluationId => _$this._resourceEvaluationId;
  set resourceEvaluationId(String? resourceEvaluationId) =>
      _$this._resourceEvaluationId = resourceEvaluationId;

  _i2.EvaluationMode? _evaluationMode;
  _i2.EvaluationMode? get evaluationMode => _$this._evaluationMode;
  set evaluationMode(_i2.EvaluationMode? evaluationMode) =>
      _$this._evaluationMode = evaluationMode;

  DateTime? _evaluationStartTimestamp;
  DateTime? get evaluationStartTimestamp => _$this._evaluationStartTimestamp;
  set evaluationStartTimestamp(DateTime? evaluationStartTimestamp) =>
      _$this._evaluationStartTimestamp = evaluationStartTimestamp;

  ResourceEvaluationBuilder() {
    ResourceEvaluation._init(this);
  }

  ResourceEvaluationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceEvaluationId = $v.resourceEvaluationId;
      _evaluationMode = $v.evaluationMode;
      _evaluationStartTimestamp = $v.evaluationStartTimestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceEvaluation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceEvaluation;
  }

  @override
  void update(void Function(ResourceEvaluationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceEvaluation build() => _build();

  _$ResourceEvaluation _build() {
    final _$result = _$v ??
        new _$ResourceEvaluation._(
            resourceEvaluationId: resourceEvaluationId,
            evaluationMode: evaluationMode,
            evaluationStartTimestamp: evaluationStartTimestamp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
