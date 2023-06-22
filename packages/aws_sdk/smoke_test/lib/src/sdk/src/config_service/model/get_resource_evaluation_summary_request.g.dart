// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_resource_evaluation_summary_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetResourceEvaluationSummaryRequest
    extends GetResourceEvaluationSummaryRequest {
  @override
  final String resourceEvaluationId;

  factory _$GetResourceEvaluationSummaryRequest(
          [void Function(GetResourceEvaluationSummaryRequestBuilder)?
              updates]) =>
      (new GetResourceEvaluationSummaryRequestBuilder()..update(updates))
          ._build();

  _$GetResourceEvaluationSummaryRequest._({required this.resourceEvaluationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(resourceEvaluationId,
        r'GetResourceEvaluationSummaryRequest', 'resourceEvaluationId');
  }

  @override
  GetResourceEvaluationSummaryRequest rebuild(
          void Function(GetResourceEvaluationSummaryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetResourceEvaluationSummaryRequestBuilder toBuilder() =>
      new GetResourceEvaluationSummaryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetResourceEvaluationSummaryRequest &&
        resourceEvaluationId == other.resourceEvaluationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceEvaluationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetResourceEvaluationSummaryRequestBuilder
    implements
        Builder<GetResourceEvaluationSummaryRequest,
            GetResourceEvaluationSummaryRequestBuilder> {
  _$GetResourceEvaluationSummaryRequest? _$v;

  String? _resourceEvaluationId;
  String? get resourceEvaluationId => _$this._resourceEvaluationId;
  set resourceEvaluationId(String? resourceEvaluationId) =>
      _$this._resourceEvaluationId = resourceEvaluationId;

  GetResourceEvaluationSummaryRequestBuilder() {
    GetResourceEvaluationSummaryRequest._init(this);
  }

  GetResourceEvaluationSummaryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceEvaluationId = $v.resourceEvaluationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetResourceEvaluationSummaryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetResourceEvaluationSummaryRequest;
  }

  @override
  void update(
      void Function(GetResourceEvaluationSummaryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetResourceEvaluationSummaryRequest build() => _build();

  _$GetResourceEvaluationSummaryRequest _build() {
    final _$result = _$v ??
        new _$GetResourceEvaluationSummaryRequest._(
            resourceEvaluationId: BuiltValueNullFieldError.checkNotNull(
                resourceEvaluationId,
                r'GetResourceEvaluationSummaryRequest',
                'resourceEvaluationId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
