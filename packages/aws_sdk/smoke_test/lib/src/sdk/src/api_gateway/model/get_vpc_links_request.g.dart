// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_vpc_links_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVpcLinksRequest extends GetVpcLinksRequest {
  @override
  final int? limit;
  @override
  final String? position;

  factory _$GetVpcLinksRequest(
          [void Function(GetVpcLinksRequestBuilder)? updates]) =>
      (new GetVpcLinksRequestBuilder()..update(updates))._build();

  _$GetVpcLinksRequest._({this.limit, this.position}) : super._();

  @override
  GetVpcLinksRequest rebuild(
          void Function(GetVpcLinksRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVpcLinksRequestBuilder toBuilder() =>
      new GetVpcLinksRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVpcLinksRequest &&
        limit == other.limit &&
        position == other.position;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, limit.hashCode), position.hashCode));
  }
}

class GetVpcLinksRequestBuilder
    implements Builder<GetVpcLinksRequest, GetVpcLinksRequestBuilder> {
  _$GetVpcLinksRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  GetVpcLinksRequestBuilder() {
    GetVpcLinksRequest._init(this);
  }

  GetVpcLinksRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVpcLinksRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVpcLinksRequest;
  }

  @override
  void update(void Function(GetVpcLinksRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVpcLinksRequest build() => _build();

  _$GetVpcLinksRequest _build() {
    final _$result =
        _$v ?? new _$GetVpcLinksRequest._(limit: limit, position: position);
    replace(_$result);
    return _$result;
  }
}

class _$GetVpcLinksRequestPayload extends GetVpcLinksRequestPayload {
  factory _$GetVpcLinksRequestPayload(
          [void Function(GetVpcLinksRequestPayloadBuilder)? updates]) =>
      (new GetVpcLinksRequestPayloadBuilder()..update(updates))._build();

  _$GetVpcLinksRequestPayload._() : super._();

  @override
  GetVpcLinksRequestPayload rebuild(
          void Function(GetVpcLinksRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVpcLinksRequestPayloadBuilder toBuilder() =>
      new GetVpcLinksRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVpcLinksRequestPayload;
  }

  @override
  int get hashCode {
    return 589447365;
  }
}

class GetVpcLinksRequestPayloadBuilder
    implements
        Builder<GetVpcLinksRequestPayload, GetVpcLinksRequestPayloadBuilder> {
  _$GetVpcLinksRequestPayload? _$v;

  GetVpcLinksRequestPayloadBuilder() {
    GetVpcLinksRequestPayload._init(this);
  }

  @override
  void replace(GetVpcLinksRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVpcLinksRequestPayload;
  }

  @override
  void update(void Function(GetVpcLinksRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVpcLinksRequestPayload build() => _build();

  _$GetVpcLinksRequestPayload _build() {
    final _$result = _$v ?? new _$GetVpcLinksRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
