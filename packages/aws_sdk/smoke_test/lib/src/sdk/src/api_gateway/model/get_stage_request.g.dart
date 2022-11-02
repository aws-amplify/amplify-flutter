// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_stage_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetStageRequest extends GetStageRequest {
  @override
  final String restApiId;
  @override
  final String stageName;

  factory _$GetStageRequest([void Function(GetStageRequestBuilder)? updates]) =>
      (new GetStageRequestBuilder()..update(updates))._build();

  _$GetStageRequest._({required this.restApiId, required this.stageName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetStageRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        stageName, r'GetStageRequest', 'stageName');
  }

  @override
  GetStageRequest rebuild(void Function(GetStageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetStageRequestBuilder toBuilder() =>
      new GetStageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetStageRequest &&
        restApiId == other.restApiId &&
        stageName == other.stageName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, restApiId.hashCode), stageName.hashCode));
  }
}

class GetStageRequestBuilder
    implements Builder<GetStageRequest, GetStageRequestBuilder> {
  _$GetStageRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  GetStageRequestBuilder() {
    GetStageRequest._init(this);
  }

  GetStageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _stageName = $v.stageName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetStageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetStageRequest;
  }

  @override
  void update(void Function(GetStageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetStageRequest build() => _build();

  _$GetStageRequest _build() {
    final _$result = _$v ??
        new _$GetStageRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetStageRequest', 'restApiId'),
            stageName: BuiltValueNullFieldError.checkNotNull(
                stageName, r'GetStageRequest', 'stageName'));
    replace(_$result);
    return _$result;
  }
}

class _$GetStageRequestPayload extends GetStageRequestPayload {
  factory _$GetStageRequestPayload(
          [void Function(GetStageRequestPayloadBuilder)? updates]) =>
      (new GetStageRequestPayloadBuilder()..update(updates))._build();

  _$GetStageRequestPayload._() : super._();

  @override
  GetStageRequestPayload rebuild(
          void Function(GetStageRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetStageRequestPayloadBuilder toBuilder() =>
      new GetStageRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetStageRequestPayload;
  }

  @override
  int get hashCode {
    return 191741528;
  }
}

class GetStageRequestPayloadBuilder
    implements Builder<GetStageRequestPayload, GetStageRequestPayloadBuilder> {
  _$GetStageRequestPayload? _$v;

  GetStageRequestPayloadBuilder() {
    GetStageRequestPayload._init(this);
  }

  @override
  void replace(GetStageRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetStageRequestPayload;
  }

  @override
  void update(void Function(GetStageRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetStageRequestPayload build() => _build();

  _$GetStageRequestPayload _build() {
    final _$result = _$v ?? new _$GetStageRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
