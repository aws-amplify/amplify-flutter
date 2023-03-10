// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_model_template_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetModelTemplateRequest extends GetModelTemplateRequest {
  @override
  final String modelName;
  @override
  final String restApiId;

  factory _$GetModelTemplateRequest(
          [void Function(GetModelTemplateRequestBuilder)? updates]) =>
      (new GetModelTemplateRequestBuilder()..update(updates))._build();

  _$GetModelTemplateRequest._(
      {required this.modelName, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        modelName, r'GetModelTemplateRequest', 'modelName');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetModelTemplateRequest', 'restApiId');
  }

  @override
  GetModelTemplateRequest rebuild(
          void Function(GetModelTemplateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetModelTemplateRequestBuilder toBuilder() =>
      new GetModelTemplateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetModelTemplateRequest &&
        modelName == other.modelName &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, modelName.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetModelTemplateRequestBuilder
    implements
        Builder<GetModelTemplateRequest, GetModelTemplateRequestBuilder> {
  _$GetModelTemplateRequest? _$v;

  String? _modelName;
  String? get modelName => _$this._modelName;
  set modelName(String? modelName) => _$this._modelName = modelName;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetModelTemplateRequestBuilder() {
    GetModelTemplateRequest._init(this);
  }

  GetModelTemplateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _modelName = $v.modelName;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetModelTemplateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetModelTemplateRequest;
  }

  @override
  void update(void Function(GetModelTemplateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetModelTemplateRequest build() => _build();

  _$GetModelTemplateRequest _build() {
    final _$result = _$v ??
        new _$GetModelTemplateRequest._(
            modelName: BuiltValueNullFieldError.checkNotNull(
                modelName, r'GetModelTemplateRequest', 'modelName'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetModelTemplateRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetModelTemplateRequestPayload extends GetModelTemplateRequestPayload {
  factory _$GetModelTemplateRequestPayload(
          [void Function(GetModelTemplateRequestPayloadBuilder)? updates]) =>
      (new GetModelTemplateRequestPayloadBuilder()..update(updates))._build();

  _$GetModelTemplateRequestPayload._() : super._();

  @override
  GetModelTemplateRequestPayload rebuild(
          void Function(GetModelTemplateRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetModelTemplateRequestPayloadBuilder toBuilder() =>
      new GetModelTemplateRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetModelTemplateRequestPayload;
  }

  @override
  int get hashCode {
    return 986130674;
  }
}

class GetModelTemplateRequestPayloadBuilder
    implements
        Builder<GetModelTemplateRequestPayload,
            GetModelTemplateRequestPayloadBuilder> {
  _$GetModelTemplateRequestPayload? _$v;

  GetModelTemplateRequestPayloadBuilder() {
    GetModelTemplateRequestPayload._init(this);
  }

  @override
  void replace(GetModelTemplateRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetModelTemplateRequestPayload;
  }

  @override
  void update(void Function(GetModelTemplateRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetModelTemplateRequestPayload build() => _build();

  _$GetModelTemplateRequestPayload _build() {
    final _$result = _$v ?? new _$GetModelTemplateRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
