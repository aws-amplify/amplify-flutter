// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_stages_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetStagesRequest extends GetStagesRequest {
  @override
  final String restApiId;
  @override
  final String? deploymentId;

  factory _$GetStagesRequest(
          [void Function(GetStagesRequestBuilder)? updates]) =>
      (new GetStagesRequestBuilder()..update(updates))._build();

  _$GetStagesRequest._({required this.restApiId, this.deploymentId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetStagesRequest', 'restApiId');
  }

  @override
  GetStagesRequest rebuild(void Function(GetStagesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetStagesRequestBuilder toBuilder() =>
      new GetStagesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetStagesRequest &&
        restApiId == other.restApiId &&
        deploymentId == other.deploymentId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, deploymentId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetStagesRequestBuilder
    implements Builder<GetStagesRequest, GetStagesRequestBuilder> {
  _$GetStagesRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _deploymentId;
  String? get deploymentId => _$this._deploymentId;
  set deploymentId(String? deploymentId) => _$this._deploymentId = deploymentId;

  GetStagesRequestBuilder() {
    GetStagesRequest._init(this);
  }

  GetStagesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _deploymentId = $v.deploymentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetStagesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetStagesRequest;
  }

  @override
  void update(void Function(GetStagesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetStagesRequest build() => _build();

  _$GetStagesRequest _build() {
    final _$result = _$v ??
        new _$GetStagesRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetStagesRequest', 'restApiId'),
            deploymentId: deploymentId);
    replace(_$result);
    return _$result;
  }
}

class _$GetStagesRequestPayload extends GetStagesRequestPayload {
  factory _$GetStagesRequestPayload(
          [void Function(GetStagesRequestPayloadBuilder)? updates]) =>
      (new GetStagesRequestPayloadBuilder()..update(updates))._build();

  _$GetStagesRequestPayload._() : super._();

  @override
  GetStagesRequestPayload rebuild(
          void Function(GetStagesRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetStagesRequestPayloadBuilder toBuilder() =>
      new GetStagesRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetStagesRequestPayload;
  }

  @override
  int get hashCode {
    return 355885968;
  }
}

class GetStagesRequestPayloadBuilder
    implements
        Builder<GetStagesRequestPayload, GetStagesRequestPayloadBuilder> {
  _$GetStagesRequestPayload? _$v;

  GetStagesRequestPayloadBuilder() {
    GetStagesRequestPayload._init(this);
  }

  @override
  void replace(GetStagesRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetStagesRequestPayload;
  }

  @override
  void update(void Function(GetStagesRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetStagesRequestPayload build() => _build();

  _$GetStagesRequestPayload _build() {
    final _$result = _$v ?? new _$GetStagesRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
