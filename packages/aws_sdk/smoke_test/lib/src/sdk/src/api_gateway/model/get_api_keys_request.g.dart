// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_api_keys_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiKeysRequest extends GetApiKeysRequest {
  @override
  final String? customerId;
  @override
  final bool? includeValues;
  @override
  final int? limit;
  @override
  final String? nameQuery;
  @override
  final String? position;

  factory _$GetApiKeysRequest(
          [void Function(GetApiKeysRequestBuilder)? updates]) =>
      (new GetApiKeysRequestBuilder()..update(updates))._build();

  _$GetApiKeysRequest._(
      {this.customerId,
      this.includeValues,
      this.limit,
      this.nameQuery,
      this.position})
      : super._();

  @override
  GetApiKeysRequest rebuild(void Function(GetApiKeysRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiKeysRequestBuilder toBuilder() =>
      new GetApiKeysRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiKeysRequest &&
        customerId == other.customerId &&
        includeValues == other.includeValues &&
        limit == other.limit &&
        nameQuery == other.nameQuery &&
        position == other.position;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, customerId.hashCode), includeValues.hashCode),
                limit.hashCode),
            nameQuery.hashCode),
        position.hashCode));
  }
}

class GetApiKeysRequestBuilder
    implements Builder<GetApiKeysRequest, GetApiKeysRequestBuilder> {
  _$GetApiKeysRequest? _$v;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  bool? _includeValues;
  bool? get includeValues => _$this._includeValues;
  set includeValues(bool? includeValues) =>
      _$this._includeValues = includeValues;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nameQuery;
  String? get nameQuery => _$this._nameQuery;
  set nameQuery(String? nameQuery) => _$this._nameQuery = nameQuery;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  GetApiKeysRequestBuilder() {
    GetApiKeysRequest._init(this);
  }

  GetApiKeysRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _includeValues = $v.includeValues;
      _limit = $v.limit;
      _nameQuery = $v.nameQuery;
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiKeysRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetApiKeysRequest;
  }

  @override
  void update(void Function(GetApiKeysRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiKeysRequest build() => _build();

  _$GetApiKeysRequest _build() {
    final _$result = _$v ??
        new _$GetApiKeysRequest._(
            customerId: customerId,
            includeValues: includeValues,
            limit: limit,
            nameQuery: nameQuery,
            position: position);
    replace(_$result);
    return _$result;
  }
}

class _$GetApiKeysRequestPayload extends GetApiKeysRequestPayload {
  factory _$GetApiKeysRequestPayload(
          [void Function(GetApiKeysRequestPayloadBuilder)? updates]) =>
      (new GetApiKeysRequestPayloadBuilder()..update(updates))._build();

  _$GetApiKeysRequestPayload._() : super._();

  @override
  GetApiKeysRequestPayload rebuild(
          void Function(GetApiKeysRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiKeysRequestPayloadBuilder toBuilder() =>
      new GetApiKeysRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiKeysRequestPayload;
  }

  @override
  int get hashCode {
    return 404219756;
  }
}

class GetApiKeysRequestPayloadBuilder
    implements
        Builder<GetApiKeysRequestPayload, GetApiKeysRequestPayloadBuilder> {
  _$GetApiKeysRequestPayload? _$v;

  GetApiKeysRequestPayloadBuilder() {
    GetApiKeysRequestPayload._init(this);
  }

  @override
  void replace(GetApiKeysRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetApiKeysRequestPayload;
  }

  @override
  void update(void Function(GetApiKeysRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiKeysRequestPayload build() => _build();

  _$GetApiKeysRequestPayload _build() {
    final _$result = _$v ?? new _$GetApiKeysRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
