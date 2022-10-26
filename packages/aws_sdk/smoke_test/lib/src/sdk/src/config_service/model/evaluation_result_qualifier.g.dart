// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.evaluation_result_qualifier;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EvaluationResultQualifier extends EvaluationResultQualifier {
  @override
  final String? configRuleName;
  @override
  final String? resourceId;
  @override
  final String? resourceType;

  factory _$EvaluationResultQualifier(
          [void Function(EvaluationResultQualifierBuilder)? updates]) =>
      (new EvaluationResultQualifierBuilder()..update(updates))._build();

  _$EvaluationResultQualifier._(
      {this.configRuleName, this.resourceId, this.resourceType})
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
        resourceId == other.resourceId &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, configRuleName.hashCode), resourceId.hashCode),
        resourceType.hashCode));
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

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  EvaluationResultQualifierBuilder() {
    EvaluationResultQualifier._init(this);
  }

  EvaluationResultQualifierBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
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
            resourceId: resourceId,
            resourceType: resourceType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
