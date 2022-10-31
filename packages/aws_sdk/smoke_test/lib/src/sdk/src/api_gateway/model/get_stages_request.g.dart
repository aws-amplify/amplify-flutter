// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_stages_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetStagesRequest extends GetStagesRequest {
  @override
  final String? deploymentId;
  @override
  final String restApiId;

  factory _$GetStagesRequest(
          [void Function(GetStagesRequestBuilder)? updates]) =>
      (new GetStagesRequestBuilder()..update(updates))._build();

  _$GetStagesRequest._({this.deploymentId, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetStagesRequest', 'restApiId');
  }

  @override
  GetStagesRequest rebuild(void Function(GetStagesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetStagesRequestBuilder toBuilder() =>
      new GetStagesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetStagesRequest &&
        deploymentId == other.deploymentId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, deploymentId.hashCode), restApiId.hashCode));
  }
}

class GetStagesRequestBuilder
    implements Builder<GetStagesRequest, GetStagesRequestBuilder> {
  _$GetStagesRequest? _$v;

  String? _deploymentId;
  String? get deploymentId => _$this._deploymentId;
  set deploymentId(String? deploymentId) => _$this._deploymentId = deploymentId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetStagesRequestBuilder() {
    GetStagesRequest._init(this);
  }

  GetStagesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deploymentId = $v.deploymentId;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetStagesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetStagesRequest;
  }

  @override
  void update(void Function(GetStagesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetStagesRequest build() => _build();

  _$GetStagesRequest _build() {
    final _$result = _$v ??
        new _$GetStagesRequest._(
            deploymentId: deploymentId,
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetStagesRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetStagesRequestPayload extends GetStagesRequestPayload {
  factory _$GetStagesRequestPayload(
          [void Function(GetStagesRequestPayloadBuilder)? updates]) =>
      (new GetStagesRequestPayloadBuilder()..update(updates))._build();

  _$GetStagesRequestPayload._() : super._();

  @override
  GetStagesRequestPayload rebuild(
          void Function(GetStagesRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetStagesRequestPayloadBuilder toBuilder() =>
      new GetStagesRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetStagesRequestPayload;
  }

  @override
  int get hashCode {
    return 355885968;
  }
}

class GetStagesRequestPayloadBuilder
    implements
        Builder<GetStagesRequestPayload, GetStagesRequestPayloadBuilder> {
  _$GetStagesRequestPayload? _$v;

  GetStagesRequestPayloadBuilder() {
    GetStagesRequestPayload._init(this);
  }

  @override
  void replace(GetStagesRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetStagesRequestPayload;
  }

  @override
  void update(void Function(GetStagesRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetStagesRequestPayload build() => _build();

  _$GetStagesRequestPayload _build() {
    final _$result = _$v ?? new _$GetStagesRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
