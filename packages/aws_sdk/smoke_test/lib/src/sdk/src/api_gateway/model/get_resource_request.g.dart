// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_resource_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetResourceRequest extends GetResourceRequest {
  @override
  final _i3.BuiltList<String>? embed;
  @override
  final String resourceId;
  @override
  final String restApiId;

  factory _$GetResourceRequest(
          [void Function(GetResourceRequestBuilder)? updates]) =>
      (new GetResourceRequestBuilder()..update(updates))._build();

  _$GetResourceRequest._(
      {this.embed, required this.resourceId, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'GetResourceRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetResourceRequest', 'restApiId');
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
        embed == other.embed &&
        resourceId == other.resourceId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, embed.hashCode), resourceId.hashCode), restApiId.hashCode));
  }
}

class GetResourceRequestBuilder
    implements Builder<GetResourceRequest, GetResourceRequestBuilder> {
  _$GetResourceRequest? _$v;

  _i3.ListBuilder<String>? _embed;
  _i3.ListBuilder<String> get embed =>
      _$this._embed ??= new _i3.ListBuilder<String>();
  set embed(_i3.ListBuilder<String>? embed) => _$this._embed = embed;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetResourceRequestBuilder() {
    GetResourceRequest._init(this);
  }

  GetResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _embed = $v.embed?.toBuilder();
      _resourceId = $v.resourceId;
      _restApiId = $v.restApiId;
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
              embed: _embed?.build(),
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'GetResourceRequest', 'resourceId'),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'GetResourceRequest', 'restApiId'));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
