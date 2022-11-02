// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_request_validators_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRequestValidatorsRequest extends GetRequestValidatorsRequest {
  @override
  final int? limit;
  @override
  final String? position;
  @override
  final String restApiId;

  factory _$GetRequestValidatorsRequest(
          [void Function(GetRequestValidatorsRequestBuilder)? updates]) =>
      (new GetRequestValidatorsRequestBuilder()..update(updates))._build();

  _$GetRequestValidatorsRequest._(
      {this.limit, this.position, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetRequestValidatorsRequest', 'restApiId');
  }

  @override
  GetRequestValidatorsRequest rebuild(
          void Function(GetRequestValidatorsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRequestValidatorsRequestBuilder toBuilder() =>
      new GetRequestValidatorsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRequestValidatorsRequest &&
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

class GetRequestValidatorsRequestBuilder
    implements
        Builder<GetRequestValidatorsRequest,
            GetRequestValidatorsRequestBuilder> {
  _$GetRequestValidatorsRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetRequestValidatorsRequestBuilder() {
    GetRequestValidatorsRequest._init(this);
  }

  GetRequestValidatorsRequestBuilder get _$this {
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
  void replace(GetRequestValidatorsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRequestValidatorsRequest;
  }

  @override
  void update(void Function(GetRequestValidatorsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRequestValidatorsRequest build() => _build();

  _$GetRequestValidatorsRequest _build() {
    final _$result = _$v ??
        new _$GetRequestValidatorsRequest._(
            limit: limit,
            position: position,
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetRequestValidatorsRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetRequestValidatorsRequestPayload
    extends GetRequestValidatorsRequestPayload {
  factory _$GetRequestValidatorsRequestPayload(
          [void Function(GetRequestValidatorsRequestPayloadBuilder)?
              updates]) =>
      (new GetRequestValidatorsRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetRequestValidatorsRequestPayload._() : super._();

  @override
  GetRequestValidatorsRequestPayload rebuild(
          void Function(GetRequestValidatorsRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRequestValidatorsRequestPayloadBuilder toBuilder() =>
      new GetRequestValidatorsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRequestValidatorsRequestPayload;
  }

  @override
  int get hashCode {
    return 487008614;
  }
}

class GetRequestValidatorsRequestPayloadBuilder
    implements
        Builder<GetRequestValidatorsRequestPayload,
            GetRequestValidatorsRequestPayloadBuilder> {
  _$GetRequestValidatorsRequestPayload? _$v;

  GetRequestValidatorsRequestPayloadBuilder() {
    GetRequestValidatorsRequestPayload._init(this);
  }

  @override
  void replace(GetRequestValidatorsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRequestValidatorsRequestPayload;
  }

  @override
  void update(
      void Function(GetRequestValidatorsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRequestValidatorsRequestPayload build() => _build();

  _$GetRequestValidatorsRequestPayload _build() {
    final _$result = _$v ?? new _$GetRequestValidatorsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
