// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_resource_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetResourceRequest extends GetResourceRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;
  @override
  final _i3.BuiltList<String>? embed;

  factory _$GetResourceRequest(
          [void Function(GetResourceRequestBuilder)? updates]) =>
      (new GetResourceRequestBuilder()..update(updates))._build();

  _$GetResourceRequest._(
      {required this.restApiId, required this.resourceId, this.embed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetResourceRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'GetResourceRequest', 'resourceId');
  }

  @override
  GetResourceRequest rebuild(
          void Function(GetResourceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetResourceRequestBuilder toBuilder() =>
      new GetResourceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetResourceRequest &&
        restApiId == other.restApiId &&
        resourceId == other.resourceId &&
        embed == other.embed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, embed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetResourceRequestBuilder
    implements Builder<GetResourceRequest, GetResourceRequestBuilder> {
  _$GetResourceRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  _i3.ListBuilder<String>? _embed;
  _i3.ListBuilder<String> get embed =>
      _$this._embed ??= new _i3.ListBuilder<String>();
  set embed(_i3.ListBuilder<String>? embed) => _$this._embed = embed;

  GetResourceRequestBuilder() {
    GetResourceRequest._init(this);
  }

  GetResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _resourceId = $v.resourceId;
      _embed = $v.embed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetResourceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetResourceRequest;
  }

  @override
  void update(void Function(GetResourceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetResourceRequest build() => _build();

  _$GetResourceRequest _build() {
    _$GetResourceRequest _$result;
    try {
      _$result = _$v ??
          new _$GetResourceRequest._(
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'GetResourceRequest', 'restApiId'),
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'GetResourceRequest', 'resourceId'),
              embed: _embed?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'embed';
        _embed?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetResourceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetResourceRequestPayload extends GetResourceRequestPayload {
  factory _$GetResourceRequestPayload(
          [void Function(GetResourceRequestPayloadBuilder)? updates]) =>
      (new GetResourceRequestPayloadBuilder()..update(updates))._build();

  _$GetResourceRequestPayload._() : super._();

  @override
  GetResourceRequestPayload rebuild(
          void Function(GetResourceRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetResourceRequestPayloadBuilder toBuilder() =>
      new GetResourceRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetResourceRequestPayload;
  }

  @override
  int get hashCode {
    return 568556815;
  }
}

class GetResourceRequestPayloadBuilder
    implements
        Builder<GetResourceRequestPayload, GetResourceRequestPayloadBuilder> {
  _$GetResourceRequestPayload? _$v;

  GetResourceRequestPayloadBuilder() {
    GetResourceRequestPayload._init(this);
  }

  @override
  void replace(GetResourceRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetResourceRequestPayload;
  }

  @override
  void update(void Function(GetResourceRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetResourceRequestPayload build() => _build();

  _$GetResourceRequestPayload _build() {
    final _$result = _$v ?? new _$GetResourceRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
