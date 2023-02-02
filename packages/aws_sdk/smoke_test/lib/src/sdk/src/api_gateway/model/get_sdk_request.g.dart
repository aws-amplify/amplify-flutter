// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_sdk_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSdkRequest extends GetSdkRequest {
  @override
  final _i3.BuiltMap<String, String>? parameters;
  @override
  final String restApiId;
  @override
  final String sdkType;
  @override
  final String stageName;

  factory _$GetSdkRequest([void Function(GetSdkRequestBuilder)? updates]) =>
      (new GetSdkRequestBuilder()..update(updates))._build();

  _$GetSdkRequest._(
      {this.parameters,
      required this.restApiId,
      required this.sdkType,
      required this.stageName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetSdkRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(sdkType, r'GetSdkRequest', 'sdkType');
    BuiltValueNullFieldError.checkNotNull(
        stageName, r'GetSdkRequest', 'stageName');
  }

  @override
  GetSdkRequest rebuild(void Function(GetSdkRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSdkRequestBuilder toBuilder() => new GetSdkRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSdkRequest &&
        parameters == other.parameters &&
        restApiId == other.restApiId &&
        sdkType == other.sdkType &&
        stageName == other.stageName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, sdkType.hashCode);
    _$hash = $jc(_$hash, stageName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetSdkRequestBuilder
    implements Builder<GetSdkRequest, GetSdkRequestBuilder> {
  _$GetSdkRequest? _$v;

  _i3.MapBuilder<String, String>? _parameters;
  _i3.MapBuilder<String, String> get parameters =>
      _$this._parameters ??= new _i3.MapBuilder<String, String>();
  set parameters(_i3.MapBuilder<String, String>? parameters) =>
      _$this._parameters = parameters;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _sdkType;
  String? get sdkType => _$this._sdkType;
  set sdkType(String? sdkType) => _$this._sdkType = sdkType;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  GetSdkRequestBuilder() {
    GetSdkRequest._init(this);
  }

  GetSdkRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parameters = $v.parameters?.toBuilder();
      _restApiId = $v.restApiId;
      _sdkType = $v.sdkType;
      _stageName = $v.stageName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSdkRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSdkRequest;
  }

  @override
  void update(void Function(GetSdkRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSdkRequest build() => _build();

  _$GetSdkRequest _build() {
    _$GetSdkRequest _$result;
    try {
      _$result = _$v ??
          new _$GetSdkRequest._(
              parameters: _parameters?.build(),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'GetSdkRequest', 'restApiId'),
              sdkType: BuiltValueNullFieldError.checkNotNull(
                  sdkType, r'GetSdkRequest', 'sdkType'),
              stageName: BuiltValueNullFieldError.checkNotNull(
                  stageName, r'GetSdkRequest', 'stageName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetSdkRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetSdkRequestPayload extends GetSdkRequestPayload {
  factory _$GetSdkRequestPayload(
          [void Function(GetSdkRequestPayloadBuilder)? updates]) =>
      (new GetSdkRequestPayloadBuilder()..update(updates))._build();

  _$GetSdkRequestPayload._() : super._();

  @override
  GetSdkRequestPayload rebuild(
          void Function(GetSdkRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSdkRequestPayloadBuilder toBuilder() =>
      new GetSdkRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSdkRequestPayload;
  }

  @override
  int get hashCode {
    return 44652159;
  }
}

class GetSdkRequestPayloadBuilder
    implements Builder<GetSdkRequestPayload, GetSdkRequestPayloadBuilder> {
  _$GetSdkRequestPayload? _$v;

  GetSdkRequestPayloadBuilder() {
    GetSdkRequestPayload._init(this);
  }

  @override
  void replace(GetSdkRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSdkRequestPayload;
  }

  @override
  void update(void Function(GetSdkRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSdkRequestPayload build() => _build();

  _$GetSdkRequestPayload _build() {
    final _$result = _$v ?? new _$GetSdkRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
