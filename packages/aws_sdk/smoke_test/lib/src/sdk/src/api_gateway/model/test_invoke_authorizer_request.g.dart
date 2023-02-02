// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.test_invoke_authorizer_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestInvokeAuthorizerRequest extends TestInvokeAuthorizerRequest {
  @override
  final _i3.BuiltMap<String, String>? additionalContext;
  @override
  final String authorizerId;
  @override
  final String? body;
  @override
  final _i3.BuiltMap<String, String>? headers;
  @override
  final _i3.BuiltListMultimap<String, String>? multiValueHeaders;
  @override
  final String? pathWithQueryString;
  @override
  final String restApiId;
  @override
  final _i3.BuiltMap<String, String>? stageVariables;

  factory _$TestInvokeAuthorizerRequest(
          [void Function(TestInvokeAuthorizerRequestBuilder)? updates]) =>
      (new TestInvokeAuthorizerRequestBuilder()..update(updates))._build();

  _$TestInvokeAuthorizerRequest._(
      {this.additionalContext,
      required this.authorizerId,
      this.body,
      this.headers,
      this.multiValueHeaders,
      this.pathWithQueryString,
      required this.restApiId,
      this.stageVariables})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        authorizerId, r'TestInvokeAuthorizerRequest', 'authorizerId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'TestInvokeAuthorizerRequest', 'restApiId');
  }

  @override
  TestInvokeAuthorizerRequest rebuild(
          void Function(TestInvokeAuthorizerRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestInvokeAuthorizerRequestBuilder toBuilder() =>
      new TestInvokeAuthorizerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestInvokeAuthorizerRequest &&
        additionalContext == other.additionalContext &&
        authorizerId == other.authorizerId &&
        body == other.body &&
        headers == other.headers &&
        multiValueHeaders == other.multiValueHeaders &&
        pathWithQueryString == other.pathWithQueryString &&
        restApiId == other.restApiId &&
        stageVariables == other.stageVariables;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, additionalContext.hashCode);
    _$hash = $jc(_$hash, authorizerId.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, headers.hashCode);
    _$hash = $jc(_$hash, multiValueHeaders.hashCode);
    _$hash = $jc(_$hash, pathWithQueryString.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, stageVariables.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TestInvokeAuthorizerRequestBuilder
    implements
        Builder<TestInvokeAuthorizerRequest,
            TestInvokeAuthorizerRequestBuilder> {
  _$TestInvokeAuthorizerRequest? _$v;

  _i3.MapBuilder<String, String>? _additionalContext;
  _i3.MapBuilder<String, String> get additionalContext =>
      _$this._additionalContext ??= new _i3.MapBuilder<String, String>();
  set additionalContext(_i3.MapBuilder<String, String>? additionalContext) =>
      _$this._additionalContext = additionalContext;

  String? _authorizerId;
  String? get authorizerId => _$this._authorizerId;
  set authorizerId(String? authorizerId) => _$this._authorizerId = authorizerId;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  _i3.MapBuilder<String, String>? _headers;
  _i3.MapBuilder<String, String> get headers =>
      _$this._headers ??= new _i3.MapBuilder<String, String>();
  set headers(_i3.MapBuilder<String, String>? headers) =>
      _$this._headers = headers;

  _i3.ListMultimapBuilder<String, String>? _multiValueHeaders;
  _i3.ListMultimapBuilder<String, String> get multiValueHeaders =>
      _$this._multiValueHeaders ??=
          new _i3.ListMultimapBuilder<String, String>();
  set multiValueHeaders(
          _i3.ListMultimapBuilder<String, String>? multiValueHeaders) =>
      _$this._multiValueHeaders = multiValueHeaders;

  String? _pathWithQueryString;
  String? get pathWithQueryString => _$this._pathWithQueryString;
  set pathWithQueryString(String? pathWithQueryString) =>
      _$this._pathWithQueryString = pathWithQueryString;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  _i3.MapBuilder<String, String>? _stageVariables;
  _i3.MapBuilder<String, String> get stageVariables =>
      _$this._stageVariables ??= new _i3.MapBuilder<String, String>();
  set stageVariables(_i3.MapBuilder<String, String>? stageVariables) =>
      _$this._stageVariables = stageVariables;

  TestInvokeAuthorizerRequestBuilder() {
    TestInvokeAuthorizerRequest._init(this);
  }

  TestInvokeAuthorizerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _additionalContext = $v.additionalContext?.toBuilder();
      _authorizerId = $v.authorizerId;
      _body = $v.body;
      _headers = $v.headers?.toBuilder();
      _multiValueHeaders = $v.multiValueHeaders?.toBuilder();
      _pathWithQueryString = $v.pathWithQueryString;
      _restApiId = $v.restApiId;
      _stageVariables = $v.stageVariables?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestInvokeAuthorizerRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestInvokeAuthorizerRequest;
  }

  @override
  void update(void Function(TestInvokeAuthorizerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestInvokeAuthorizerRequest build() => _build();

  _$TestInvokeAuthorizerRequest _build() {
    _$TestInvokeAuthorizerRequest _$result;
    try {
      _$result = _$v ??
          new _$TestInvokeAuthorizerRequest._(
              additionalContext: _additionalContext?.build(),
              authorizerId: BuiltValueNullFieldError.checkNotNull(
                  authorizerId, r'TestInvokeAuthorizerRequest', 'authorizerId'),
              body: body,
              headers: _headers?.build(),
              multiValueHeaders: _multiValueHeaders?.build(),
              pathWithQueryString: pathWithQueryString,
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'TestInvokeAuthorizerRequest', 'restApiId'),
              stageVariables: _stageVariables?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'additionalContext';
        _additionalContext?.build();

        _$failedField = 'headers';
        _headers?.build();
        _$failedField = 'multiValueHeaders';
        _multiValueHeaders?.build();

        _$failedField = 'stageVariables';
        _stageVariables?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestInvokeAuthorizerRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TestInvokeAuthorizerRequestPayload
    extends TestInvokeAuthorizerRequestPayload {
  @override
  final _i3.BuiltMap<String, String>? additionalContext;
  @override
  final String? body;
  @override
  final _i3.BuiltMap<String, String>? headers;
  @override
  final _i3.BuiltListMultimap<String, String>? multiValueHeaders;
  @override
  final String? pathWithQueryString;
  @override
  final _i3.BuiltMap<String, String>? stageVariables;

  factory _$TestInvokeAuthorizerRequestPayload(
          [void Function(TestInvokeAuthorizerRequestPayloadBuilder)?
              updates]) =>
      (new TestInvokeAuthorizerRequestPayloadBuilder()..update(updates))
          ._build();

  _$TestInvokeAuthorizerRequestPayload._(
      {this.additionalContext,
      this.body,
      this.headers,
      this.multiValueHeaders,
      this.pathWithQueryString,
      this.stageVariables})
      : super._();

  @override
  TestInvokeAuthorizerRequestPayload rebuild(
          void Function(TestInvokeAuthorizerRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestInvokeAuthorizerRequestPayloadBuilder toBuilder() =>
      new TestInvokeAuthorizerRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestInvokeAuthorizerRequestPayload &&
        additionalContext == other.additionalContext &&
        body == other.body &&
        headers == other.headers &&
        multiValueHeaders == other.multiValueHeaders &&
        pathWithQueryString == other.pathWithQueryString &&
        stageVariables == other.stageVariables;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, additionalContext.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, headers.hashCode);
    _$hash = $jc(_$hash, multiValueHeaders.hashCode);
    _$hash = $jc(_$hash, pathWithQueryString.hashCode);
    _$hash = $jc(_$hash, stageVariables.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TestInvokeAuthorizerRequestPayloadBuilder
    implements
        Builder<TestInvokeAuthorizerRequestPayload,
            TestInvokeAuthorizerRequestPayloadBuilder> {
  _$TestInvokeAuthorizerRequestPayload? _$v;

  _i3.MapBuilder<String, String>? _additionalContext;
  _i3.MapBuilder<String, String> get additionalContext =>
      _$this._additionalContext ??= new _i3.MapBuilder<String, String>();
  set additionalContext(_i3.MapBuilder<String, String>? additionalContext) =>
      _$this._additionalContext = additionalContext;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  _i3.MapBuilder<String, String>? _headers;
  _i3.MapBuilder<String, String> get headers =>
      _$this._headers ??= new _i3.MapBuilder<String, String>();
  set headers(_i3.MapBuilder<String, String>? headers) =>
      _$this._headers = headers;

  _i3.ListMultimapBuilder<String, String>? _multiValueHeaders;
  _i3.ListMultimapBuilder<String, String> get multiValueHeaders =>
      _$this._multiValueHeaders ??=
          new _i3.ListMultimapBuilder<String, String>();
  set multiValueHeaders(
          _i3.ListMultimapBuilder<String, String>? multiValueHeaders) =>
      _$this._multiValueHeaders = multiValueHeaders;

  String? _pathWithQueryString;
  String? get pathWithQueryString => _$this._pathWithQueryString;
  set pathWithQueryString(String? pathWithQueryString) =>
      _$this._pathWithQueryString = pathWithQueryString;

  _i3.MapBuilder<String, String>? _stageVariables;
  _i3.MapBuilder<String, String> get stageVariables =>
      _$this._stageVariables ??= new _i3.MapBuilder<String, String>();
  set stageVariables(_i3.MapBuilder<String, String>? stageVariables) =>
      _$this._stageVariables = stageVariables;

  TestInvokeAuthorizerRequestPayloadBuilder() {
    TestInvokeAuthorizerRequestPayload._init(this);
  }

  TestInvokeAuthorizerRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _additionalContext = $v.additionalContext?.toBuilder();
      _body = $v.body;
      _headers = $v.headers?.toBuilder();
      _multiValueHeaders = $v.multiValueHeaders?.toBuilder();
      _pathWithQueryString = $v.pathWithQueryString;
      _stageVariables = $v.stageVariables?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestInvokeAuthorizerRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestInvokeAuthorizerRequestPayload;
  }

  @override
  void update(
      void Function(TestInvokeAuthorizerRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestInvokeAuthorizerRequestPayload build() => _build();

  _$TestInvokeAuthorizerRequestPayload _build() {
    _$TestInvokeAuthorizerRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$TestInvokeAuthorizerRequestPayload._(
              additionalContext: _additionalContext?.build(),
              body: body,
              headers: _headers?.build(),
              multiValueHeaders: _multiValueHeaders?.build(),
              pathWithQueryString: pathWithQueryString,
              stageVariables: _stageVariables?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'additionalContext';
        _additionalContext?.build();

        _$failedField = 'headers';
        _headers?.build();
        _$failedField = 'multiValueHeaders';
        _multiValueHeaders?.build();

        _$failedField = 'stageVariables';
        _stageVariables?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestInvokeAuthorizerRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
