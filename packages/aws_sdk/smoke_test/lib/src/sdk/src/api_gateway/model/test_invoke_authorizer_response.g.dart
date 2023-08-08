// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_invoke_authorizer_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestInvokeAuthorizerResponse extends TestInvokeAuthorizerResponse {
  @override
  final int clientStatus;
  @override
  final String? log;
  @override
  final _i2.Int64 latency;
  @override
  final String? principalId;
  @override
  final String? policy;
  @override
  final _i3.BuiltListMultimap<String, String>? authorization;
  @override
  final _i3.BuiltMap<String, String>? claims;

  factory _$TestInvokeAuthorizerResponse(
          [void Function(TestInvokeAuthorizerResponseBuilder)? updates]) =>
      (new TestInvokeAuthorizerResponseBuilder()..update(updates))._build();

  _$TestInvokeAuthorizerResponse._(
      {required this.clientStatus,
      this.log,
      required this.latency,
      this.principalId,
      this.policy,
      this.authorization,
      this.claims})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clientStatus, r'TestInvokeAuthorizerResponse', 'clientStatus');
    BuiltValueNullFieldError.checkNotNull(
        latency, r'TestInvokeAuthorizerResponse', 'latency');
  }

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
        clientStatus == other.clientStatus &&
        log == other.log &&
        latency == other.latency &&
        principalId == other.principalId &&
        policy == other.policy &&
        authorization == other.authorization &&
        claims == other.claims;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientStatus.hashCode);
    _$hash = $jc(_$hash, log.hashCode);
    _$hash = $jc(_$hash, latency.hashCode);
    _$hash = $jc(_$hash, principalId.hashCode);
    _$hash = $jc(_$hash, policy.hashCode);
    _$hash = $jc(_$hash, authorization.hashCode);
    _$hash = $jc(_$hash, claims.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TestInvokeAuthorizerResponseBuilder
    implements
        Builder<TestInvokeAuthorizerResponse,
            TestInvokeAuthorizerResponseBuilder> {
  _$TestInvokeAuthorizerResponse? _$v;

  int? _clientStatus;
  int? get clientStatus => _$this._clientStatus;
  set clientStatus(int? clientStatus) => _$this._clientStatus = clientStatus;

  String? _log;
  String? get log => _$this._log;
  set log(String? log) => _$this._log = log;

  _i2.Int64? _latency;
  _i2.Int64? get latency => _$this._latency;
  set latency(_i2.Int64? latency) => _$this._latency = latency;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  String? _policy;
  String? get policy => _$this._policy;
  set policy(String? policy) => _$this._policy = policy;

  _i3.ListMultimapBuilder<String, String>? _authorization;
  _i3.ListMultimapBuilder<String, String> get authorization =>
      _$this._authorization ??= new _i3.ListMultimapBuilder<String, String>();
  set authorization(_i3.ListMultimapBuilder<String, String>? authorization) =>
      _$this._authorization = authorization;

  _i3.MapBuilder<String, String>? _claims;
  _i3.MapBuilder<String, String> get claims =>
      _$this._claims ??= new _i3.MapBuilder<String, String>();
  set claims(_i3.MapBuilder<String, String>? claims) => _$this._claims = claims;

  TestInvokeAuthorizerResponseBuilder() {
    TestInvokeAuthorizerResponse._init(this);
  }

  TestInvokeAuthorizerResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientStatus = $v.clientStatus;
      _log = $v.log;
      _latency = $v.latency;
      _principalId = $v.principalId;
      _policy = $v.policy;
      _authorization = $v.authorization?.toBuilder();
      _claims = $v.claims?.toBuilder();
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
              clientStatus: BuiltValueNullFieldError.checkNotNull(clientStatus,
                  r'TestInvokeAuthorizerResponse', 'clientStatus'),
              log: log,
              latency: BuiltValueNullFieldError.checkNotNull(
                  latency, r'TestInvokeAuthorizerResponse', 'latency'),
              principalId: principalId,
              policy: policy,
              authorization: _authorization?.build(),
              claims: _claims?.build());
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
