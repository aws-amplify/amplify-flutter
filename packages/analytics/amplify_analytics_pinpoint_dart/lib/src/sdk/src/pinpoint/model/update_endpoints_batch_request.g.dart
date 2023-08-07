// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_endpoints_batch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateEndpointsBatchRequest extends UpdateEndpointsBatchRequest {
  @override
  final String applicationId;
  @override
  final EndpointBatchRequest endpointBatchRequest;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, applicationId.hashCode);
    _$hash = $jc(_$hash, endpointBatchRequest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

  EndpointBatchRequestBuilder? _endpointBatchRequest;
  EndpointBatchRequestBuilder get endpointBatchRequest =>
      _$this._endpointBatchRequest ??= new EndpointBatchRequestBuilder();
  set endpointBatchRequest(EndpointBatchRequestBuilder? endpointBatchRequest) =>
      _$this._endpointBatchRequest = endpointBatchRequest;

  UpdateEndpointsBatchRequestBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
