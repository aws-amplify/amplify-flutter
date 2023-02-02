// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_compliance_details_by_resource_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetComplianceDetailsByResourceResponse
    extends GetComplianceDetailsByResourceResponse {
  @override
  final _i3.BuiltList<_i2.EvaluationResult>? evaluationResults;
  @override
  final String? nextToken;

  factory _$GetComplianceDetailsByResourceResponse(
          [void Function(GetComplianceDetailsByResourceResponseBuilder)?
              updates]) =>
      (new GetComplianceDetailsByResourceResponseBuilder()..update(updates))
          ._build();

  _$GetComplianceDetailsByResourceResponse._(
      {this.evaluationResults, this.nextToken})
      : super._();

  @override
  GetComplianceDetailsByResourceResponse rebuild(
          void Function(GetComplianceDetailsByResourceResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetComplianceDetailsByResourceResponseBuilder toBuilder() =>
      new GetComplianceDetailsByResourceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetComplianceDetailsByResourceResponse &&
        evaluationResults == other.evaluationResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, evaluationResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetComplianceDetailsByResourceResponseBuilder
    implements
        Builder<GetComplianceDetailsByResourceResponse,
            GetComplianceDetailsByResourceResponseBuilder> {
  _$GetComplianceDetailsByResourceResponse? _$v;

  _i3.ListBuilder<_i2.EvaluationResult>? _evaluationResults;
  _i3.ListBuilder<_i2.EvaluationResult> get evaluationResults =>
      _$this._evaluationResults ??= new _i3.ListBuilder<_i2.EvaluationResult>();
  set evaluationResults(
          _i3.ListBuilder<_i2.EvaluationResult>? evaluationResults) =>
      _$this._evaluationResults = evaluationResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetComplianceDetailsByResourceResponseBuilder() {
    GetComplianceDetailsByResourceResponse._init(this);
  }

  GetComplianceDetailsByResourceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evaluationResults = $v.evaluationResults?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetComplianceDetailsByResourceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetComplianceDetailsByResourceResponse;
  }

  @override
  void update(
      void Function(GetComplianceDetailsByResourceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetComplianceDetailsByResourceResponse build() => _build();

  _$GetComplianceDetailsByResourceResponse _build() {
    _$GetComplianceDetailsByResourceResponse _$result;
    try {
      _$result = _$v ??
          new _$GetComplianceDetailsByResourceResponse._(
              evaluationResults: _evaluationResults?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'evaluationResults';
        _evaluationResults?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetComplianceDetailsByResourceResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
