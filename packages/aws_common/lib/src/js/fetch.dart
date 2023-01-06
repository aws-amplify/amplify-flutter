// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/js/abort.dart';
import 'package:aws_common/src/js/common.dart';
import 'package:aws_common/src/js/promise.dart';
import 'package:aws_common/src/js/readable_stream.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart' as js_util;
import 'package:meta/meta.dart';

/// How a [Request] will interact with the browser's HTTP cache.
enum RequestCache with JSEnum {
  /// The browser looks for a matching request in its HTTP cache.
  ///
  /// - If there is a match and it is fresh, it will be returned from the cache.
  /// - If there is a match but it is stale, the browser will make a conditional
  ///   request to the remote server. If the server indicates that the resource
  ///   has not changed, it will be returned from the cache. Otherwise the
  ///   resource will be downloaded from the server and the cache will be
  ///   updated.
  /// - If there is no match, the browser will make a normal request, and will
  ///   update the cache with the downloaded resource.
  default$,

  /// The browser looks for a matching request in its HTTP cache.
  ///
  /// - If there is a match, fresh or stale, it will be returned from the cache.
  /// - If there is no match, the browser will make a normal request, and will
  ///   update the cache with the downloaded resource.
  forceCache,

  /// The browser looks for a matching request in its HTTP cache.
  ///
  /// - If there is a match, fresh or stale, the browser will make a conditional
  ///   request to the remote server. If the server indicates that the resource
  ///   has not changed, it will be returned from the cache. Otherwise the
  ///   resource will be downloaded from the server and the cache will be
  ///   updated.
  /// - If there is no match, the browser will make a normal request, and will
  ///   update the cache with the downloaded resource.
  noCache,

  /// The browser fetches the resource from the remote server without first
  /// looking in the cache, and will not update the cache with the downloaded
  /// resource.
  noStore,

  /// The browser looks for a matching request in its HTTP cache.
  ///
  /// - If there is a match, fresh or stale, it will be returned from the cache.
  /// - If there is no match, the browser will respond with a 504 Gateway
  ///   timeout status.
  ///
  /// The "only-if-cached" mode can only be used if the request's `mode` is
  /// "same-origin". Cached redirects will be followed if the request's
  /// `redirect` property is "follow" and the redirects do not violate the
  /// "same-origin" mode.
  onlyIfCached,

  /// The browser fetches the resource from the remote server without first
  /// looking in the cache, *but then will* update the cache with the downloaded
  /// resource.
  reload,
}

/// Controls what browsers do with credentials (cookies, HTTP authentication
/// entries, and TLS client certificates).
enum RequestCredentials with JSEnum {
  /// The default behavior.
  default$,

  /// Tells browsers to include credentials in both same- and cross-origin
  /// requests, and always use any credentials sent back in responses.
  include,

  /// Tells browsers to exclude credentials from the request, and ignore any
  /// credentials sent back in the response (e.g., any `Set-Cookie` header).
  omit,

  /// Tells browsers to include credentials with requests to same-origin URLs,
  /// and use any credentials sent back in responses from same-origin URLs.
  sameOrigin,
}

/// How to handle a redirect response of a [Request].
enum RequestRedirect with JSEnum {
  /// The default behavior.
  default$,

  /// Automatically follow redirects.
  follow,

  /// Abort with an error if a redirect occurs.
  error,

  /// Caller intends to process the response in another context.
  manual,
}

/// The type of content being requested in a [Request].
enum RequestDestination with JSEnum {
  /// The default value of destination is used for destinations that do not have
  /// their own value.
  default$,

  /// The target is audio data.
  audio,

  /// The target is data being fetched for use by an audio worklet.
  audioworklet,

  /// The target is a document (HTML or XML).
  document,

  /// The target is embedded content.
  embed,

  /// The target is a font.
  font,

  /// The target is an image.
  image,

  /// The target is a manifest.
  manifest,

  /// The target is an object.
  object,

  /// The target is a paint worklet.
  paintworklet,

  /// The target is a report.
  report,

  /// The target is a script.
  script,

  /// The target is a shared worker.
  sharedworker,

  /// The target is a style.
  style,

  /// The target is an HTML `<track>`.
  track,

  /// The target is video data.
  video,

  /// The target is a worker.
  worker,

  /// The target is an XSLT transform.
  xslt,
}

/// The mode used for a [Request].
enum RequestMode with JSEnum {
  /// The default behavior.
  default$,

  /// Allows cross-origin requests, for example to access various APIs offered
  /// by 3rd party vendors.
  cors,

  /// Prevents the method from being anything other than `HEAD`, `GET` or
  /// `POST`, and the headers from being anything other than simple headers.
  ///
  /// If any ServiceWorkers intercept these requests, they may not add or
  /// override any headers except for those that are simple headers. In
  /// addition, JavaScript may not access any properties of the resulting
  /// [Response]. This ensures that ServiceWorkers do not affect the semantics
  /// of the Web and prevents security and privacy issues arising from leaking
  /// data across domains.
  noCors,

  /// If a request is made to another origin with this mode set, the result is
  /// an error. You could use this to ensure that a request is always being made
  /// to your origin.
  sameOrigin,
}

/// {@template aws_common.js.request_init}
/// Defines the resource that you wish to [fetch].
/// {@endtemplate}
@JS()
@anonymous
@staticInterop
abstract class RequestInit {
  /// {@macro aws_common.js.request_init}
  factory RequestInit({
    RequestCache cache = RequestCache.default$,
    RequestCredentials credentials = RequestCredentials.default$,
    RequestMode mode = RequestMode.default$,
    RequestDestination destination = RequestDestination.default$,
    RequestRedirect redirect = RequestRedirect.default$,

    /// A string specifying the referrer of the request. This can be a
    /// same-origin URL, about:client, or an empty string.
    String? referrer,

    /// Contains the subresource integrity value of the request.
    String? integrity,

    /// The keepalive option can be used to allow the request to outlive the
    /// page.
    bool? keepalive,
    AbortSignal? signal,
    AWSHttpMethod method = AWSHttpMethod.get,
    Map<String, String>? headers,
    Object? /*Stream<List<int>>|List<int>|null*/ body,
  }) {
    return createRequestInit(
      cache: cache,
      credentials: credentials,
      mode: mode,
      destination: destination,
      redirect: redirect,
      referrer: referrer,
      integrity: integrity,
      keepalive: keepalive,
      signal: signal,
      method: method,
      headers: headers,
      body: body,
    );
  }

  external factory RequestInit._({
    String? cache,
    String? credentials,
    String? mode,
    String? destination,
    String? redirect,
    String? referrer,
    Object? headers,
    String? integrity,
    String? duplex,
    AbortSignal? signal,
    bool? keepalive,
    String? method,
    Object? body,
  });
}

/// Factory for [RequestInit].
///
// TODO(dnys1): Remove when fixed https://github.com/dart-lang/sdk/issues/49778.
@internal
RequestInit createRequestInit({
  RequestCache cache = RequestCache.default$,
  RequestCredentials credentials = RequestCredentials.default$,
  RequestMode mode = RequestMode.default$,
  RequestDestination destination = RequestDestination.default$,
  RequestRedirect redirect = RequestRedirect.default$,

  /// A string specifying the referrer of the request. This can be a
  /// same-origin URL, about:client, or an empty string.
  String? referrer,

  /// Contains the subresource integrity value of the request.
  String? integrity,

  /// The keepalive option can be used to allow the request to outlive the
  /// page.
  bool? keepalive,
  AbortSignal? signal,
  AWSHttpMethod method = AWSHttpMethod.get,
  Map<String, String>? headers,
  Object? /*Stream<List<int>>|List<int>|null*/ body,
}) {
  // `fetch` does not allow bodies for these methods.
  final cannotHaveBody =
      method == AWSHttpMethod.get || method == AWSHttpMethod.head;
  if (cannotHaveBody) {
    body = null;
  }
  if (body is Stream<List<int>>) {
    body = body.asReadableStream();
  }
  return RequestInit._(
    cache: cache.jsValue,
    credentials: credentials.jsValue,
    mode: mode.jsValue,
    destination: destination.jsValue,
    redirect: redirect.jsValue,
    referrer: referrer ?? undefined,
    headers: headers != null ? js_util.jsify(headers) : undefined,
    integrity: integrity ?? undefined,
    keepalive: keepalive ?? undefined,
    method: method.value,
    signal: signal ?? undefined,
    body: body ?? undefined,
    // Added for full compatibility with all `fetch` impls:
    // https://developer.chrome.com/articles/fetch-streaming-requests/#half-duplex
    duplex: 'half',
  );
}

/// {@template aws_common.js.headers}
/// The Headers interface of the Fetch API allows you to perform various
/// actions on HTTP request and response headers.
///
/// These actions include retrieving, setting, adding to, and removing headers
/// from the list of the request's headers.
/// {@endtemplate}
@JS()
@staticInterop
class Headers {
  /// {@macro aws_common.js.headers}
  external factory Headers(Map<String, String> headers);
}

/// {@macro aws_common.js.headers}
extension PropsHeaders on Headers {
  /// Alias for [get].
  String? operator [](String name) => get(name);

  /// Alias for [set].
  void operator []=(String name, String value) => set(name, value);

  /// Appends a new value onto an existing header inside a Headers object, or
  /// adds the header if it does not already exist.
  external void append(String name, String value);

  /// Deletes a header.
  external void delete(String name);

  /// Returns a String sequence of all the values of a header within a
  /// [Headers] object with a given [name].
  external String? get(String name);

  /// Returns a boolean stating whether a [Headers] object contains a certain
  /// [header].
  external bool has(String header);

  /// Sets a new value for an existing header inside a [Headers] object, or adds
  /// the header if it does not already exist.
  external void set(String name, String value);

  /// Executes [callback] once for each array element.
  void forEach(
    void Function(String value, String key, Headers parent) callback,
  ) =>
      js_util.callMethod(this, 'forEach', [allowInterop(callback)]);
}

/// {@template aws_common.js.request}
/// The Request interface of the Fetch API represents a resource request.
/// {@endtemplate}
@JS()
@staticInterop
class Request {
  /// {@macro aws_common.js.request}
  external factory Request(String url, [RequestInit? init]);
}

/// {@template aws_common.js.response}
/// The Response interface of the Fetch API represents the response to a
/// request.
/// {@endtemplate}
@JS()
@staticInterop
class Response {
  /// {@macro aws_common.js.response}
  external factory Response(String url, [RequestInit? init]);
}

/// Used to expand [Response] and treat `Response.body` as a `late final`
/// property so that multiple accesses return the same value.
final Expando<ReadableStreamView> _responseStreams = Expando('ResponseStreams');

/// {@macro aws_common.js.response}
extension PropsResponse on Response {
  /// The response's body as a Dart [Stream].
  ReadableStreamView get body => _responseStreams[this] ??=
      js_util.getProperty<ReadableStream?>(this, 'body')?.stream ??
          const ReadableStreamView.empty();

  /// The response's headers.
  Map<String, String> get headers {
    final Map<String, String> headers = CaseInsensitiveMap({});
    js_util.getProperty<Headers>(this, 'headers').forEach((value, key, _) {
      headers[key] = value;
    });
    return headers;
  }

  /// The status code of the response.
  external int get status;

  /// The status message corresponding to [status].
  external String get statusText;

  /// Whether or not the response is the result of a redirect.
  external bool get redirected;
}

@JS('fetch')
external Promise<Response> _fetch(String url, [RequestInit? init]);

/// The global fetch() method starts the process of fetching a resource from
/// the network, returning a promise which is fulfilled once the response is
/// available.
Future<Response> fetch(String url, [RequestInit? init]) {
  return _fetch(url, init).future;
}
