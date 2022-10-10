// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.test_invoke_authorizer_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestInvokeAuthorizerResponse extends TestInvokeAuthorizerResponse {
  @override
  final _i3.BuiltListMultimap<String, String>? authorization;
  @override
  final _i3.BuiltMap<String, String>? claims;
  @override
  final int? clientStatus;
  @override
  final _i2.Int64? latency;
  @override
  final String? log;
  @override
  final String? policy;
  @override
  final String? principalId;

  factory _$TestInvokeAuthorizerResponse(
          [void Function(TestInvokeAuthorizerResponseBuilder)? updates]) =>
      (new TestInvokeAuthorizerResponseBuilder()..update(updates))._build();

  _$TestInvokeAuthorizerResponse._(
      {this.authorization,
      this.claims,
      this.clientStatus,
      this.latency,
      this.log,
      this.policy,
      this.principalId})
      : super._();

  @override
  TestInvokeAuthorizerResponse rebuild(
          void Function(TestInvokeAuthorizerResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestInvokeAuthorizerResponseBuilder toBuilder() =>
      new TestInvokeAuthorizerResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestInvokeAuthorizerResponse &&
        authorization == other.authorization &&
        claims == other.claims &&
        clientStatus == other.clientStatus &&
        latency == other.latency &&
        log == other.log &&
        policy == other.policy &&
        principalId == other.principalId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, authorization.hashCode), claims.hashCode),
                        clientStatus.hashCode),
                    latency.hashCode),
                log.hashCode),
            policy.hashCode),
        principalId.hashCode));
  }
}

class TestInvokeAuthorizerResponseBuilder
    implements
        Builder<TestInvokeAuthorizerResponse,
            TestInvokeAuthorizerResponseBuilder> {
  _$TestInvokeAuthorizerResponse? _$v;

  _i3.ListMultimapBuilder<String, String>? _authorization;
  _i3.ListMultimapBuilder<String, String> get authorization =>
      _$this._authorization ??= new _i3.ListMultimapBuilder<String, String>();
  set authorization(_i3.ListMultimapBuilder<String, String>? authorization) =>
      _$this._authorization = authorization;

  _i3.MapBuilder<String, String>? _claims;
  _i3.MapBuilder<String, String> get claims =>
      _$this._claims ??= new _i3.MapBuilder<String, String>();
  set claims(_i3.MapBuilder<String, String>? claims) => _$this._claims = claims;

  int? _clientStatus;
  int? get clientStatus => _$this._clientStatus;
  set clientStatus(int? clientStatus) => _$this._clientStatus = clientStatus;

  _i2.Int64? _latency;
  _i2.Int64? get latency => _$this._latency;
  set latency(_i2.Int64? latency) => _$this._latency = latency;

  String? _log;
  String? get log => _$this._log;
  set log(String? log) => _$this._log = log;

  String? _policy;
  String? get policy => _$this._policy;
  set policy(String? policy) => _$this._policy = policy;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  TestInvokeAuthorizerResponseBuilder() {
    TestInvokeAuthorizerResponse._init(this);
  }

  TestInvokeAuthorizerResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorization = $v.authorization?.toBuilder();
      _claims = $v.claims?.toBuilder();
      _clientStatus = $v.clientStatus;
      _latency = $v.latency;
      _log = $v.log;
      _policy = $v.policy;
      _principalId = $v.principalId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestInvokeAuthorizerResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestInvokeAuthorizerResponse;
  }

  @override
  void update(void Function(TestInvokeAuthorizerResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestInvokeAuthorizerResponse build() => _build();

  _$TestInvokeAuthorizerResponse _build() {
    _$TestInvokeAuthorizerResponse _$result;
    try {
      _$result = _$v ??
          new _$TestInvokeAuthorizerResponse._(
              authorization: _authorization?.build(),
              claims: _claims?.build(),
              clientStatus: clientStatus,
              latency: latency,
              log: log,
              policy: policy,
              principalId: principalId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authorization';
        _authorization?.build();
        _$failedField = 'claims';
        _claims?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestInvokeAuthorizerResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
