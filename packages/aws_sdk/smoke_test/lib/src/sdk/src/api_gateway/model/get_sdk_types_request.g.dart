// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_sdk_types_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSdkTypesRequest extends GetSdkTypesRequest {
  @override
  final int? limit;
  @override
  final String? position;

  factory _$GetSdkTypesRequest(
          [void Function(GetSdkTypesRequestBuilder)? updates]) =>
      (new GetSdkTypesRequestBuilder()..update(updates))._build();

  _$GetSdkTypesRequest._({this.limit, this.position}) : super._();

  @override
  GetSdkTypesRequest rebuild(
          void Function(GetSdkTypesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSdkTypesRequestBuilder toBuilder() =>
      new GetSdkTypesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSdkTypesRequest &&
        limit == other.limit &&
        position == other.position;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, limit.hashCode), position.hashCode));
  }
}

class GetSdkTypesRequestBuilder
    implements Builder<GetSdkTypesRequest, GetSdkTypesRequestBuilder> {
  _$GetSdkTypesRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  GetSdkTypesRequestBuilder() {
    GetSdkTypesRequest._init(this);
  }

  GetSdkTypesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSdkTypesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSdkTypesRequest;
  }

  @override
  void update(void Function(GetSdkTypesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSdkTypesRequest build() => _build();

  _$GetSdkTypesRequest _build() {
    final _$result =
        _$v ?? new _$GetSdkTypesRequest._(limit: limit, position: position);
    replace(_$result);
    return _$result;
  }
}

class _$GetSdkTypesRequestPayload extends GetSdkTypesRequestPayload {
  factory _$GetSdkTypesRequestPayload(
          [void Function(GetSdkTypesRequestPayloadBuilder)? updates]) =>
      (new GetSdkTypesRequestPayloadBuilder()..update(updates))._build();

  _$GetSdkTypesRequestPayload._() : super._();

  @override
  GetSdkTypesRequestPayload rebuild(
          void Function(GetSdkTypesRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSdkTypesRequestPayloadBuilder toBuilder() =>
      new GetSdkTypesRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSdkTypesRequestPayload;
  }

  @override
  int get hashCode {
    return 151760039;
  }
}

class GetSdkTypesRequestPayloadBuilder
    implements
        Builder<GetSdkTypesRequestPayload, GetSdkTypesRequestPayloadBuilder> {
  _$GetSdkTypesRequestPayload? _$v;

  GetSdkTypesRequestPayloadBuilder() {
    GetSdkTypesRequestPayload._init(this);
  }

  @override
  void replace(GetSdkTypesRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSdkTypesRequestPayload;
  }

  @override
  void update(void Function(GetSdkTypesRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSdkTypesRequestPayload build() => _build();

  _$GetSdkTypesRequestPayload _build() {
    final _$result = _$v ?? new _$GetSdkTypesRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
