// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_resource_evaluation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartResourceEvaluationRequest extends StartResourceEvaluationRequest {
  @override
  final _i3.ResourceDetails resourceDetails;
  @override
  final _i4.EvaluationContext? evaluationContext;
  @override
  final _i5.EvaluationMode evaluationMode;
  @override
  final int evaluationTimeout;
  @override
  final String? clientToken;

  factory _$StartResourceEvaluationRequest(
          [void Function(StartResourceEvaluationRequestBuilder)? updates]) =>
      (new StartResourceEvaluationRequestBuilder()..update(updates))._build();

  _$StartResourceEvaluationRequest._(
      {required this.resourceDetails,
      this.evaluationContext,
      required this.evaluationMode,
      required this.evaluationTimeout,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceDetails, r'StartResourceEvaluationRequest', 'resourceDetails');
    BuiltValueNullFieldError.checkNotNull(
        evaluationMode, r'StartResourceEvaluationRequest', 'evaluationMode');
    BuiltValueNullFieldError.checkNotNull(evaluationTimeout,
        r'StartResourceEvaluationRequest', 'evaluationTimeout');
  }

  @override
  StartResourceEvaluationRequest rebuild(
          void Function(StartResourceEvaluationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartResourceEvaluationRequestBuilder toBuilder() =>
      new StartResourceEvaluationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartResourceEvaluationRequest &&
        resourceDetails == other.resourceDetails &&
        evaluationContext == other.evaluationContext &&
        evaluationMode == other.evaluationMode &&
        evaluationTimeout == other.evaluationTimeout &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceDetails.hashCode);
    _$hash = $jc(_$hash, evaluationContext.hashCode);
    _$hash = $jc(_$hash, evaluationMode.hashCode);
    _$hash = $jc(_$hash, evaluationTimeout.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StartResourceEvaluationRequestBuilder
    implements
        Builder<StartResourceEvaluationRequest,
            StartResourceEvaluationRequestBuilder> {
  _$StartResourceEvaluationRequest? _$v;

  _i3.ResourceDetailsBuilder? _resourceDetails;
  _i3.ResourceDetailsBuilder get resourceDetails =>
      _$this._resourceDetails ??= new _i3.ResourceDetailsBuilder();
  set resourceDetails(_i3.ResourceDetailsBuilder? resourceDetails) =>
      _$this._resourceDetails = resourceDetails;

  _i4.EvaluationContextBuilder? _evaluationContext;
  _i4.EvaluationContextBuilder get evaluationContext =>
      _$this._evaluationContext ??= new _i4.EvaluationContextBuilder();
  set evaluationContext(_i4.EvaluationContextBuilder? evaluationContext) =>
      _$this._evaluationContext = evaluationContext;

  _i5.EvaluationMode? _evaluationMode;
  _i5.EvaluationMode? get evaluationMode => _$this._evaluationMode;
  set evaluationMode(_i5.EvaluationMode? evaluationMode) =>
      _$this._evaluationMode = evaluationMode;

  int? _evaluationTimeout;
  int? get evaluationTimeout => _$this._evaluationTimeout;
  set evaluationTimeout(int? evaluationTimeout) =>
      _$this._evaluationTimeout = evaluationTimeout;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  StartResourceEvaluationRequestBuilder() {
    StartResourceEvaluationRequest._init(this);
  }

  StartResourceEvaluationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceDetails = $v.resourceDetails.toBuilder();
      _evaluationContext = $v.evaluationContext?.toBuilder();
      _evaluationMode = $v.evaluationMode;
      _evaluationTimeout = $v.evaluationTimeout;
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartResourceEvaluationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartResourceEvaluationRequest;
  }

  @override
  void update(void Function(StartResourceEvaluationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartResourceEvaluationRequest build() => _build();

  _$StartResourceEvaluationRequest _build() {
    _$StartResourceEvaluationRequest _$result;
    try {
      _$result = _$v ??
          new _$StartResourceEvaluationRequest._(
              resourceDetails: resourceDetails.build(),
              evaluationContext: _evaluationContext?.build(),
              evaluationMode: BuiltValueNullFieldError.checkNotNull(
                  evaluationMode,
                  r'StartResourceEvaluationRequest',
                  'evaluationMode'),
              evaluationTimeout: BuiltValueNullFieldError.checkNotNull(
                  evaluationTimeout,
                  r'StartResourceEvaluationRequest',
                  'evaluationTimeout'),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceDetails';
        resourceDetails.build();
        _$failedField = 'evaluationContext';
        _evaluationContext?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StartResourceEvaluationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
