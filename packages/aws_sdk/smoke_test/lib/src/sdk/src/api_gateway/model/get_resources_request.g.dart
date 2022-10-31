// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_resources_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetResourcesRequest extends GetResourcesRequest {
  @override
  final _i3.BuiltList<String>? embed;
  @override
  final int? limit;
  @override
  final String? position;
  @override
  final String restApiId;

  factory _$GetResourcesRequest(
          [void Function(GetResourcesRequestBuilder)? updates]) =>
      (new GetResourcesRequestBuilder()..update(updates))._build();

  _$GetResourcesRequest._(
      {this.embed, this.limit, this.position, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetResourcesRequest', 'restApiId');
  }

  @override
  GetResourcesRequest rebuild(
          void Function(GetResourcesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetResourcesRequestBuilder toBuilder() =>
      new GetResourcesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetResourcesRequest &&
        embed == other.embed &&
        limit == other.limit &&
        position == other.position &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, embed.hashCode), limit.hashCode), position.hashCode),
        restApiId.hashCode));
  }
}

class GetResourcesRequestBuilder
    implements Builder<GetResourcesRequest, GetResourcesRequestBuilder> {
  _$GetResourcesRequest? _$v;

  _i3.ListBuilder<String>? _embed;
  _i3.ListBuilder<String> get embed =>
      _$this._embed ??= new _i3.ListBuilder<String>();
  set embed(_i3.ListBuilder<String>? embed) => _$this._embed = embed;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetResourcesRequestBuilder() {
    GetResourcesRequest._init(this);
  }

  GetResourcesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _embed = $v.embed?.toBuilder();
      _limit = $v.limit;
      _position = $v.position;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetResourcesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetResourcesRequest;
  }

  @override
  void update(void Function(GetResourcesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetResourcesRequest build() => _build();

  _$GetResourcesRequest _build() {
    _$GetResourcesRequest _$result;
    try {
      _$result = _$v ??
          new _$GetResourcesRequest._(
              embed: _embed?.build(),
              limit: limit,
              position: position,
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'GetResourcesRequest', 'restApiId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'embed';
        _embed?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetResourcesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetResourcesRequestPayload extends GetResourcesRequestPayload {
  factory _$GetResourcesRequestPayload(
          [void Function(GetResourcesRequestPayloadBuilder)? updates]) =>
      (new GetResourcesRequestPayloadBuilder()..update(updates))._build();

  _$GetResourcesRequestPayload._() : super._();

  @override
  GetResourcesRequestPayload rebuild(
          void Function(GetResourcesRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetResourcesRequestPayloadBuilder toBuilder() =>
      new GetResourcesRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetResourcesRequestPayload;
  }

  @override
  int get hashCode {
    return 231148410;
  }
}

class GetResourcesRequestPayloadBuilder
    implements
        Builder<GetResourcesRequestPayload, GetResourcesRequestPayloadBuilder> {
  _$GetResourcesRequestPayload? _$v;

  GetResourcesRequestPayloadBuilder() {
    GetResourcesRequestPayload._init(this);
  }

  @override
  void replace(GetResourcesRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetResourcesRequestPayload;
  }

  @override
  void update(void Function(GetResourcesRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetResourcesRequestPayload build() => _build();

  _$GetResourcesRequestPayload _build() {
    final _$result = _$v ?? new _$GetResourcesRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
