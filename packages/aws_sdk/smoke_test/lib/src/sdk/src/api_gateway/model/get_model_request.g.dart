// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_model_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetModelRequest extends GetModelRequest {
  @override
  final String restApiId;
  @override
  final String modelName;
  @override
  final bool flatten;

  factory _$GetModelRequest([void Function(GetModelRequestBuilder)? updates]) =>
      (new GetModelRequestBuilder()..update(updates))._build();

  _$GetModelRequest._(
      {required this.restApiId, required this.modelName, required this.flatten})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetModelRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        modelName, r'GetModelRequest', 'modelName');
    BuiltValueNullFieldError.checkNotNull(
        flatten, r'GetModelRequest', 'flatten');
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
        restApiId == other.restApiId &&
        modelName == other.modelName &&
        flatten == other.flatten;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, modelName.hashCode);
    _$hash = $jc(_$hash, flatten.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetModelRequestBuilder
    implements Builder<GetModelRequest, GetModelRequestBuilder> {
  _$GetModelRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _modelName;
  String? get modelName => _$this._modelName;
  set modelName(String? modelName) => _$this._modelName = modelName;

  bool? _flatten;
  bool? get flatten => _$this._flatten;
  set flatten(bool? flatten) => _$this._flatten = flatten;

  GetModelRequestBuilder() {
    GetModelRequest._init(this);
  }

  GetModelRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _modelName = $v.modelName;
      _flatten = $v.flatten;
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
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetModelRequest', 'restApiId'),
            modelName: BuiltValueNullFieldError.checkNotNull(
                modelName, r'GetModelRequest', 'modelName'),
            flatten: BuiltValueNullFieldError.checkNotNull(
                flatten, r'GetModelRequest', 'flatten'));
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
