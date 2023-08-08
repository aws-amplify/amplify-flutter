import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';

abstract interface class ClientConfig {
  const factory ClientConfig({
    AWSHttpClient? httpClient,
    Uri? baseUri,
    List<HttpRequestInterceptor> requestInterceptors,
    List<HttpResponseInterceptor> responseInterceptors,
  }) = _DefaultClientConfig;

  AWSHttpClient? get httpClient;
  Uri? get baseUri;
  List<HttpRequestInterceptor> get requestInterceptors;
  List<HttpResponseInterceptor> get responseInterceptors;

  ClientConfig rebuild(void Function(ClientConfigBuilder config) updates);
  ClientConfigBuilder toBuilder();
}

abstract interface class ClientConfigBuilder {
  abstract AWSHttpClient? httpClient;
  abstract Uri? baseUri;
  abstract List<HttpRequestInterceptor> requestInterceptors;
  abstract List<HttpResponseInterceptor> responseInterceptors;

  ClientConfig build();
}

final class _DefaultClientConfig implements ClientConfig {
  const _DefaultClientConfig({
    this.baseUri,
    this.httpClient,
    this.requestInterceptors = const [],
    this.responseInterceptors = const [],
  });

  @override
  final Uri? baseUri;

  @override
  final AWSHttpClient? httpClient;

  @override
  final List<HttpRequestInterceptor> requestInterceptors;

  @override
  final List<HttpResponseInterceptor> responseInterceptors;

  @override
  ClientConfig rebuild(void Function(ClientConfigBuilder config) updates) {
    final builder = toBuilder();
    updates(builder);
    return builder.build();
  }

  @override
  ClientConfigBuilder toBuilder() => _DefaultClientConfigBuilder(
        baseUri: baseUri,
        httpClient: httpClient,
        requestInterceptors: requestInterceptors,
        responseInterceptors: responseInterceptors,
      );
}

final class _DefaultClientConfigBuilder implements ClientConfigBuilder {
  _DefaultClientConfigBuilder({
    this.baseUri,
    this.httpClient,
    List<HttpRequestInterceptor>? requestInterceptors,
    List<HttpResponseInterceptor>? responseInterceptors,
  })  : requestInterceptors = List.of(requestInterceptors ?? const []),
        responseInterceptors = List.of(responseInterceptors ?? const []);

  @override
  Uri? baseUri;

  @override
  AWSHttpClient? httpClient;

  @override
  List<HttpRequestInterceptor> requestInterceptors;

  @override
  List<HttpResponseInterceptor> responseInterceptors;

  @override
  ClientConfig build() => _DefaultClientConfig(
        baseUri: baseUri,
        httpClient: httpClient,
        requestInterceptors: List.unmodifiable(requestInterceptors),
        responseInterceptors: List.unmodifiable(responseInterceptors),
      );
}
