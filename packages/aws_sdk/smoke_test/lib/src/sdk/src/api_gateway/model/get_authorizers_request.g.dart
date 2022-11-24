// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_authorizers_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAuthorizersRequest extends GetAuthorizersRequest {
  @override
  final int? limit;
  @override
  final String? position;
  @override
  final String restApiId;

  factory _$GetAuthorizersRequest(
          [void Function(GetAuthorizersRequestBuilder)? updates]) =>
      (new GetAuthorizersRequestBuilder()..update(updates))._build();

  _$GetAuthorizersRequest._(
      {this.limit, this.position, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetAuthorizersRequest', 'restApiId');
  }

  @override
  GetAuthorizersRequest rebuild(
          void Function(GetAuthorizersRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAuthorizersRequestBuilder toBuilder() =>
      new GetAuthorizersRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAuthorizersRequest &&
        limit == other.limit &&
        position == other.position &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, limit.hashCode), position.hashCode), restApiId.hashCode));
  }
}

class GetAuthorizersRequestBuilder
    implements Builder<GetAuthorizersRequest, GetAuthorizersRequestBuilder> {
  _$GetAuthorizersRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetAuthorizersRequestBuilder() {
    GetAuthorizersRequest._init(this);
  }

  GetAuthorizersRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _position = $v.position;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAuthorizersRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAuthorizersRequest;
  }

  @override
  void update(void Function(GetAuthorizersRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAuthorizersRequest build() => _build();

  _$GetAuthorizersRequest _build() {
    final _$result = _$v ??
        new _$GetAuthorizersRequest._(
            limit: limit,
            position: position,
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetAuthorizersRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetAuthorizersRequestPayload extends GetAuthorizersRequestPayload {
  factory _$GetAuthorizersRequestPayload(
          [void Function(GetAuthorizersRequestPayloadBuilder)? updates]) =>
      (new GetAuthorizersRequestPayloadBuilder()..update(updates))._build();

  _$GetAuthorizersRequestPayload._() : super._();

  @override
  GetAuthorizersRequestPayload rebuild(
          void Function(GetAuthorizersRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAuthorizersRequestPayloadBuilder toBuilder() =>
      new GetAuthorizersRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAuthorizersRequestPayload;
  }

  @override
  int get hashCode {
    return 166630997;
  }
}

class GetAuthorizersRequestPayloadBuilder
    implements
        Builder<GetAuthorizersRequestPayload,
            GetAuthorizersRequestPayloadBuilder> {
  _$GetAuthorizersRequestPayload? _$v;

  GetAuthorizersRequestPayloadBuilder() {
    GetAuthorizersRequestPayload._init(this);
  }

  @override
  void replace(GetAuthorizersRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAuthorizersRequestPayload;
  }

  @override
  void update(void Function(GetAuthorizersRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAuthorizersRequestPayload build() => _build();

  _$GetAuthorizersRequestPayload _build() {
    final _$result = _$v ?? new _$GetAuthorizersRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
