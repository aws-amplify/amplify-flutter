// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_usage_plan_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUsagePlanRequest extends GetUsagePlanRequest {
  @override
  final String usagePlanId;

  factory _$GetUsagePlanRequest(
          [void Function(GetUsagePlanRequestBuilder)? updates]) =>
      (new GetUsagePlanRequestBuilder()..update(updates))._build();

  _$GetUsagePlanRequest._({required this.usagePlanId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        usagePlanId, r'GetUsagePlanRequest', 'usagePlanId');
  }

  @override
  GetUsagePlanRequest rebuild(
          void Function(GetUsagePlanRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsagePlanRequestBuilder toBuilder() =>
      new GetUsagePlanRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsagePlanRequest && usagePlanId == other.usagePlanId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, usagePlanId.hashCode));
  }
}

class GetUsagePlanRequestBuilder
    implements Builder<GetUsagePlanRequest, GetUsagePlanRequestBuilder> {
  _$GetUsagePlanRequest? _$v;

  String? _usagePlanId;
  String? get usagePlanId => _$this._usagePlanId;
  set usagePlanId(String? usagePlanId) => _$this._usagePlanId = usagePlanId;

  GetUsagePlanRequestBuilder() {
    GetUsagePlanRequest._init(this);
  }

  GetUsagePlanRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usagePlanId = $v.usagePlanId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUsagePlanRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsagePlanRequest;
  }

  @override
  void update(void Function(GetUsagePlanRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsagePlanRequest build() => _build();

  _$GetUsagePlanRequest _build() {
    final _$result = _$v ??
        new _$GetUsagePlanRequest._(
            usagePlanId: BuiltValueNullFieldError.checkNotNull(
                usagePlanId, r'GetUsagePlanRequest', 'usagePlanId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetUsagePlanRequestPayload extends GetUsagePlanRequestPayload {
  factory _$GetUsagePlanRequestPayload(
          [void Function(GetUsagePlanRequestPayloadBuilder)? updates]) =>
      (new GetUsagePlanRequestPayloadBuilder()..update(updates))._build();

  _$GetUsagePlanRequestPayload._() : super._();

  @override
  GetUsagePlanRequestPayload rebuild(
          void Function(GetUsagePlanRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsagePlanRequestPayloadBuilder toBuilder() =>
      new GetUsagePlanRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsagePlanRequestPayload;
  }

  @override
  int get hashCode {
    return 942180819;
  }
}

class GetUsagePlanRequestPayloadBuilder
    implements
        Builder<GetUsagePlanRequestPayload, GetUsagePlanRequestPayloadBuilder> {
  _$GetUsagePlanRequestPayload? _$v;

  GetUsagePlanRequestPayloadBuilder() {
    GetUsagePlanRequestPayload._init(this);
  }

  @override
  void replace(GetUsagePlanRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsagePlanRequestPayload;
  }

  @override
  void update(void Function(GetUsagePlanRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsagePlanRequestPayload build() => _build();

  _$GetUsagePlanRequestPayload _build() {
    final _$result = _$v ?? new _$GetUsagePlanRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
