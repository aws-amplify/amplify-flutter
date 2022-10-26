// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.test_invoke_method_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestInvokeMethodRequest extends TestInvokeMethodRequest {
  @override
  final String? body;
  @override
  final String? clientCertificateId;
  @override
  final _i3.BuiltMap<String, String>? headers;
  @override
  final String httpMethod;
  @override
  final _i3.BuiltListMultimap<String, String>? multiValueHeaders;
  @override
  final String? pathWithQueryString;
  @override
  final String resourceId;
  @override
  final String restApiId;
  @override
  final _i3.BuiltMap<String, String>? stageVariables;

  factory _$TestInvokeMethodRequest(
          [void Function(TestInvokeMethodRequestBuilder)? updates]) =>
      (new TestInvokeMethodRequestBuilder()..update(updates))._build();

  _$TestInvokeMethodRequest._(
      {this.body,
      this.clientCertificateId,
      this.headers,
      required this.httpMethod,
      this.multiValueHeaders,
      this.pathWithQueryString,
      required this.resourceId,
      required this.restApiId,
      this.stageVariables})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'TestInvokeMethodRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'TestInvokeMethodRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'TestInvokeMethodRequest', 'restApiId');
  }

  @override
  TestInvokeMethodRequest rebuild(
          void Function(TestInvokeMethodRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestInvokeMethodRequestBuilder toBuilder() =>
      new TestInvokeMethodRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestInvokeMethodRequest &&
        body == other.body &&
        clientCertificateId == other.clientCertificateId &&
        headers == other.headers &&
        httpMethod == other.httpMethod &&
        multiValueHeaders == other.multiValueHeaders &&
        pathWithQueryString == other.pathWithQueryString &&
        resourceId == other.resourceId &&
        restApiId == other.restApiId &&
        stageVariables == other.stageVariables;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, body.hashCode),
                                    clientCertificateId.hashCode),
                                headers.hashCode),
                            httpMethod.hashCode),
                        multiValueHeaders.hashCode),
                    pathWithQueryString.hashCode),
                resourceId.hashCode),
            restApiId.hashCode),
        stageVariables.hashCode));
  }
}

class TestInvokeMethodRequestBuilder
    implements
        Builder<TestInvokeMethodRequest, TestInvokeMethodRequestBuilder> {
  _$TestInvokeMethodRequest? _$v;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  String? _clientCertificateId;
  String? get clientCertificateId => _$this._clientCertificateId;
  set clientCertificateId(String? clientCertificateId) =>
      _$this._clientCertificateId = clientCertificateId;

  _i3.MapBuilder<String, String>? _headers;
  _i3.MapBuilder<String, String> get headers =>
      _$this._headers ??= new _i3.MapBuilder<String, String>();
  set headers(_i3.MapBuilder<String, String>? headers) =>
      _$this._headers = headers;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

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

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  _i3.MapBuilder<String, String>? _stageVariables;
  _i3.MapBuilder<String, String> get stageVariables =>
      _$this._stageVariables ??= new _i3.MapBuilder<String, String>();
  set stageVariables(_i3.MapBuilder<String, String>? stageVariables) =>
      _$this._stageVariables = stageVariables;

  TestInvokeMethodRequestBuilder() {
    TestInvokeMethodRequest._init(this);
  }

  TestInvokeMethodRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _clientCertificateId = $v.clientCertificateId;
      _headers = $v.headers?.toBuilder();
      _httpMethod = $v.httpMethod;
      _multiValueHeaders = $v.multiValueHeaders?.toBuilder();
      _pathWithQueryString = $v.pathWithQueryString;
      _resourceId = $v.resourceId;
      _restApiId = $v.restApiId;
      _stageVariables = $v.stageVariables?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestInvokeMethodRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestInvokeMethodRequest;
  }

  @override
  void update(void Function(TestInvokeMethodRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestInvokeMethodRequest build() => _build();

  _$TestInvokeMethodRequest _build() {
    _$TestInvokeMethodRequest _$result;
    try {
      _$result = _$v ??
          new _$TestInvokeMethodRequest._(
              body: body,
              clientCertificateId: clientCertificateId,
              headers: _headers?.build(),
              httpMethod: BuiltValueNullFieldError.checkNotNull(
                  httpMethod, r'TestInvokeMethodRequest', 'httpMethod'),
              multiValueHeaders: _multiValueHeaders?.build(),
              pathWithQueryString: pathWithQueryString,
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'TestInvokeMethodRequest', 'resourceId'),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'TestInvokeMethodRequest', 'restApiId'),
              stageVariables: _stageVariables?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'headers';
        _headers?.build();

        _$failedField = 'multiValueHeaders';
        _multiValueHeaders?.build();

        _$failedField = 'stageVariables';
        _stageVariables?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestInvokeMethodRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TestInvokeMethodRequestPayload extends TestInvokeMethodRequestPayload {
  @override
  final String? body;
  @override
  final String? clientCertificateId;
  @override
  final _i3.BuiltMap<String, String>? headers;
  @override
  final _i3.BuiltListMultimap<String, String>? multiValueHeaders;
  @override
  final String? pathWithQueryString;
  @override
  final _i3.BuiltMap<String, String>? stageVariables;

  factory _$TestInvokeMethodRequestPayload(
          [void Function(TestInvokeMethodRequestPayloadBuilder)? updates]) =>
      (new TestInvokeMethodRequestPayloadBuilder()..update(updates))._build();

  _$TestInvokeMethodRequestPayload._(
      {this.body,
      this.clientCertificateId,
      this.headers,
      this.multiValueHeaders,
      this.pathWithQueryString,
      this.stageVariables})
      : super._();

  @override
  TestInvokeMethodRequestPayload rebuild(
          void Function(TestInvokeMethodRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestInvokeMethodRequestPayloadBuilder toBuilder() =>
      new TestInvokeMethodRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestInvokeMethodRequestPayload &&
        body == other.body &&
        clientCertificateId == other.clientCertificateId &&
        headers == other.headers &&
        multiValueHeaders == other.multiValueHeaders &&
        pathWithQueryString == other.pathWithQueryString &&
        stageVariables == other.stageVariables;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, body.hashCode), clientCertificateId.hashCode),
                    headers.hashCode),
                multiValueHeaders.hashCode),
            pathWithQueryString.hashCode),
        stageVariables.hashCode));
  }
}

class TestInvokeMethodRequestPayloadBuilder
    implements
        Builder<TestInvokeMethodRequestPayload,
            TestInvokeMethodRequestPayloadBuilder> {
  _$TestInvokeMethodRequestPayload? _$v;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  String? _clientCertificateId;
  String? get clientCertificateId => _$this._clientCertificateId;
  set clientCertificateId(String? clientCertificateId) =>
      _$this._clientCertificateId = clientCertificateId;

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

  TestInvokeMethodRequestPayloadBuilder() {
    TestInvokeMethodRequestPayload._init(this);
  }

  TestInvokeMethodRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _clientCertificateId = $v.clientCertificateId;
      _headers = $v.headers?.toBuilder();
      _multiValueHeaders = $v.multiValueHeaders?.toBuilder();
      _pathWithQueryString = $v.pathWithQueryString;
      _stageVariables = $v.stageVariables?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestInvokeMethodRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestInvokeMethodRequestPayload;
  }

  @override
  void update(void Function(TestInvokeMethodRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestInvokeMethodRequestPayload build() => _build();

  _$TestInvokeMethodRequestPayload _build() {
    _$TestInvokeMethodRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$TestInvokeMethodRequestPayload._(
              body: body,
              clientCertificateId: clientCertificateId,
              headers: _headers?.build(),
              multiValueHeaders: _multiValueHeaders?.build(),
              pathWithQueryString: pathWithQueryString,
              stageVariables: _stageVariables?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'headers';
        _headers?.build();
        _$failedField = 'multiValueHeaders';
        _multiValueHeaders?.build();

        _$failedField = 'stageVariables';
        _stageVariables?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestInvokeMethodRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
