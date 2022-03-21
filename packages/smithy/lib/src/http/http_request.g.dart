// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpRequest extends HttpRequest {
  @override
  final String? hostPrefix;
  @override
  final String method;
  @override
  final String path;
  @override
  final BuiltMap<String, String> headers;
  @override
  final BuiltListMultimap<String, String> queryParameters;

  factory _$HttpRequest([void Function(HttpRequestBuilder)? updates]) =>
      (new HttpRequestBuilder()..update(updates)).build();

  _$HttpRequest._(
      {this.hostPrefix,
      required this.method,
      required this.path,
      required this.headers,
      required this.queryParameters})
      : super._() {
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
        hostPrefix == other.hostPrefix &&
        method == other.method &&
        path == other.path &&
        headers == other.headers &&
        queryParameters == other.queryParameters;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, hostPrefix.hashCode), method.hashCode),
                path.hashCode),
            headers.hashCode),
        queryParameters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpRequest')
          ..add('hostPrefix', hostPrefix)
          ..add('method', method)
          ..add('path', path)
          ..add('headers', headers)
          ..add('queryParameters', queryParameters))
        .toString();
  }
}

class HttpRequestBuilder implements Builder<HttpRequest, HttpRequestBuilder> {
  _$HttpRequest? _$v;

  String? _hostPrefix;
  String? get hostPrefix => _$this._hostPrefix;
  set hostPrefix(String? hostPrefix) => _$this._hostPrefix = hostPrefix;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

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
      _hostPrefix = $v.hostPrefix;
      _method = $v.method;
      _path = $v.path;
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
              hostPrefix: hostPrefix,
              method: BuiltValueNullFieldError.checkNotNull(
                  method, 'HttpRequest', 'method'),
              path: BuiltValueNullFieldError.checkNotNull(
                  path, 'HttpRequest', 'path'),
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

class _$HttpResponse extends HttpResponse {
  @override
  final BuiltMap<String, String> headers;

  factory _$HttpResponse([void Function(HttpResponseBuilder)? updates]) =>
      (new HttpResponseBuilder()..update(updates)).build();

  _$HttpResponse._({required this.headers}) : super._() {
    BuiltValueNullFieldError.checkNotNull(headers, 'HttpResponse', 'headers');
  }

  @override
  HttpResponse rebuild(void Function(HttpResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpResponseBuilder toBuilder() => new HttpResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpResponse && headers == other.headers;
  }

  @override
  int get hashCode {
    return $jf($jc(0, headers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpResponse')
          ..add('headers', headers))
        .toString();
  }
}

class HttpResponseBuilder
    implements Builder<HttpResponse, HttpResponseBuilder> {
  _$HttpResponse? _$v;

  MapBuilder<String, String>? _headers;
  MapBuilder<String, String> get headers =>
      _$this._headers ??= new MapBuilder<String, String>();
  set headers(MapBuilder<String, String>? headers) => _$this._headers = headers;

  HttpResponseBuilder();

  HttpResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _headers = $v.headers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpResponse;
  }

  @override
  void update(void Function(HttpResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpResponse build() {
    _$HttpResponse _$result;
    try {
      _$result = _$v ?? new _$HttpResponse._(headers: headers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'headers';
        headers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HttpResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HttpRequestContext extends HttpRequestContext {
  @override
  final String? awsSigningService;
  @override
  final String? awsSigningRegion;

  factory _$HttpRequestContext(
          [void Function(HttpRequestContextBuilder)? updates]) =>
      (new HttpRequestContextBuilder()..update(updates)).build();

  _$HttpRequestContext._({this.awsSigningService, this.awsSigningRegion})
      : super._();

  @override
  HttpRequestContext rebuild(
          void Function(HttpRequestContextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestContextBuilder toBuilder() =>
      new HttpRequestContextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequestContext &&
        awsSigningService == other.awsSigningService &&
        awsSigningRegion == other.awsSigningRegion;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, awsSigningService.hashCode), awsSigningRegion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpRequestContext')
          ..add('awsSigningService', awsSigningService)
          ..add('awsSigningRegion', awsSigningRegion))
        .toString();
  }
}

class HttpRequestContextBuilder
    implements Builder<HttpRequestContext, HttpRequestContextBuilder> {
  _$HttpRequestContext? _$v;

  String? _awsSigningService;
  String? get awsSigningService => _$this._awsSigningService;
  set awsSigningService(String? awsSigningService) =>
      _$this._awsSigningService = awsSigningService;

  String? _awsSigningRegion;
  String? get awsSigningRegion => _$this._awsSigningRegion;
  set awsSigningRegion(String? awsSigningRegion) =>
      _$this._awsSigningRegion = awsSigningRegion;

  HttpRequestContextBuilder();

  HttpRequestContextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _awsSigningService = $v.awsSigningService;
      _awsSigningRegion = $v.awsSigningRegion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpRequestContext other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequestContext;
  }

  @override
  void update(void Function(HttpRequestContextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpRequestContext build() {
    final _$result = _$v ??
        new _$HttpRequestContext._(
            awsSigningService: awsSigningService,
            awsSigningRegion: awsSigningRegion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
