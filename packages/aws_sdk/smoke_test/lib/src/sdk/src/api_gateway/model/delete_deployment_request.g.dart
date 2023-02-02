// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_deployment_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteDeploymentRequest extends DeleteDeploymentRequest {
  @override
  final String deploymentId;
  @override
  final String restApiId;

  factory _$DeleteDeploymentRequest(
          [void Function(DeleteDeploymentRequestBuilder)? updates]) =>
      (new DeleteDeploymentRequestBuilder()..update(updates))._build();

  _$DeleteDeploymentRequest._(
      {required this.deploymentId, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deploymentId, r'DeleteDeploymentRequest', 'deploymentId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteDeploymentRequest', 'restApiId');
  }

  @override
  DeleteDeploymentRequest rebuild(
          void Function(DeleteDeploymentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteDeploymentRequestBuilder toBuilder() =>
      new DeleteDeploymentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteDeploymentRequest &&
        deploymentId == other.deploymentId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deploymentId.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteDeploymentRequestBuilder
    implements
        Builder<DeleteDeploymentRequest, DeleteDeploymentRequestBuilder> {
  _$DeleteDeploymentRequest? _$v;

  String? _deploymentId;
  String? get deploymentId => _$this._deploymentId;
  set deploymentId(String? deploymentId) => _$this._deploymentId = deploymentId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  DeleteDeploymentRequestBuilder() {
    DeleteDeploymentRequest._init(this);
  }

  DeleteDeploymentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deploymentId = $v.deploymentId;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteDeploymentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteDeploymentRequest;
  }

  @override
  void update(void Function(DeleteDeploymentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteDeploymentRequest build() => _build();

  _$DeleteDeploymentRequest _build() {
    final _$result = _$v ??
        new _$DeleteDeploymentRequest._(
            deploymentId: BuiltValueNullFieldError.checkNotNull(
                deploymentId, r'DeleteDeploymentRequest', 'deploymentId'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteDeploymentRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteDeploymentRequestPayload extends DeleteDeploymentRequestPayload {
  factory _$DeleteDeploymentRequestPayload(
          [void Function(DeleteDeploymentRequestPayloadBuilder)? updates]) =>
      (new DeleteDeploymentRequestPayloadBuilder()..update(updates))._build();

  _$DeleteDeploymentRequestPayload._() : super._();

  @override
  DeleteDeploymentRequestPayload rebuild(
          void Function(DeleteDeploymentRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteDeploymentRequestPayloadBuilder toBuilder() =>
      new DeleteDeploymentRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteDeploymentRequestPayload;
  }

  @override
  int get hashCode {
    return 204124965;
  }
}

class DeleteDeploymentRequestPayloadBuilder
    implements
        Builder<DeleteDeploymentRequestPayload,
            DeleteDeploymentRequestPayloadBuilder> {
  _$DeleteDeploymentRequestPayload? _$v;

  DeleteDeploymentRequestPayloadBuilder() {
    DeleteDeploymentRequestPayload._init(this);
  }

  @override
  void replace(DeleteDeploymentRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteDeploymentRequestPayload;
  }

  @override
  void update(void Function(DeleteDeploymentRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteDeploymentRequestPayload build() => _build();

  _$DeleteDeploymentRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteDeploymentRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
