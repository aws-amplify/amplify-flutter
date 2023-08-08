// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_invoke_method_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestInvokeMethodResponse extends TestInvokeMethodResponse {
  @override
  final int status;
  @override
  final String? body;
  @override
  final _i3.BuiltMap<String, String>? headers;
  @override
  final _i3.BuiltListMultimap<String, String>? multiValueHeaders;
  @override
  final String? log;
  @override
  final _i2.Int64 latency;

  factory _$TestInvokeMethodResponse(
          [void Function(TestInvokeMethodResponseBuilder)? updates]) =>
      (new TestInvokeMethodResponseBuilder()..update(updates))._build();

  _$TestInvokeMethodResponse._(
      {required this.status,
      this.body,
      this.headers,
      this.multiValueHeaders,
      this.log,
      required this.latency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, r'TestInvokeMethodResponse', 'status');
    BuiltValueNullFieldError.checkNotNull(
        latency, r'TestInvokeMethodResponse', 'latency');
  }

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
        status == other.status &&
        body == other.body &&
        headers == other.headers &&
        multiValueHeaders == other.multiValueHeaders &&
        log == other.log &&
        latency == other.latency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, headers.hashCode);
    _$hash = $jc(_$hash, multiValueHeaders.hashCode);
    _$hash = $jc(_$hash, log.hashCode);
    _$hash = $jc(_$hash, latency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TestInvokeMethodResponseBuilder
    implements
        Builder<TestInvokeMethodResponse, TestInvokeMethodResponseBuilder> {
  _$TestInvokeMethodResponse? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

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

  String? _log;
  String? get log => _$this._log;
  set log(String? log) => _$this._log = log;

  _i2.Int64? _latency;
  _i2.Int64? get latency => _$this._latency;
  set latency(_i2.Int64? latency) => _$this._latency = latency;

  TestInvokeMethodResponseBuilder() {
    TestInvokeMethodResponse._init(this);
  }

  TestInvokeMethodResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _body = $v.body;
      _headers = $v.headers?.toBuilder();
      _multiValueHeaders = $v.multiValueHeaders?.toBuilder();
      _log = $v.log;
      _latency = $v.latency;
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
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'TestInvokeMethodResponse', 'status'),
              body: body,
              headers: _headers?.build(),
              multiValueHeaders: _multiValueHeaders?.build(),
              log: log,
              latency: BuiltValueNullFieldError.checkNotNull(
                  latency, r'TestInvokeMethodResponse', 'latency'));
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
