// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.resource_specific_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceSpecificResult extends ResourceSpecificResult {
  @override
  final String evalResourceName;
  @override
  final _i2.PolicyEvaluationDecisionType evalResourceDecision;
  @override
  final _i5.BuiltList<_i3.Statement>? matchedStatements;
  @override
  final _i5.BuiltList<String>? missingContextValues;
  @override
  final _i5.BuiltMap<String, _i2.PolicyEvaluationDecisionType>?
      evalDecisionDetails;
  @override
  final _i4.PermissionsBoundaryDecisionDetail?
      permissionsBoundaryDecisionDetail;

  factory _$ResourceSpecificResult(
          [void Function(ResourceSpecificResultBuilder)? updates]) =>
      (new ResourceSpecificResultBuilder()..update(updates))._build();

  _$ResourceSpecificResult._(
      {required this.evalResourceName,
      required this.evalResourceDecision,
      this.matchedStatements,
      this.missingContextValues,
      this.evalDecisionDetails,
      this.permissionsBoundaryDecisionDetail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        evalResourceName, r'ResourceSpecificResult', 'evalResourceName');
    BuiltValueNullFieldError.checkNotNull(evalResourceDecision,
        r'ResourceSpecificResult', 'evalResourceDecision');
  }

  @override
  ResourceSpecificResult rebuild(
          void Function(ResourceSpecificResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceSpecificResultBuilder toBuilder() =>
      new ResourceSpecificResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceSpecificResult &&
        evalResourceName == other.evalResourceName &&
        evalResourceDecision == other.evalResourceDecision &&
        matchedStatements == other.matchedStatements &&
        missingContextValues == other.missingContextValues &&
        evalDecisionDetails == other.evalDecisionDetails &&
        permissionsBoundaryDecisionDetail ==
            other.permissionsBoundaryDecisionDetail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, evalResourceName.hashCode);
    _$hash = $jc(_$hash, evalResourceDecision.hashCode);
    _$hash = $jc(_$hash, matchedStatements.hashCode);
    _$hash = $jc(_$hash, missingContextValues.hashCode);
    _$hash = $jc(_$hash, evalDecisionDetails.hashCode);
    _$hash = $jc(_$hash, permissionsBoundaryDecisionDetail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceSpecificResultBuilder
    implements Builder<ResourceSpecificResult, ResourceSpecificResultBuilder> {
  _$ResourceSpecificResult? _$v;

  String? _evalResourceName;
  String? get evalResourceName => _$this._evalResourceName;
  set evalResourceName(String? evalResourceName) =>
      _$this._evalResourceName = evalResourceName;

  _i2.PolicyEvaluationDecisionType? _evalResourceDecision;
  _i2.PolicyEvaluationDecisionType? get evalResourceDecision =>
      _$this._evalResourceDecision;
  set evalResourceDecision(
          _i2.PolicyEvaluationDecisionType? evalResourceDecision) =>
      _$this._evalResourceDecision = evalResourceDecision;

  _i5.ListBuilder<_i3.Statement>? _matchedStatements;
  _i5.ListBuilder<_i3.Statement> get matchedStatements =>
      _$this._matchedStatements ??= new _i5.ListBuilder<_i3.Statement>();
  set matchedStatements(_i5.ListBuilder<_i3.Statement>? matchedStatements) =>
      _$this._matchedStatements = matchedStatements;

  _i5.ListBuilder<String>? _missingContextValues;
  _i5.ListBuilder<String> get missingContextValues =>
      _$this._missingContextValues ??= new _i5.ListBuilder<String>();
  set missingContextValues(_i5.ListBuilder<String>? missingContextValues) =>
      _$this._missingContextValues = missingContextValues;

  _i5.MapBuilder<String, _i2.PolicyEvaluationDecisionType>?
      _evalDecisionDetails;
  _i5.MapBuilder<String, _i2.PolicyEvaluationDecisionType>
      get evalDecisionDetails => _$this._evalDecisionDetails ??=
          new _i5.MapBuilder<String, _i2.PolicyEvaluationDecisionType>();
  set evalDecisionDetails(
          _i5.MapBuilder<String, _i2.PolicyEvaluationDecisionType>?
              evalDecisionDetails) =>
      _$this._evalDecisionDetails = evalDecisionDetails;

  _i4.PermissionsBoundaryDecisionDetailBuilder?
      _permissionsBoundaryDecisionDetail;
  _i4.PermissionsBoundaryDecisionDetailBuilder
      get permissionsBoundaryDecisionDetail =>
          _$this._permissionsBoundaryDecisionDetail ??=
              new _i4.PermissionsBoundaryDecisionDetailBuilder();
  set permissionsBoundaryDecisionDetail(
          _i4.PermissionsBoundaryDecisionDetailBuilder?
              permissionsBoundaryDecisionDetail) =>
      _$this._permissionsBoundaryDecisionDetail =
          permissionsBoundaryDecisionDetail;

  ResourceSpecificResultBuilder() {
    ResourceSpecificResult._init(this);
  }

  ResourceSpecificResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evalResourceName = $v.evalResourceName;
      _evalResourceDecision = $v.evalResourceDecision;
      _matchedStatements = $v.matchedStatements?.toBuilder();
      _missingContextValues = $v.missingContextValues?.toBuilder();
      _evalDecisionDetails = $v.evalDecisionDetails?.toBuilder();
      _permissionsBoundaryDecisionDetail =
          $v.permissionsBoundaryDecisionDetail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceSpecificResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceSpecificResult;
  }

  @override
  void update(void Function(ResourceSpecificResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceSpecificResult build() => _build();

  _$ResourceSpecificResult _build() {
    _$ResourceSpecificResult _$result;
    try {
      _$result = _$v ??
          new _$ResourceSpecificResult._(
              evalResourceName: BuiltValueNullFieldError.checkNotNull(
                  evalResourceName,
                  r'ResourceSpecificResult',
                  'evalResourceName'),
              evalResourceDecision: BuiltValueNullFieldError.checkNotNull(
                  evalResourceDecision,
                  r'ResourceSpecificResult',
                  'evalResourceDecision'),
              matchedStatements: _matchedStatements?.build(),
              missingContextValues: _missingContextValues?.build(),
              evalDecisionDetails: _evalDecisionDetails?.build(),
              permissionsBoundaryDecisionDetail:
                  _permissionsBoundaryDecisionDetail?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'matchedStatements';
        _matchedStatements?.build();
        _$failedField = 'missingContextValues';
        _missingContextValues?.build();
        _$failedField = 'evalDecisionDetails';
        _evalDecisionDetails?.build();
        _$failedField = 'permissionsBoundaryDecisionDetail';
        _permissionsBoundaryDecisionDetail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResourceSpecificResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
