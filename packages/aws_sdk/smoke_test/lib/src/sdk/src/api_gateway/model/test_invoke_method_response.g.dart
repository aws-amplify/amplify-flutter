// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.test_invoke_method_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestInvokeMethodResponse extends TestInvokeMethodResponse {
  @override
  final String? body;
  @override
  final _i3.BuiltMap<String, String>? headers;
  @override
  final _i2.Int64? latency;
  @override
  final String? log;
  @override
  final _i3.BuiltListMultimap<String, String>? multiValueHeaders;
  @override
  final int? status;

  factory _$TestInvokeMethodResponse(
          [void Function(TestInvokeMethodResponseBuilder)? updates]) =>
      (new TestInvokeMethodResponseBuilder()..update(updates))._build();

  _$TestInvokeMethodResponse._(
      {this.body,
      this.headers,
      this.latency,
      this.log,
      this.multiValueHeaders,
      this.status})
      : super._();

  @override
  TestInvokeMethodResponse rebuild(
          void Function(TestInvokeMethodResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestInvokeMethodResponseBuilder toBuilder() =>
      new TestInvokeMethodResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestInvokeMethodResponse &&
        body == other.body &&
        headers == other.headers &&
        latency == other.latency &&
        log == other.log &&
        multiValueHeaders == other.multiValueHeaders &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, headers.hashCode);
    _$hash = $jc(_$hash, latency.hashCode);
    _$hash = $jc(_$hash, log.hashCode);
    _$hash = $jc(_$hash, multiValueHeaders.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TestInvokeMethodResponseBuilder
    implements
        Builder<TestInvokeMethodResponse, TestInvokeMethodResponseBuilder> {
  _$TestInvokeMethodResponse? _$v;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  _i3.MapBuilder<String, String>? _headers;
  _i3.MapBuilder<String, String> get headers =>
      _$this._headers ??= new _i3.MapBuilder<String, String>();
  set headers(_i3.MapBuilder<String, String>? headers) =>
      _$this._headers = headers;

  _i2.Int64? _latency;
  _i2.Int64? get latency => _$this._latency;
  set latency(_i2.Int64? latency) => _$this._latency = latency;

  String? _log;
  String? get log => _$this._log;
  set log(String? log) => _$this._log = log;

  _i3.ListMultimapBuilder<String, String>? _multiValueHeaders;
  _i3.ListMultimapBuilder<String, String> get multiValueHeaders =>
      _$this._multiValueHeaders ??=
          new _i3.ListMultimapBuilder<String, String>();
  set multiValueHeaders(
          _i3.ListMultimapBuilder<String, String>? multiValueHeaders) =>
      _$this._multiValueHeaders = multiValueHeaders;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  TestInvokeMethodResponseBuilder() {
    TestInvokeMethodResponse._init(this);
  }

  TestInvokeMethodResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _headers = $v.headers?.toBuilder();
      _latency = $v.latency;
      _log = $v.log;
      _multiValueHeaders = $v.multiValueHeaders?.toBuilder();
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestInvokeMethodResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestInvokeMethodResponse;
  }

  @override
  void update(void Function(TestInvokeMethodResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestInvokeMethodResponse build() => _build();

  _$TestInvokeMethodResponse _build() {
    _$TestInvokeMethodResponse _$result;
    try {
      _$result = _$v ??
          new _$TestInvokeMethodResponse._(
              body: body,
              headers: _headers?.build(),
              latency: latency,
              log: log,
              multiValueHeaders: _multiValueHeaders?.build(),
              status: status);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'headers';
        _headers?.build();

        _$failedField = 'multiValueHeaders';
        _multiValueHeaders?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestInvokeMethodResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
