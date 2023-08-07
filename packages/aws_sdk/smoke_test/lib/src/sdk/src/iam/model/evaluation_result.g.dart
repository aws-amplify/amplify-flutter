// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EvaluationResult extends EvaluationResult {
  @override
  final String evalActionName;
  @override
  final String? evalResourceName;
  @override
  final PolicyEvaluationDecisionType evalDecision;
  @override
  final _i2.BuiltList<Statement>? matchedStatements;
  @override
  final _i2.BuiltList<String>? missingContextValues;
  @override
  final OrganizationsDecisionDetail? organizationsDecisionDetail;
  @override
  final PermissionsBoundaryDecisionDetail? permissionsBoundaryDecisionDetail;
  @override
  final _i2.BuiltMap<String, PolicyEvaluationDecisionType>? evalDecisionDetails;
  @override
  final _i2.BuiltList<ResourceSpecificResult>? resourceSpecificResults;

  factory _$EvaluationResult(
          [void Function(EvaluationResultBuilder)? updates]) =>
      (new EvaluationResultBuilder()..update(updates))._build();

  _$EvaluationResult._(
      {required this.evalActionName,
      this.evalResourceName,
      required this.evalDecision,
      this.matchedStatements,
      this.missingContextValues,
      this.organizationsDecisionDetail,
      this.permissionsBoundaryDecisionDetail,
      this.evalDecisionDetails,
      this.resourceSpecificResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        evalActionName, r'EvaluationResult', 'evalActionName');
    BuiltValueNullFieldError.checkNotNull(
        evalDecision, r'EvaluationResult', 'evalDecision');
  }

  @override
  EvaluationResult rebuild(void Function(EvaluationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvaluationResultBuilder toBuilder() =>
      new EvaluationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EvaluationResult &&
        evalActionName == other.evalActionName &&
        evalResourceName == other.evalResourceName &&
        evalDecision == other.evalDecision &&
        matchedStatements == other.matchedStatements &&
        missingContextValues == other.missingContextValues &&
        organizationsDecisionDetail == other.organizationsDecisionDetail &&
        permissionsBoundaryDecisionDetail ==
            other.permissionsBoundaryDecisionDetail &&
        evalDecisionDetails == other.evalDecisionDetails &&
        resourceSpecificResults == other.resourceSpecificResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, evalActionName.hashCode);
    _$hash = $jc(_$hash, evalResourceName.hashCode);
    _$hash = $jc(_$hash, evalDecision.hashCode);
    _$hash = $jc(_$hash, matchedStatements.hashCode);
    _$hash = $jc(_$hash, missingContextValues.hashCode);
    _$hash = $jc(_$hash, organizationsDecisionDetail.hashCode);
    _$hash = $jc(_$hash, permissionsBoundaryDecisionDetail.hashCode);
    _$hash = $jc(_$hash, evalDecisionDetails.hashCode);
    _$hash = $jc(_$hash, resourceSpecificResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EvaluationResultBuilder
    implements Builder<EvaluationResult, EvaluationResultBuilder> {
  _$EvaluationResult? _$v;

  String? _evalActionName;
  String? get evalActionName => _$this._evalActionName;
  set evalActionName(String? evalActionName) =>
      _$this._evalActionName = evalActionName;

  String? _evalResourceName;
  String? get evalResourceName => _$this._evalResourceName;
  set evalResourceName(String? evalResourceName) =>
      _$this._evalResourceName = evalResourceName;

  PolicyEvaluationDecisionType? _evalDecision;
  PolicyEvaluationDecisionType? get evalDecision => _$this._evalDecision;
  set evalDecision(PolicyEvaluationDecisionType? evalDecision) =>
      _$this._evalDecision = evalDecision;

  _i2.ListBuilder<Statement>? _matchedStatements;
  _i2.ListBuilder<Statement> get matchedStatements =>
      _$this._matchedStatements ??= new _i2.ListBuilder<Statement>();
  set matchedStatements(_i2.ListBuilder<Statement>? matchedStatements) =>
      _$this._matchedStatements = matchedStatements;

  _i2.ListBuilder<String>? _missingContextValues;
  _i2.ListBuilder<String> get missingContextValues =>
      _$this._missingContextValues ??= new _i2.ListBuilder<String>();
  set missingContextValues(_i2.ListBuilder<String>? missingContextValues) =>
      _$this._missingContextValues = missingContextValues;

  OrganizationsDecisionDetailBuilder? _organizationsDecisionDetail;
  OrganizationsDecisionDetailBuilder get organizationsDecisionDetail =>
      _$this._organizationsDecisionDetail ??=
          new OrganizationsDecisionDetailBuilder();
  set organizationsDecisionDetail(
          OrganizationsDecisionDetailBuilder? organizationsDecisionDetail) =>
      _$this._organizationsDecisionDetail = organizationsDecisionDetail;

  PermissionsBoundaryDecisionDetailBuilder? _permissionsBoundaryDecisionDetail;
  PermissionsBoundaryDecisionDetailBuilder
      get permissionsBoundaryDecisionDetail =>
          _$this._permissionsBoundaryDecisionDetail ??=
              new PermissionsBoundaryDecisionDetailBuilder();
  set permissionsBoundaryDecisionDetail(
          PermissionsBoundaryDecisionDetailBuilder?
              permissionsBoundaryDecisionDetail) =>
      _$this._permissionsBoundaryDecisionDetail =
          permissionsBoundaryDecisionDetail;

  _i2.MapBuilder<String, PolicyEvaluationDecisionType>? _evalDecisionDetails;
  _i2.MapBuilder<String, PolicyEvaluationDecisionType>
      get evalDecisionDetails => _$this._evalDecisionDetails ??=
          new _i2.MapBuilder<String, PolicyEvaluationDecisionType>();
  set evalDecisionDetails(
          _i2.MapBuilder<String, PolicyEvaluationDecisionType>?
              evalDecisionDetails) =>
      _$this._evalDecisionDetails = evalDecisionDetails;

  _i2.ListBuilder<ResourceSpecificResult>? _resourceSpecificResults;
  _i2.ListBuilder<ResourceSpecificResult> get resourceSpecificResults =>
      _$this._resourceSpecificResults ??=
          new _i2.ListBuilder<ResourceSpecificResult>();
  set resourceSpecificResults(
          _i2.ListBuilder<ResourceSpecificResult>? resourceSpecificResults) =>
      _$this._resourceSpecificResults = resourceSpecificResults;

  EvaluationResultBuilder();

  EvaluationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evalActionName = $v.evalActionName;
      _evalResourceName = $v.evalResourceName;
      _evalDecision = $v.evalDecision;
      _matchedStatements = $v.matchedStatements?.toBuilder();
      _missingContextValues = $v.missingContextValues?.toBuilder();
      _organizationsDecisionDetail =
          $v.organizationsDecisionDetail?.toBuilder();
      _permissionsBoundaryDecisionDetail =
          $v.permissionsBoundaryDecisionDetail?.toBuilder();
      _evalDecisionDetails = $v.evalDecisionDetails?.toBuilder();
      _resourceSpecificResults = $v.resourceSpecificResults?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EvaluationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EvaluationResult;
  }

  @override
  void update(void Function(EvaluationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EvaluationResult build() => _build();

  _$EvaluationResult _build() {
    _$EvaluationResult _$result;
    try {
      _$result = _$v ??
          new _$EvaluationResult._(
              evalActionName: BuiltValueNullFieldError.checkNotNull(
                  evalActionName, r'EvaluationResult', 'evalActionName'),
              evalResourceName: evalResourceName,
              evalDecision: BuiltValueNullFieldError.checkNotNull(
                  evalDecision, r'EvaluationResult', 'evalDecision'),
              matchedStatements: _matchedStatements?.build(),
              missingContextValues: _missingContextValues?.build(),
              organizationsDecisionDetail:
                  _organizationsDecisionDetail?.build(),
              permissionsBoundaryDecisionDetail:
                  _permissionsBoundaryDecisionDetail?.build(),
              evalDecisionDetails: _evalDecisionDetails?.build(),
              resourceSpecificResults: _resourceSpecificResults?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'matchedStatements';
        _matchedStatements?.build();
        _$failedField = 'missingContextValues';
        _missingContextValues?.build();
        _$failedField = 'organizationsDecisionDetail';
        _organizationsDecisionDetail?.build();
        _$failedField = 'permissionsBoundaryDecisionDetail';
        _permissionsBoundaryDecisionDetail?.build();
        _$failedField = 'evalDecisionDetails';
        _evalDecisionDetails?.build();
        _$failedField = 'resourceSpecificResults';
        _resourceSpecificResults?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EvaluationResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
