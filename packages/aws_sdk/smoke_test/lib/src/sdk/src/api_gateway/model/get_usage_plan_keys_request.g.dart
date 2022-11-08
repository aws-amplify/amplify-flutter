// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_usage_plan_keys_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUsagePlanKeysRequest extends GetUsagePlanKeysRequest {
  @override
  final int? limit;
  @override
  final String? nameQuery;
  @override
  final String? position;
  @override
  final String usagePlanId;

  factory _$GetUsagePlanKeysRequest(
          [void Function(GetUsagePlanKeysRequestBuilder)? updates]) =>
      (new GetUsagePlanKeysRequestBuilder()..update(updates))._build();

  _$GetUsagePlanKeysRequest._(
      {this.limit, this.nameQuery, this.position, required this.usagePlanId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        usagePlanId, r'GetUsagePlanKeysRequest', 'usagePlanId');
  }

  @override
  GetUsagePlanKeysRequest rebuild(
          void Function(GetUsagePlanKeysRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsagePlanKeysRequestBuilder toBuilder() =>
      new GetUsagePlanKeysRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsagePlanKeysRequest &&
        limit == other.limit &&
        nameQuery == other.nameQuery &&
        position == other.position &&
        usagePlanId == other.usagePlanId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, limit.hashCode), nameQuery.hashCode), position.hashCode),
        usagePlanId.hashCode));
  }
}

class GetUsagePlanKeysRequestBuilder
    implements
        Builder<GetUsagePlanKeysRequest, GetUsagePlanKeysRequestBuilder> {
  _$GetUsagePlanKeysRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nameQuery;
  String? get nameQuery => _$this._nameQuery;
  set nameQuery(String? nameQuery) => _$this._nameQuery = nameQuery;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  String? _usagePlanId;
  String? get usagePlanId => _$this._usagePlanId;
  set usagePlanId(String? usagePlanId) => _$this._usagePlanId = usagePlanId;

  GetUsagePlanKeysRequestBuilder() {
    GetUsagePlanKeysRequest._init(this);
  }

  GetUsagePlanKeysRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _nameQuery = $v.nameQuery;
      _position = $v.position;
      _usagePlanId = $v.usagePlanId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUsagePlanKeysRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsagePlanKeysRequest;
  }

  @override
  void update(void Function(GetUsagePlanKeysRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsagePlanKeysRequest build() => _build();

  _$GetUsagePlanKeysRequest _build() {
    final _$result = _$v ??
        new _$GetUsagePlanKeysRequest._(
            limit: limit,
            nameQuery: nameQuery,
            position: position,
            usagePlanId: BuiltValueNullFieldError.checkNotNull(
                usagePlanId, r'GetUsagePlanKeysRequest', 'usagePlanId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetUsagePlanKeysRequestPayload extends GetUsagePlanKeysRequestPayload {
  factory _$GetUsagePlanKeysRequestPayload(
          [void Function(GetUsagePlanKeysRequestPayloadBuilder)? updates]) =>
      (new GetUsagePlanKeysRequestPayloadBuilder()..update(updates))._build();

  _$GetUsagePlanKeysRequestPayload._() : super._();

  @override
  GetUsagePlanKeysRequestPayload rebuild(
          void Function(GetUsagePlanKeysRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsagePlanKeysRequestPayloadBuilder toBuilder() =>
      new GetUsagePlanKeysRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsagePlanKeysRequestPayload;
  }

  @override
  int get hashCode {
    return 337282211;
  }
}

class GetUsagePlanKeysRequestPayloadBuilder
    implements
        Builder<GetUsagePlanKeysRequestPayload,
            GetUsagePlanKeysRequestPayloadBuilder> {
  _$GetUsagePlanKeysRequestPayload? _$v;

  GetUsagePlanKeysRequestPayloadBuilder() {
    GetUsagePlanKeysRequestPayload._init(this);
  }

  @override
  void replace(GetUsagePlanKeysRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsagePlanKeysRequestPayload;
  }

  @override
  void update(void Function(GetUsagePlanKeysRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsagePlanKeysRequestPayload build() => _build();

  _$GetUsagePlanKeysRequestPayload _build() {
    final _$result = _$v ?? new _$GetUsagePlanKeysRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
