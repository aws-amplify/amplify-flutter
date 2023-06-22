// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluation_result_qualifier.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EvaluationResultQualifier extends EvaluationResultQualifier {
  @override
  final String? configRuleName;
  @override
  final String? resourceType;
  @override
  final String? resourceId;
  @override
  final _i2.EvaluationMode? evaluationMode;

  factory _$EvaluationResultQualifier(
          [void Function(EvaluationResultQualifierBuilder)? updates]) =>
      (new EvaluationResultQualifierBuilder()..update(updates))._build();

  _$EvaluationResultQualifier._(
      {this.configRuleName,
      this.resourceType,
      this.resourceId,
      this.evaluationMode})
      : super._();

  @override
  EvaluationResultQualifier rebuild(
          void Function(EvaluationResultQualifierBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvaluationResultQualifierBuilder toBuilder() =>
      new EvaluationResultQualifierBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EvaluationResultQualifier &&
        configRuleName == other.configRuleName &&
        resourceType == other.resourceType &&
        resourceId == other.resourceId &&
        evaluationMode == other.evaluationMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, evaluationMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EvaluationResultQualifierBuilder
    implements
        Builder<EvaluationResultQualifier, EvaluationResultQualifierBuilder> {
  _$EvaluationResultQualifier? _$v;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  _i2.EvaluationMode? _evaluationMode;
  _i2.EvaluationMode? get evaluationMode => _$this._evaluationMode;
  set evaluationMode(_i2.EvaluationMode? evaluationMode) =>
      _$this._evaluationMode = evaluationMode;

  EvaluationResultQualifierBuilder() {
    EvaluationResultQualifier._init(this);
  }

  EvaluationResultQualifierBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _resourceType = $v.resourceType;
      _resourceId = $v.resourceId;
      _evaluationMode = $v.evaluationMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EvaluationResultQualifier other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EvaluationResultQualifier;
  }

  @override
  void update(void Function(EvaluationResultQualifierBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EvaluationResultQualifier build() => _build();

  _$EvaluationResultQualifier _build() {
    final _$result = _$v ??
        new _$EvaluationResultQualifier._(
            configRuleName: configRuleName,
            resourceType: resourceType,
            resourceId: resourceId,
            evaluationMode: evaluationMode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
