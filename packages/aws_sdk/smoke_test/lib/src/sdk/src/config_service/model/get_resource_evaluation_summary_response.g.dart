// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_resource_evaluation_summary_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetResourceEvaluationSummaryResponse
    extends GetResourceEvaluationSummaryResponse {
  @override
  final String? resourceEvaluationId;
  @override
  final _i2.EvaluationMode? evaluationMode;
  @override
  final _i3.EvaluationStatus? evaluationStatus;
  @override
  final DateTime? evaluationStartTimestamp;
  @override
  final _i4.ComplianceType? compliance;
  @override
  final _i5.EvaluationContext? evaluationContext;
  @override
  final _i6.ResourceDetails? resourceDetails;

  factory _$GetResourceEvaluationSummaryResponse(
          [void Function(GetResourceEvaluationSummaryResponseBuilder)?
              updates]) =>
      (new GetResourceEvaluationSummaryResponseBuilder()..update(updates))
          ._build();

  _$GetResourceEvaluationSummaryResponse._(
      {this.resourceEvaluationId,
      this.evaluationMode,
      this.evaluationStatus,
      this.evaluationStartTimestamp,
      this.compliance,
      this.evaluationContext,
      this.resourceDetails})
      : super._();

  @override
  GetResourceEvaluationSummaryResponse rebuild(
          void Function(GetResourceEvaluationSummaryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetResourceEvaluationSummaryResponseBuilder toBuilder() =>
      new GetResourceEvaluationSummaryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetResourceEvaluationSummaryResponse &&
        resourceEvaluationId == other.resourceEvaluationId &&
        evaluationMode == other.evaluationMode &&
        evaluationStatus == other.evaluationStatus &&
        evaluationStartTimestamp == other.evaluationStartTimestamp &&
        compliance == other.compliance &&
        evaluationContext == other.evaluationContext &&
        resourceDetails == other.resourceDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceEvaluationId.hashCode);
    _$hash = $jc(_$hash, evaluationMode.hashCode);
    _$hash = $jc(_$hash, evaluationStatus.hashCode);
    _$hash = $jc(_$hash, evaluationStartTimestamp.hashCode);
    _$hash = $jc(_$hash, compliance.hashCode);
    _$hash = $jc(_$hash, evaluationContext.hashCode);
    _$hash = $jc(_$hash, resourceDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetResourceEvaluationSummaryResponseBuilder
    implements
        Builder<GetResourceEvaluationSummaryResponse,
            GetResourceEvaluationSummaryResponseBuilder> {
  _$GetResourceEvaluationSummaryResponse? _$v;

  String? _resourceEvaluationId;
  String? get resourceEvaluationId => _$this._resourceEvaluationId;
  set resourceEvaluationId(String? resourceEvaluationId) =>
      _$this._resourceEvaluationId = resourceEvaluationId;

  _i2.EvaluationMode? _evaluationMode;
  _i2.EvaluationMode? get evaluationMode => _$this._evaluationMode;
  set evaluationMode(_i2.EvaluationMode? evaluationMode) =>
      _$this._evaluationMode = evaluationMode;

  _i3.EvaluationStatusBuilder? _evaluationStatus;
  _i3.EvaluationStatusBuilder get evaluationStatus =>
      _$this._evaluationStatus ??= new _i3.EvaluationStatusBuilder();
  set evaluationStatus(_i3.EvaluationStatusBuilder? evaluationStatus) =>
      _$this._evaluationStatus = evaluationStatus;

  DateTime? _evaluationStartTimestamp;
  DateTime? get evaluationStartTimestamp => _$this._evaluationStartTimestamp;
  set evaluationStartTimestamp(DateTime? evaluationStartTimestamp) =>
      _$this._evaluationStartTimestamp = evaluationStartTimestamp;

  _i4.ComplianceType? _compliance;
  _i4.ComplianceType? get compliance => _$this._compliance;
  set compliance(_i4.ComplianceType? compliance) =>
      _$this._compliance = compliance;

  _i5.EvaluationContextBuilder? _evaluationContext;
  _i5.EvaluationContextBuilder get evaluationContext =>
      _$this._evaluationContext ??= new _i5.EvaluationContextBuilder();
  set evaluationContext(_i5.EvaluationContextBuilder? evaluationContext) =>
      _$this._evaluationContext = evaluationContext;

  _i6.ResourceDetailsBuilder? _resourceDetails;
  _i6.ResourceDetailsBuilder get resourceDetails =>
      _$this._resourceDetails ??= new _i6.ResourceDetailsBuilder();
  set resourceDetails(_i6.ResourceDetailsBuilder? resourceDetails) =>
      _$this._resourceDetails = resourceDetails;

  GetResourceEvaluationSummaryResponseBuilder() {
    GetResourceEvaluationSummaryResponse._init(this);
  }

  GetResourceEvaluationSummaryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceEvaluationId = $v.resourceEvaluationId;
      _evaluationMode = $v.evaluationMode;
      _evaluationStatus = $v.evaluationStatus?.toBuilder();
      _evaluationStartTimestamp = $v.evaluationStartTimestamp;
      _compliance = $v.compliance;
      _evaluationContext = $v.evaluationContext?.toBuilder();
      _resourceDetails = $v.resourceDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetResourceEvaluationSummaryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetResourceEvaluationSummaryResponse;
  }

  @override
  void update(
      void Function(GetResourceEvaluationSummaryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetResourceEvaluationSummaryResponse build() => _build();

  _$GetResourceEvaluationSummaryResponse _build() {
    _$GetResourceEvaluationSummaryResponse _$result;
    try {
      _$result = _$v ??
          new _$GetResourceEvaluationSummaryResponse._(
              resourceEvaluationId: resourceEvaluationId,
              evaluationMode: evaluationMode,
              evaluationStatus: _evaluationStatus?.build(),
              evaluationStartTimestamp: evaluationStartTimestamp,
              compliance: compliance,
              evaluationContext: _evaluationContext?.build(),
              resourceDetails: _resourceDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'evaluationStatus';
        _evaluationStatus?.build();

        _$failedField = 'evaluationContext';
        _evaluationContext?.build();
        _$failedField = 'resourceDetails';
        _resourceDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetResourceEvaluationSummaryResponse',
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
