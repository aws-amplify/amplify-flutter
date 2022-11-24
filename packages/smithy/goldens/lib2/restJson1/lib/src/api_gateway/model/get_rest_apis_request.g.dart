// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.api_gateway.model.get_rest_apis_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRestApisRequest extends GetRestApisRequest {
  @override
  final int? limit;
  @override
  final String? position;

  factory _$GetRestApisRequest(
          [void Function(GetRestApisRequestBuilder)? updates]) =>
      (new GetRestApisRequestBuilder()..update(updates))._build();

  _$GetRestApisRequest._({this.limit, this.position}) : super._();

  @override
  GetRestApisRequest rebuild(
          void Function(GetRestApisRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRestApisRequestBuilder toBuilder() =>
      new GetRestApisRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRestApisRequest &&
        limit == other.limit &&
        position == other.position;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, limit.hashCode), position.hashCode));
  }
}

class GetRestApisRequestBuilder
    implements Builder<GetRestApisRequest, GetRestApisRequestBuilder> {
  _$GetRestApisRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  GetRestApisRequestBuilder() {
    GetRestApisRequest._init(this);
  }

  GetRestApisRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRestApisRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRestApisRequest;
  }

  @override
  void update(void Function(GetRestApisRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRestApisRequest build() => _build();

  _$GetRestApisRequest _build() {
    final _$result =
        _$v ?? new _$GetRestApisRequest._(limit: limit, position: position);
    replace(_$result);
    return _$result;
  }
}

class _$GetRestApisRequestPayload extends GetRestApisRequestPayload {
  factory _$GetRestApisRequestPayload(
          [void Function(GetRestApisRequestPayloadBuilder)? updates]) =>
      (new GetRestApisRequestPayloadBuilder()..update(updates))._build();

  _$GetRestApisRequestPayload._() : super._();

  @override
  GetRestApisRequestPayload rebuild(
          void Function(GetRestApisRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRestApisRequestPayloadBuilder toBuilder() =>
      new GetRestApisRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRestApisRequestPayload;
  }

  @override
  int get hashCode {
    return 936572399;
  }
}

class GetRestApisRequestPayloadBuilder
    implements
        Builder<GetRestApisRequestPayload, GetRestApisRequestPayloadBuilder> {
  _$GetRestApisRequestPayload? _$v;

  GetRestApisRequestPayloadBuilder() {
    GetRestApisRequestPayload._init(this);
  }

  @override
  void replace(GetRestApisRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRestApisRequestPayload;
  }

  @override
  void update(void Function(GetRestApisRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRestApisRequestPayload build() => _build();

  _$GetRestApisRequestPayload _build() {
    final _$result = _$v ?? new _$GetRestApisRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
