// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpRequest extends HttpRequest {
  @override
  final String host;
  @override
  final String method;
  @override
  final String path;
  @override
  final String? hostPrefix;
  @override
  final BuiltMap<String, String> headers;
  @override
  final BuiltListMultimap<String, String> queryParameters;

  factory _$HttpRequest([void Function(HttpRequestBuilder)? updates]) =>
      (new HttpRequestBuilder()..update(updates)).build();

  _$HttpRequest._(
      {required this.host,
      required this.method,
      required this.path,
      this.hostPrefix,
      required this.headers,
      required this.queryParameters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(host, 'HttpRequest', 'host');
    BuiltValueNullFieldError.checkNotNull(method, 'HttpRequest', 'method');
    BuiltValueNullFieldError.checkNotNull(path, 'HttpRequest', 'path');
    BuiltValueNullFieldError.checkNotNull(headers, 'HttpRequest', 'headers');
    BuiltValueNullFieldError.checkNotNull(
        queryParameters, 'HttpRequest', 'queryParameters');
  }

  @override
  HttpRequest rebuild(void Function(HttpRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestBuilder toBuilder() => new HttpRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequest &&
        host == other.host &&
        method == other.method &&
        path == other.path &&
        hostPrefix == other.hostPrefix &&
        headers == other.headers &&
        queryParameters == other.queryParameters;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, host.hashCode), method.hashCode), path.hashCode),
                hostPrefix.hashCode),
            headers.hashCode),
        queryParameters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpRequest')
          ..add('host', host)
          ..add('method', method)
          ..add('path', path)
          ..add('hostPrefix', hostPrefix)
          ..add('headers', headers)
          ..add('queryParameters', queryParameters))
        .toString();
  }
}

class HttpRequestBuilder implements Builder<HttpRequest, HttpRequestBuilder> {
  _$HttpRequest? _$v;

  String? _host;
  String? get host => _$this._host;
  set host(String? host) => _$this._host = host;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _hostPrefix;
  String? get hostPrefix => _$this._hostPrefix;
  set hostPrefix(String? hostPrefix) => _$this._hostPrefix = hostPrefix;

  MapBuilder<String, String>? _headers;
  MapBuilder<String, String> get headers =>
      _$this._headers ??= new MapBuilder<String, String>();
  set headers(MapBuilder<String, String>? headers) => _$this._headers = headers;

  ListMultimapBuilder<String, String>? _queryParameters;
  ListMultimapBuilder<String, String> get queryParameters =>
      _$this._queryParameters ??= new ListMultimapBuilder<String, String>();
  set queryParameters(ListMultimapBuilder<String, String>? queryParameters) =>
      _$this._queryParameters = queryParameters;

  HttpRequestBuilder();

  HttpRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _host = $v.host;
      _method = $v.method;
      _path = $v.path;
      _hostPrefix = $v.hostPrefix;
      _headers = $v.headers.toBuilder();
      _queryParameters = $v.queryParameters.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequest;
  }

  @override
  void update(void Function(HttpRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpRequest build() {
    _$HttpRequest _$result;
    try {
      _$result = _$v ??
          new _$HttpRequest._(
              host: BuiltValueNullFieldError.checkNotNull(
                  host, 'HttpRequest', 'host'),
              method: BuiltValueNullFieldError.checkNotNull(
                  method, 'HttpRequest', 'method'),
              path: BuiltValueNullFieldError.checkNotNull(
                  path, 'HttpRequest', 'path'),
              hostPrefix: hostPrefix,
              headers: headers.build(),
              queryParameters: queryParameters.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'headers';
        headers.build();
        _$failedField = 'queryParameters';
        queryParameters.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HttpRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
