// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.update_endpoint_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateEndpointRequest extends UpdateEndpointRequest {
  @override
  final String applicationId;
  @override
  final String endpointId;
  @override
  final _i2.EndpointRequest endpointRequest;

  factory _$UpdateEndpointRequest(
          [void Function(UpdateEndpointRequestBuilder)? updates]) =>
      (new UpdateEndpointRequestBuilder()..update(updates))._build();

  _$UpdateEndpointRequest._(
      {required this.applicationId,
      required this.endpointId,
      required this.endpointRequest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        applicationId, r'UpdateEndpointRequest', 'applicationId');
    BuiltValueNullFieldError.checkNotNull(
        endpointId, r'UpdateEndpointRequest', 'endpointId');
    BuiltValueNullFieldError.checkNotNull(
        endpointRequest, r'UpdateEndpointRequest', 'endpointRequest');
  }

  @override
  UpdateEndpointRequest rebuild(
          void Function(UpdateEndpointRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateEndpointRequestBuilder toBuilder() =>
      new UpdateEndpointRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateEndpointRequest &&
        applicationId == other.applicationId &&
        endpointId == other.endpointId &&
        endpointRequest == other.endpointRequest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, applicationId.hashCode);
    _$hash = $jc(_$hash, endpointId.hashCode);
    _$hash = $jc(_$hash, endpointRequest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateEndpointRequestBuilder
    implements Builder<UpdateEndpointRequest, UpdateEndpointRequestBuilder> {
  _$UpdateEndpointRequest? _$v;

  String? _applicationId;
  String? get applicationId => _$this._applicationId;
  set applicationId(String? applicationId) =>
      _$this._applicationId = applicationId;

  String? _endpointId;
  String? get endpointId => _$this._endpointId;
  set endpointId(String? endpointId) => _$this._endpointId = endpointId;

  _i2.EndpointRequestBuilder? _endpointRequest;
  _i2.EndpointRequestBuilder get endpointRequest =>
      _$this._endpointRequest ??= new _i2.EndpointRequestBuilder();
  set endpointRequest(_i2.EndpointRequestBuilder? endpointRequest) =>
      _$this._endpointRequest = endpointRequest;

  UpdateEndpointRequestBuilder() {
    UpdateEndpointRequest._init(this);
  }

  UpdateEndpointRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationId = $v.applicationId;
      _endpointId = $v.endpointId;
      _endpointRequest = $v.endpointRequest.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateEndpointRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateEndpointRequest;
  }

  @override
  void update(void Function(UpdateEndpointRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateEndpointRequest build() => _build();

  _$UpdateEndpointRequest _build() {
    _$UpdateEndpointRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateEndpointRequest._(
              applicationId: BuiltValueNullFieldError.checkNotNull(
                  applicationId, r'UpdateEndpointRequest', 'applicationId'),
              endpointId: BuiltValueNullFieldError.checkNotNull(
                  endpointId, r'UpdateEndpointRequest', 'endpointId'),
              endpointRequest: endpointRequest.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'endpointRequest';
        endpointRequest.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateEndpointRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
