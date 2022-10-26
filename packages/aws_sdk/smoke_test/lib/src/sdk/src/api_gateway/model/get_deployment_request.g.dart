// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_deployment_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDeploymentRequest extends GetDeploymentRequest {
  @override
  final String deploymentId;
  @override
  final _i3.BuiltList<String>? embed;
  @override
  final String restApiId;

  factory _$GetDeploymentRequest(
          [void Function(GetDeploymentRequestBuilder)? updates]) =>
      (new GetDeploymentRequestBuilder()..update(updates))._build();

  _$GetDeploymentRequest._(
      {required this.deploymentId, this.embed, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deploymentId, r'GetDeploymentRequest', 'deploymentId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetDeploymentRequest', 'restApiId');
  }

  @override
  GetDeploymentRequest rebuild(
          void Function(GetDeploymentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDeploymentRequestBuilder toBuilder() =>
      new GetDeploymentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDeploymentRequest &&
        deploymentId == other.deploymentId &&
        embed == other.embed &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, deploymentId.hashCode), embed.hashCode),
        restApiId.hashCode));
  }
}

class GetDeploymentRequestBuilder
    implements Builder<GetDeploymentRequest, GetDeploymentRequestBuilder> {
  _$GetDeploymentRequest? _$v;

  String? _deploymentId;
  String? get deploymentId => _$this._deploymentId;
  set deploymentId(String? deploymentId) => _$this._deploymentId = deploymentId;

  _i3.ListBuilder<String>? _embed;
  _i3.ListBuilder<String> get embed =>
      _$this._embed ??= new _i3.ListBuilder<String>();
  set embed(_i3.ListBuilder<String>? embed) => _$this._embed = embed;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetDeploymentRequestBuilder() {
    GetDeploymentRequest._init(this);
  }

  GetDeploymentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deploymentId = $v.deploymentId;
      _embed = $v.embed?.toBuilder();
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDeploymentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDeploymentRequest;
  }

  @override
  void update(void Function(GetDeploymentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDeploymentRequest build() => _build();

  _$GetDeploymentRequest _build() {
    _$GetDeploymentRequest _$result;
    try {
      _$result = _$v ??
          new _$GetDeploymentRequest._(
              deploymentId: BuiltValueNullFieldError.checkNotNull(
                  deploymentId, r'GetDeploymentRequest', 'deploymentId'),
              embed: _embed?.build(),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'GetDeploymentRequest', 'restApiId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'embed';
        _embed?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetDeploymentRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetDeploymentRequestPayload extends GetDeploymentRequestPayload {
  factory _$GetDeploymentRequestPayload(
          [void Function(GetDeploymentRequestPayloadBuilder)? updates]) =>
      (new GetDeploymentRequestPayloadBuilder()..update(updates))._build();

  _$GetDeploymentRequestPayload._() : super._();

  @override
  GetDeploymentRequestPayload rebuild(
          void Function(GetDeploymentRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDeploymentRequestPayloadBuilder toBuilder() =>
      new GetDeploymentRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDeploymentRequestPayload;
  }

  @override
  int get hashCode {
    return 402799697;
  }
}

class GetDeploymentRequestPayloadBuilder
    implements
        Builder<GetDeploymentRequestPayload,
            GetDeploymentRequestPayloadBuilder> {
  _$GetDeploymentRequestPayload? _$v;

  GetDeploymentRequestPayloadBuilder() {
    GetDeploymentRequestPayload._init(this);
  }

  @override
  void replace(GetDeploymentRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDeploymentRequestPayload;
  }

  @override
  void update(void Function(GetDeploymentRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDeploymentRequestPayload build() => _build();

  _$GetDeploymentRequestPayload _build() {
    final _$result = _$v ?? new _$GetDeploymentRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
