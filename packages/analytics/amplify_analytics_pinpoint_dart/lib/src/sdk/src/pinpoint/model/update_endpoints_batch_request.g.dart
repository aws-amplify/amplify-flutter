// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.update_endpoints_batch_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateEndpointsBatchRequest extends UpdateEndpointsBatchRequest {
  @override
  final String applicationId;
  @override
  final _i2.EndpointBatchRequest endpointBatchRequest;

  factory _$UpdateEndpointsBatchRequest(
          [void Function(UpdateEndpointsBatchRequestBuilder)? updates]) =>
      (new UpdateEndpointsBatchRequestBuilder()..update(updates))._build();

  _$UpdateEndpointsBatchRequest._(
      {required this.applicationId, required this.endpointBatchRequest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        applicationId, r'UpdateEndpointsBatchRequest', 'applicationId');
    BuiltValueNullFieldError.checkNotNull(endpointBatchRequest,
        r'UpdateEndpointsBatchRequest', 'endpointBatchRequest');
  }

  @override
  UpdateEndpointsBatchRequest rebuild(
          void Function(UpdateEndpointsBatchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateEndpointsBatchRequestBuilder toBuilder() =>
      new UpdateEndpointsBatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateEndpointsBatchRequest &&
        applicationId == other.applicationId &&
        endpointBatchRequest == other.endpointBatchRequest;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, applicationId.hashCode), endpointBatchRequest.hashCode));
  }
}

class UpdateEndpointsBatchRequestBuilder
    implements
        Builder<UpdateEndpointsBatchRequest,
            UpdateEndpointsBatchRequestBuilder> {
  _$UpdateEndpointsBatchRequest? _$v;

  String? _applicationId;
  String? get applicationId => _$this._applicationId;
  set applicationId(String? applicationId) =>
      _$this._applicationId = applicationId;

  _i2.EndpointBatchRequestBuilder? _endpointBatchRequest;
  _i2.EndpointBatchRequestBuilder get endpointBatchRequest =>
      _$this._endpointBatchRequest ??= new _i2.EndpointBatchRequestBuilder();
  set endpointBatchRequest(
          _i2.EndpointBatchRequestBuilder? endpointBatchRequest) =>
      _$this._endpointBatchRequest = endpointBatchRequest;

  UpdateEndpointsBatchRequestBuilder() {
    UpdateEndpointsBatchRequest._init(this);
  }

  UpdateEndpointsBatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationId = $v.applicationId;
      _endpointBatchRequest = $v.endpointBatchRequest.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateEndpointsBatchRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateEndpointsBatchRequest;
  }

  @override
  void update(void Function(UpdateEndpointsBatchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateEndpointsBatchRequest build() => _build();

  _$UpdateEndpointsBatchRequest _build() {
    _$UpdateEndpointsBatchRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateEndpointsBatchRequest._(
              applicationId: BuiltValueNullFieldError.checkNotNull(
                  applicationId,
                  r'UpdateEndpointsBatchRequest',
                  'applicationId'),
              endpointBatchRequest: endpointBatchRequest.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'endpointBatchRequest';
        endpointBatchRequest.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateEndpointsBatchRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
