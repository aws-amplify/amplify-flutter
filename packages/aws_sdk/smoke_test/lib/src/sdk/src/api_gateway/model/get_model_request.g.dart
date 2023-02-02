// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_model_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetModelRequest extends GetModelRequest {
  @override
  final bool? flatten;
  @override
  final String modelName;
  @override
  final String restApiId;

  factory _$GetModelRequest([void Function(GetModelRequestBuilder)? updates]) =>
      (new GetModelRequestBuilder()..update(updates))._build();

  _$GetModelRequest._(
      {this.flatten, required this.modelName, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        modelName, r'GetModelRequest', 'modelName');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetModelRequest', 'restApiId');
  }

  @override
  GetModelRequest rebuild(void Function(GetModelRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetModelRequestBuilder toBuilder() =>
      new GetModelRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetModelRequest &&
        flatten == other.flatten &&
        modelName == other.modelName &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, flatten.hashCode);
    _$hash = $jc(_$hash, modelName.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetModelRequestBuilder
    implements Builder<GetModelRequest, GetModelRequestBuilder> {
  _$GetModelRequest? _$v;

  bool? _flatten;
  bool? get flatten => _$this._flatten;
  set flatten(bool? flatten) => _$this._flatten = flatten;

  String? _modelName;
  String? get modelName => _$this._modelName;
  set modelName(String? modelName) => _$this._modelName = modelName;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetModelRequestBuilder() {
    GetModelRequest._init(this);
  }

  GetModelRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _flatten = $v.flatten;
      _modelName = $v.modelName;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetModelRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetModelRequest;
  }

  @override
  void update(void Function(GetModelRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetModelRequest build() => _build();

  _$GetModelRequest _build() {
    final _$result = _$v ??
        new _$GetModelRequest._(
            flatten: flatten,
            modelName: BuiltValueNullFieldError.checkNotNull(
                modelName, r'GetModelRequest', 'modelName'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetModelRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetModelRequestPayload extends GetModelRequestPayload {
  factory _$GetModelRequestPayload(
          [void Function(GetModelRequestPayloadBuilder)? updates]) =>
      (new GetModelRequestPayloadBuilder()..update(updates))._build();

  _$GetModelRequestPayload._() : super._();

  @override
  GetModelRequestPayload rebuild(
          void Function(GetModelRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetModelRequestPayloadBuilder toBuilder() =>
      new GetModelRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetModelRequestPayload;
  }

  @override
  int get hashCode {
    return 169724503;
  }
}

class GetModelRequestPayloadBuilder
    implements Builder<GetModelRequestPayload, GetModelRequestPayloadBuilder> {
  _$GetModelRequestPayload? _$v;

  GetModelRequestPayloadBuilder() {
    GetModelRequestPayload._init(this);
  }

  @override
  void replace(GetModelRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetModelRequestPayload;
  }

  @override
  void update(void Function(GetModelRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetModelRequestPayload build() => _build();

  _$GetModelRequestPayload _build() {
    final _$result = _$v ?? new _$GetModelRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
