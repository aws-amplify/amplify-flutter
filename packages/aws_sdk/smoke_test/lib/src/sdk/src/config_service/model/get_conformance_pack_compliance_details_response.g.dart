// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_conformance_pack_compliance_details_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetConformancePackComplianceDetailsResponse
    extends GetConformancePackComplianceDetailsResponse {
  @override
  final String conformancePackName;
  @override
  final _i3.BuiltList<_i2.ConformancePackEvaluationResult>?
      conformancePackRuleEvaluationResults;
  @override
  final String? nextToken;

  factory _$GetConformancePackComplianceDetailsResponse(
          [void Function(GetConformancePackComplianceDetailsResponseBuilder)?
              updates]) =>
      (new GetConformancePackComplianceDetailsResponseBuilder()
            ..update(updates))
          ._build();

  _$GetConformancePackComplianceDetailsResponse._(
      {required this.conformancePackName,
      this.conformancePackRuleEvaluationResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(conformancePackName,
        r'GetConformancePackComplianceDetailsResponse', 'conformancePackName');
  }

  @override
  GetConformancePackComplianceDetailsResponse rebuild(
          void Function(GetConformancePackComplianceDetailsResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetConformancePackComplianceDetailsResponseBuilder toBuilder() =>
      new GetConformancePackComplianceDetailsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetConformancePackComplianceDetailsResponse &&
        conformancePackName == other.conformancePackName &&
        conformancePackRuleEvaluationResults ==
            other.conformancePackRuleEvaluationResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, conformancePackName.hashCode),
            conformancePackRuleEvaluationResults.hashCode),
        nextToken.hashCode));
  }
}

class GetConformancePackComplianceDetailsResponseBuilder
    implements
        Builder<GetConformancePackComplianceDetailsResponse,
            GetConformancePackComplianceDetailsResponseBuilder> {
  _$GetConformancePackComplianceDetailsResponse? _$v;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  _i3.ListBuilder<_i2.ConformancePackEvaluationResult>?
      _conformancePackRuleEvaluationResults;
  _i3.ListBuilder<_i2.ConformancePackEvaluationResult>
      get conformancePackRuleEvaluationResults =>
          _$this._conformancePackRuleEvaluationResults ??=
              new _i3.ListBuilder<_i2.ConformancePackEvaluationResult>();
  set conformancePackRuleEvaluationResults(
          _i3.ListBuilder<_i2.ConformancePackEvaluationResult>?
              conformancePackRuleEvaluationResults) =>
      _$this._conformancePackRuleEvaluationResults =
          conformancePackRuleEvaluationResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetConformancePackComplianceDetailsResponseBuilder() {
    GetConformancePackComplianceDetailsResponse._init(this);
  }

  GetConformancePackComplianceDetailsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackName = $v.conformancePackName;
      _conformancePackRuleEvaluationResults =
          $v.conformancePackRuleEvaluationResults?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetConformancePackComplianceDetailsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetConformancePackComplianceDetailsResponse;
  }

  @override
  void update(
      void Function(GetConformancePackComplianceDetailsResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetConformancePackComplianceDetailsResponse build() => _build();

  _$GetConformancePackComplianceDetailsResponse _build() {
    _$GetConformancePackComplianceDetailsResponse _$result;
    try {
      _$result = _$v ??
          new _$GetConformancePackComplianceDetailsResponse._(
              conformancePackName: BuiltValueNullFieldError.checkNotNull(
                  conformancePackName,
                  r'GetConformancePackComplianceDetailsResponse',
                  'conformancePackName'),
              conformancePackRuleEvaluationResults:
                  _conformancePackRuleEvaluationResults?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conformancePackRuleEvaluationResults';
        _conformancePackRuleEvaluationResults?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetConformancePackComplianceDetailsResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
