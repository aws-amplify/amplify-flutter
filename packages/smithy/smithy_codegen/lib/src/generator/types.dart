// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';
import 'dart:convert' as convert;
import 'dart:core' as core;
import 'dart:typed_data';

import 'package:aws_common/aws_common.dart' as aws_common;
import 'package:aws_signature_v4/aws_signature_v4.dart' as aws_sig_v4;
import 'package:built_collection/built_collection.dart' as built_collection;
import 'package:built_value/built_value.dart' as built_value;
import 'package:built_value/json_object.dart' as built_value_json_object;
import 'package:built_value/serializer.dart' as built_value_serializer;
import 'package:code_builder/code_builder.dart';
import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart' as meta;
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf_router/shelf_router.dart' as shelf_router;
import 'package:smithy/smithy.dart' as smithy;
import 'package:smithy_aws/smithy_aws.dart' as smithy_aws;
import 'package:xml/xml.dart' as xml;

/// Common type references used throughout code generation.
abstract class DartTypes {
  DartTypes._();

  /// `dart:core` types.
  static const core = _Core();

  /// `dart:async` types.
  static const async = _Async();

  /// `package:aws_common` types.
  static const awsCommon = _AwsCommon();

  /// `package:aws_signature_v4` types.
  static const awsSigV4 = _AwsSigV4();

  /// `package:built_value` types.
  static const builtValue = BuiltValueType._();

  /// `dart:convert` types.
  static const convert = _Convert();

  /// `package:fixnum` types.
  static const fixNum = FixNum();

  /// `package:meta` types.
  static const meta = _Meta();

  /// `package:shelf` types.
  static const shelf = _Shelf();

  /// `package:shelf_router` types.
  static const shelfRouter = ShelfRouter();

  /// `package:smithy` types.
  static const smithy = _Smithy();

  /// `package:smithy_aws` types.
  static const smithyAws = _SmithyAws();

  /// `package:test` types.
  static const test = _Test();

  /// `package:smithy_test` types.
  static const smithyTest = _SmithyTest();

  /// `dart:typed_data` types.
  static const typedData = _TypedData();

  /// `package:xml` types.
  static const xml = _Xml();
}

/// `dart:core` types
class _Core {
  const _Core();

  static const _url = 'dart:core';

  /// Creates a [core.BigInt] reference.
  Reference get bigInt => const Reference('BigInt', _url);

  /// Creates a [core.bool] reference.
  Reference get bool => const Reference('bool', _url);

  /// Creates a [core.DateTime] reference.
  Reference get dateTime => const Reference('DateTime', _url);

  /// Creates a [core.Deprecated] reference.
  Reference get deprecated => const Reference('Deprecated', _url);

  /// Creates a [core.double] reference.
  Reference get double => const Reference('double', _url);

  /// Creates a [core.Duration] reference.
  Reference get duration => const Reference('Duration', _url);

  /// Creates a [core.Exception] reference.
  Reference get exception => const Reference('Exception', _url);

  /// Creates a [core.Function] reference.
  Reference get function => const Reference('Function', _url);

  /// Creates an [core.int] reference.
  Reference get int => const Reference('int', _url);

  /// Creates a [core.Iterable] reference.
  Reference iterable([Reference? ref]) => TypeReference(
        (t) => t
          ..symbol = 'Iterable'
          ..url = _url
          ..types.addAll([
            if (ref != null) ref,
          ]),
      );

  /// Creates a [core.List] reference.
  Reference list([Reference? ref]) => TypeReference(
        (t) => t
          ..symbol = 'List'
          ..url = _url
          ..types.addAll([
            if (ref != null) ref,
          ]),
      );

  /// Creates a [core.Map] reference.
  Reference map(Reference key, Reference value) => TypeReference(
        (t) => t
          ..symbol = 'Map'
          ..url = _url
          ..types.add(key)
          ..types.add(value),
      );

  /// Creates an [core.MapEntry] reference.
  Reference get mapEntry => const Reference('MapEntry', _url);

  /// Creates a [core.Null] reference.
  Reference get null$ => const Reference('Null', _url);

  /// Creates an [core.Object] reference.
  Reference get object => const Reference('Object', _url);

  /// Creates a [core.override] reference.
  Reference get override => const Reference('override', _url);

  /// Creates a [core.RegExp] reference.
  Reference get regExp => const Reference('RegExp', _url);

  /// Creates a [core.Set] reference.
  Reference set(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'Set'
          ..url = _url
          ..types.add(ref),
      );

  /// Create a [core.StateError] reference.
  Reference get stateError => const Reference('StateError', _url);

  /// Creates a [core.String] reference.
  Reference get string => const Reference('String', _url);

  /// Creates a [core.Type] reference.
  Reference get type => const Reference('Type', _url);

  /// Creates a [core.Uri] reference.
  Reference get uri => const Reference('Uri', _url);

  /// Creates a `void` reference.
  Reference get void$ => const Reference('void');
}

/// `dart:async` types
class _Async {
  const _Async();

  static const _url = 'dart:async';

  /// Creates a [Future] reference.
  Reference future(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'Future'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates a [Stream] reference.
  Reference stream([Reference? ref]) => TypeReference(
        (t) => t
          ..symbol = 'Stream'
          ..url = _url
          ..types.addAll([
            if (ref != null) ref,
          ]),
      );

  /// Creates a `runZoned` refererence.
  Reference get runZoned => const Reference('runZoned', _url);
}

/// `package:aws_common` types.
class _AwsCommon {
  const _AwsCommon();

  static const _url = 'package:aws_common/aws_common.dart';

  /// Creates an [aws_common.AWSEquatable] reference.
  Reference awsEquatable(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'AWSEquatable'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates an [aws_common.AWSHeaders] reference.
  Reference get awsHeaders => const Reference('AWSHeaders', _url);

  /// Creates an [aws_common.AWSHttpClient] reference.
  Reference get awsHttpClient => const Reference('AWSHttpClient', _url);

  /// Creates an [aws_common.AWSHttpMethod] reference.
  Reference get awsHttpMethod => const Reference('AWSHttpMethod', _url);

  /// Creates an [aws_common.AWSSerializable] reference.
  Reference get awsSerializable => const Reference('AWSSerializable', _url);

  /// Creates an [aws_common.AWSService] reference.
  Reference get awsService => const Reference('AWSService', _url);

  /// Creates an [aws_common.AWSBaseHttpRequest] reference.
  Reference get awsBaseHttpRequest =>
      const Reference('AWSBaseHttpRequest', _url);

  /// Creates an [aws_common.AWSBaseHttpResponse] reference.
  Reference get awsBaseHttpResponse =>
      const Reference('AWSBaseHttpResponse', _url);

  /// Creates an [aws_common.AWSHttpRequest] reference.
  Reference get awsHttpRequest => const Reference('AWSHttpRequest', _url);

  /// Creates an [aws_common.AWSStreamedHttpRequest] reference.
  Reference get awsStreamedHttpRequest =>
      const Reference('AWSStreamedHttpRequest', _url);

  /// Creates a secure [aws_common.uuid] instance.
  Expression uuid() => const Reference('uuid', _url).call([], {
        'secure': literalTrue,
      });
}

/// `package:aws_signature_v4` types.
class _AwsSigV4 {
  const _AwsSigV4();

  static const _url = 'package:aws_signature_v4/aws_signature_v4.dart';

  /// Creates an [aws_sig_v4.AWSCredentials] reference.
  Reference get awsCredentials => const Reference('AWSCredentials', _url);

  /// Creates an [aws_sig_v4.AWSCredentialsProvider] reference.
  Reference get awsCredentialsProvider =>
      const Reference('AWSCredentialsProvider', _url);

  /// Creates an [aws_sig_v4.S3ServiceConfiguration] reference.
  Reference get s3ServiceConfiguration =>
      const Reference('S3ServiceConfiguration', _url);
}

/// `package:built_value` types
class BuiltValueType {
  const BuiltValueType._();

  static const mainUrl = 'package:built_value/built_value.dart';
  static const serializerUrl = 'package:built_value/serializer.dart';
  static const jsonUrl = 'package:built_value/json_object.dart';
  static const collectionUrl = 'package:built_collection/built_collection.dart';

  /// A [built_value.BuiltValue] reference.
  Reference get builtValue => const Reference('BuiltValue', mainUrl);

  /// A [built_value.BuiltValueField] reference.
  Reference get builtValueField => const Reference('BuiltValueField', mainUrl);

  /// A [built_value.BuiltValueHook] reference.
  Reference get builtValueHook => const Reference('BuiltValueHook', mainUrl);

  /// Creates a [built_value.Built] reference for [ref] and its builder class,
  /// [builderRef].
  Reference built(Reference ref, Reference builderRef) => TypeReference(
        (t) => t
          ..symbol = 'Built'
          ..url = mainUrl
          ..types.addAll([ref, builderRef]),
      );

  /// Creates a [built_collection.BuiltList] reference for generic type [ref].
  Reference builtList(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'BuiltList'
          ..url = collectionUrl
          ..types.add(ref),
      );

  /// Creates a [built_collection.BuiltListMultimap] reference with key [key]
  /// and [value] generic types.
  ///
  /// For example, a key of [core.String] and value of [core.String] creates
  /// a `BuiltListMultimap<String, String>` which is the same a
  /// `Map<String, List<String>>` when built.
  Reference builtListMultimap(Reference key, Reference value) => TypeReference(
        (t) => t
          ..symbol = 'BuiltListMultimap'
          ..url = collectionUrl
          ..types.addAll([key, value]),
      );

  /// Creates a [built_collection.BuiltMap] reference with [key] and [value]
  /// generic types.
  Reference builtMap(Reference key, Reference value) => TypeReference(
        (t) => t
          ..symbol = 'BuiltMap'
          ..url = collectionUrl
          ..types.add(key)
          ..types.add(value),
      );

  /// Creates a [built_collection.BuiltSet] reference for generic type [ref].
  Reference builtSet(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'BuiltSet'
          ..url = collectionUrl
          ..types.add(ref),
      );

  /// Creates a [built_collection.BuiltSetMultimap] reference with key [key]
  /// and [value] generic types.
  ///
  /// For example, a key of [core.String] and value of [core.String] creates
  /// a `BuiltSetMultimap<String, String>` which is the same a
  /// `Map<String, Set<String>>` when built.
  Reference builtSetMultimap(Reference key, Reference value) => TypeReference(
        (t) => t
          ..symbol = 'BuiltSetMultimap'
          ..url = collectionUrl
          ..types.addAll([key, value]),
      );

  /// Creates a [built_value_serializer.FullType] reference.
  Reference get fullType => const Reference('FullType', serializerUrl);

  /// Creates a [built_value_json_object.JsonObject] reference.
  Reference get jsonObject => const Reference('JsonObject', jsonUrl);

  /// The builder for [built_collection.ListBuilder].
  Reference listBuilder(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'ListBuilder'
          ..url = collectionUrl
          ..types.add(ref),
      );

  /// The builder for [built_collection.BuiltListMultimap].
  Reference listMultimapBuilder(Reference key, Reference value) =>
      TypeReference(
        (t) => t
          ..symbol = 'ListMultimapBuilder'
          ..url = collectionUrl
          ..types.addAll([key, value]),
      );

  /// The builder for [built_collection.MapBuilder].
  Reference mapBuilder(Reference key, Reference value) => TypeReference(
        (t) => t
          ..symbol = 'MapBuilder'
          ..url = collectionUrl
          ..types.addAll([key, value]),
      );

  /// Creates a [built_value.newBuiltValueToStringHelper] reference.
  Reference get newBuiltValueToStringHelper =>
      const Reference('newBuiltValueToStringHelper', mainUrl);

  /// Creates a [built_value_serializer.PrimitiveSerializer] reference for
  /// generic type [ref].
  Reference primitiveSerializer(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'PrimitiveSerializer'
          ..url = serializerUrl
          ..types.add(ref),
      );

  /// The builder for [built_collection.SetBuilder].
  Reference setBuilder(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'SetBuilder'
          ..url = collectionUrl
          ..types.add(ref),
      );

  /// The builder for [built_collection.BuiltSetMultimap].
  Reference setMultimapBuilder(Reference key, Reference value) => TypeReference(
        (t) => t
          ..symbol = 'SetMultimapBuilder'
          ..url = collectionUrl
          ..types.addAll([key, value]),
      );

  /// Creates a [built_value_serializer.Serializers] reference.
  Reference get serializers => const Reference('Serializers', serializerUrl);
}

/// `dart:convert` types
class _Convert {
  const _Convert();

  static const _url = 'dart:convert';

  /// Creates a [convert.base64Decode] reference.
  Reference get base64Decode => const Reference('base64Decode', _url);

  /// Creates a [convert.base64Encode] reference.
  Reference get base64Encode => const Reference('base64Encode', _url);

  /// Creates a [convert.jsonEncode] reference.
  Reference get jsonEncode => const Reference('jsonEncode', _url);

  /// Creates a [convert.jsonDecode] reference.
  Reference get jsonDecode => const Reference('jsonDecode', _url);

  /// Creates a [convert.utf8] reference.
  Reference get utf8 => const Reference('utf8', _url);
}

/// `package:fixnum` types
class FixNum {
  const FixNum();

  static const url = 'package:fixnum/fixnum.dart';

  /// Creates an [Int64] reference.
  Reference get int64 => const Reference('Int64', url);
}

/// `package:meta` types.
class _Meta {
  const _Meta();

  static const _url = 'package:meta/meta.dart';

  /// Creates a [meta.experimental] reference.
  Reference get experimental => const Reference('experimental', _url);

  /// Creates a [meta.internal] reference.
  Reference get internal => const Reference('internal', _url);

  /// Creates a [meta.immutable] reference.
  Reference get immutable => const Reference('immutable', _url);
}

/// `package:shelf` types
class _Shelf {
  const _Shelf();

  static const _url = 'package:shelf/shelf.dart';

  /// Creates a [shelf.Request] reference.
  Reference get request => const Reference('Request', _url);

  /// Creates a [shelf.Response] reference.
  Reference get response => const Reference('Response', _url);
}

/// `package:shelf_router` types
class ShelfRouter {
  const ShelfRouter();

  static const url = 'package:shelf_router/shelf_router.dart';

  /// Creates a [shelf_router.Route] reference.
  Reference get route => const Reference('Route', url);

  /// Creates a [shelf_router.Router] reference.
  Reference get router => const Reference('Router', url);
}

/// `package:smithy` types
class _Smithy {
  const _Smithy();

  static const _url = 'package:smithy/smithy.dart';

  /// Creates a [smithy.Acceptor] reference.
  Reference acceptor(Reference input, Reference output) => TypeReference(
        (t) => t
          ..symbol = 'Acceptor'
          ..types.addAll([input, output])
          ..url = _url,
      );

  /// Creates a [smithy.AcceptorState] reference.
  Reference get acceptorState => const Reference('AcceptorState', _url);

  /// Creates a [smithy.BlobSerializer] reference.
  Reference get blobSerializer => const Reference('BlobSerializer', _url);

  /// Creates a [smithy.EmptyPayload] reference.
  Reference get emptyPayload => const Reference('EmptyPayload', _url);

  /// Creates a [smithy.ErrorKind] reference.
  Reference get errorKind => const Reference('ErrorKind', _url);

  /// Creates a [smithy.EncodedJsonObjectSerializer] reference.
  Reference get encodedJsonObjectSerializer =>
      const Reference('EncodedJsonObjectSerializer', _url);

  /// Creates a [smithy.Endpoint] refererence.
  Reference get endpoint => const Reference('Endpoint', _url);

  /// Creates a `GenericJsonProtocol` refererence.
  Reference get genericJsonProtocol =>
      const Reference('GenericJsonProtocol', _url);

  /// Creates a [smithy.HasPayload] reference for [ref], the payload type.
  Reference hasPayload(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'HasPayload'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates a [smithy.HttpServerBase] refererence.
  Reference get httpServerBase => const Reference('HttpServerBase', _url);

  /// Creates a [smithy.Context] refererence.
  Reference get context => const Reference('Context', _url);

  /// Creates a [smithy.RequestContext] refererence.
  Reference get requestContext => const Reference('RequestContext', _url);

  /// Creates a [smithy.ResponseContext] refererence.
  Reference get responseContext => const Reference('ResponseContext', _url);

  /// Creates a [smithy.HttpRequestInterceptor] refererence.
  Reference get httpRequestInterceptor =>
      const Reference('HttpRequestInterceptor', _url);

  /// Creates a [smithy.HttpResponseInterceptor] refererence.
  Reference get httpResponseInterceptor =>
      const Reference('HttpResponseInterceptor', _url);

  /// Creates a [smithy.HttpServer] refererence.
  Reference httpServer(Reference baseService) => TypeReference((t) => t
    ..symbol = 'HttpServer'
    ..url = _url
    ..types.add(baseService));

  /// Creates a [smithy.HttpInput] reference for [ref], the input type.
  Reference httpInput(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'HttpInput'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates a [smithy.HttpOperation] reference for an operation with input
  /// payload type [inputPayload], input type [input], and output type [output].
  Reference httpOperation(
    Reference inputPayload,
    Reference input,
    Reference outputPayload,
    Reference output,
  ) =>
      TypeReference(
        (t) => t
          ..symbol = 'HttpOperation'
          ..url = _url
          ..types.addAll([inputPayload, input, outputPayload, output]),
      );

  /// Creates a [smithy.HttpProtocol] reference for an operation with input
  /// payload type [inputPayload], input type [input], and output type [output].
  Reference httpProtocol([
    Reference? inputPayload,
    Reference? input,
    Reference? outputPayload,
    Reference? output,
  ]) =>
      TypeReference(
        (t) => t
          ..symbol = 'HttpProtocol'
          ..url = _url
          ..types.addAll([
            if (inputPayload != null) inputPayload,
            if (input != null) input,
            if (outputPayload != null) outputPayload,
            if (output != null) output,
          ]),
      );

  /// Creates a [smithy.HttpRequest] AST reference.
  Reference get httpRequest => const Reference('HttpRequest', _url);

  /// Creates a [smithy.HttpRequestBuilder] AST reference.
  Reference get httpRequestBuilder =>
      const Reference('HttpRequestBuilder', _url);

  /// Creates a [smithy.HttpRequestContext] AST reference.
  Reference get httpRequestContext =>
      const Reference('HttpRequestContext', _url);

  /// Creates a [smithy.MissingLabelException] reference.
  Reference get missingLabelException =>
      const Reference('MissingLabelException', _url);

  /// Creates a [smithy.PaginatedHttpOperation] reference for an operation with input
  /// payload type [inputPayload], input type [input], and output type [output].
  Reference paginatedHttpOperation(
    Reference inputPayload,
    Reference input,
    Reference outputPayload,
    Reference output,
    Reference tokenSymbol,
    Reference pageSizeSymbol,
    Reference itemsSymbol,
  ) =>
      TypeReference(
        (t) => t
          ..symbol = 'PaginatedHttpOperation'
          ..url = _url
          ..types.addAll([
            inputPayload,
            input,
            outputPayload,
            output,
            tokenSymbol,
            pageSizeSymbol,
            itemsSymbol,
          ]),
      );

  /// Creates a [smithy.PaginatedResult] reference.
  Reference paginatedResult(
    Reference itemsRef,
    Reference pageSizeRef,
    Reference tokenRef,
  ) =>
      TypeReference(
        (t) => t
          ..url = _url
          ..symbol = 'PaginatedResult'
          ..types.addAll([itemsRef, pageSizeRef, tokenRef]),
      );

  /// Creates a [smithy.parseHeader] reference.
  Reference get parseHeader => const Reference('parseHeader', _url);

  /// Creates a [smithy.PrimitiveSmithySerializer] reference for [ref], the
  /// class being serialized.
  Reference primitiveSmithySerializer([Reference? ref]) => TypeReference(
        (t) => t
          ..symbol = 'PrimitiveSmithySerializer'
          ..url = _url
          ..types.addAll([
            if (ref != null) ref,
          ]),
      );

  /// Creates a [smithy.RpcRouter] reference.
  Reference get rpcRouter => const Reference('RpcRouter', _url);

  /// Creates a [smithy.RetryConfig] reference.
  Reference get retryConfig => const Reference('RetryConfig', _url);

  /// Creates a [smithy.sanitizeHeader] reference.
  Reference get sanitizeHeader => const Reference('sanitizeHeader', _url);

  /// Creates a [smithy.ShapeId] AST reference.
  Reference get shapeId => const Reference('ShapeId', _url);

  /// Creates a [smithy.SmithyEnum] reference for [ref], the enum class.
  Reference smithyEnum(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'SmithyEnum'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates a [smithy.SmithyIntEnum] reference for [ref], the enum class.
  Reference smithyIntEnum(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'SmithyIntEnum'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates a [smithy.SmithyEnumSerializer] reference.
  Reference get smithyEnumSerializer =>
      const Reference('SmithyEnumSerializer', _url);

  /// Creates a [smithy.SmithyIntEnumSerializer] reference.
  Reference get smithyIntEnumSerializer =>
      const Reference('SmithyIntEnumSerializer', _url);

  /// Creates a [smithy.SmithyError] reference.
  Reference get smithyError => const Reference('SmithyError', _url);

  /// Creates a [smithy.SmithyException] reference.
  Reference get smithyException => const Reference('SmithyException', _url);

  /// Creates a [smithy.SmithyHttpException] reference.
  Reference get smithyHttpException =>
      const Reference('SmithyHttpException', _url);

  /// Creates a [smithy.SmithyOperation] reference for an operation with output
  /// type [output].
  Reference smithyOperation(Reference output) => TypeReference(
        (t) => t
          ..symbol = 'SmithyOperation'
          ..url = _url
          ..types.add(output),
      );

  /// Creates a [smithy.SmithyUnion] reference for [ref], the union class.
  Reference smithyUnion(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'SmithyUnion'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates a [smithy.SmithySerializer] reference for [ref], the class being
  /// serialized.
  Reference smithySerializer([Reference? ref]) => TypeReference(
        (t) => t
          ..symbol = 'SmithySerializer'
          ..url = _url
          ..types.addAll([
            if (ref != null) ref,
          ]),
      );

  /// Creates a [smithy.StructuredSmithySerializer] reference for [ref], the
  /// class being serialized.
  Reference structuredSmithySerializer([Reference? ref]) => TypeReference(
        (t) => t
          ..symbol = 'StructuredSmithySerializer'
          ..url = _url
          ..types.addAll([
            if (ref != null) ref,
          ]),
      );

  /// Creates a [smithy.Timestamp] reference.
  Reference get timestamp => const Reference('Timestamp', _url);

  /// Creates a [smithy.TimestampFormat] reference.
  Reference get timestampFormat => const Reference('TimestampFormat', _url);

  /// Creates a [smithy.TimestampSerializer] reference.
  Reference get timestampSerializer =>
      const Reference('TimestampSerializer', _url);

  /// Creates a [smithy.Unit] reference.
  Reference get unit => const Reference('Unit', _url);

  /// Creates a [smithy.ValidateChecksum] reference.
  Reference get validateChecksum => const Reference('ValidateChecksum', _url);

  /// Creates a [smithy.Waiter] reference.
  Reference waiter(Reference inputType, Reference outputType) => TypeReference(
        (t) => t
          ..symbol = 'Waiter'
          ..types.addAll([inputType, outputType])
          ..url = _url,
      );

  /// Creates a [smithy.WithChecksum] reference.
  Reference get withChecksum => const Reference('WithChecksum', _url);

  /// Creates a [smithy.WithContentLength] reference.
  Reference get withContentLength => const Reference('WithContentLength', _url);

  /// Creates a [smithy.WithHeader] reference.
  Reference get withHeader => const Reference('WithHeader', _url);

  /// Creates a [smithy.WithHost] reference.
  Reference get withHost => const Reference('WithHost', _url);

  /// Creates a [smithy.WithNoHeader] reference.
  Reference get withNoHeader => const Reference('WithNoHeader', _url);

  /// Creates a [smithy.WithUserAgent] reference.
  Reference get withUserAgent => const Reference('WithUserAgent', _url);

  /// Creates a [smithy.XmlBuiltListSerializer] reference.
  Reference get xmlBuiltListSerializer =>
      const Reference('XmlBuiltListSerializer', _url);

  /// Creates a [smithy.XmlBuiltMapSerializer] reference.
  Reference get xmlBuiltMapSerializer =>
      const Reference('XmlBuiltMapSerializer', _url);

  /// Creates a [smithy.XmlBuiltSetSerializer] reference.
  Reference get xmlBuiltSetSerializer =>
      const Reference('XmlBuiltSetSerializer', _url);

  /// Creates a [smithy.XmlElementName] reference.
  Reference get xmlElementName => const Reference('XmlElementName', _url);

  /// Creates a [smithy.XmlNamespace] reference.
  Reference get xmlNamespace => const Reference('XmlNamespace', _url);
}

/// `package:smithy_aws` types.
class _SmithyAws {
  const _SmithyAws();

  static const _url = 'package:smithy_aws/smithy_aws.dart';

  /// Creates a [smithy_aws.AWSEndpoint] refererence.
  Reference get awsEndpoint => const Reference('AWSEndpoint', _url);

  /// Creates a [smithy_aws.AWSEndpointResolver] refererence.
  Reference get awsEndpointResolver =>
      const Reference('AWSEndpointResolver', _url);

  /// Creates a [smithy_aws.AwsJson1_0Protocol] refererence.
  Reference get awsJson1_0Protocol =>
      const Reference('AwsJson1_0Protocol', _url);

  /// Creates a [smithy_aws.AwsJson1_1Protocol] refererence.
  Reference get awsJson1_1Protocol =>
      const Reference('AwsJson1_1Protocol', _url);

  /// Creates a [smithy_aws.AWSRetryer] refererence.
  Reference get awsRetryer => const Reference('AWSRetryer', _url);

  /// Creates a [smithy_aws.AWSSignatureVersion] refererence.
  Reference get awsSignatureVersion =>
      const Reference('AWSSignatureVersion', _url);

  /// Creates a [smithy_aws.CheckErrorOnSuccess] refererence.
  Reference get checkErrorOnSuccess =>
      const Reference('CheckErrorOnSuccess', _url);

  /// Creates a [smithy_aws.CheckPartialResponse] refererence.
  Reference get checkPartialResponse =>
      const Reference('CheckPartialResponse', _url);

  /// Creates a [smithy_aws.CredentialScope] refererence.
  Reference get credentialScope => const Reference('CredentialScope', _url);

  /// Creates a [smithy_aws.EndpointDefinition] refererence.
  Reference get endpointDefinition =>
      const Reference('EndpointDefinition', _url);

  /// Creates a [smithy_aws.EndpointDefinitionVariant] refererence.
  Reference get endpointDefinitionVariant =>
      const Reference('EndpointDefinitionVariant', _url);

  /// Creates a [smithy_aws.Partition] refererence.
  Reference get partition => const Reference('Partition', _url);

  /// Creates a [smithy_aws.RestJson1Protocol] refererence.
  Reference get restJson1Protocol => const Reference('RestJson1Protocol', _url);

  /// Creates a [smithy_aws.RestXmlProtocol] refererence.
  Reference get restXmlProtocol => const Reference('RestXmlProtocol', _url);

  /// Creates a [smithy_aws.S3ClientConfig] refererence.
  Reference get s3ClientConfig => const Reference('S3ClientConfig', _url);

  /// Creates a [smithy_aws.WithChecksum] refererence.
  Reference get withChecksum => const Reference('WithChecksum', _url);

  /// Creates a [smithy_aws.WithSdkInvocationId] refererence.
  Reference get withSdkInvocationId =>
      const Reference('WithSdkInvocationId', _url);

  /// Creates a [smithy_aws.WithSdkRequest] refererence.
  Reference get withSdkRequest => const Reference('WithSdkRequest', _url);

  /// Creates a [smithy_aws.WithSigV4] refererence.
  Reference get withSigV4 => const Reference('WithSigV4', _url);
}

/// `package:smithy_test` types
class _SmithyTest {
  const _SmithyTest();

  static const _url = 'package:smithy_test/smithy_test.dart';

  /// Creates an `AppliesTo` reference.
  Reference get appliesTo => const Reference('AppliesTo', _url);

  /// Creates an `httpErrorResponseTest` reference.
  Reference get httpErrorResponseTest =>
      const Reference('httpErrorResponseTest', _url);

  /// Creates an `httpRequestTest` reference.
  Reference get httpRequestTest => const Reference('httpRequestTest', _url);

  /// Creates an `HttpRequestTestCase` reference.
  Reference get httpRequestTestCase =>
      const Reference('HttpRequestTestCase', _url);

  /// Creates an `httpResponseTest` reference.
  Reference get httpResponseTest => const Reference('httpResponseTest', _url);

  /// Creates an `HttpResponseTestCase` reference.
  Reference get httpResponseTestCase =>
      const Reference('HttpResponseTestCase', _url);

  /// Creates an `testSerializers` reference.
  Reference get testSerializers => const Reference('testSerializers', _url);
}

/// `package:test` types
class _Test {
  const _Test();

  static const _url = 'package:test/test.dart';

  /// Creates an `test` reference.
  Reference get test => const Reference('test', _url);
}

/// `dart:typed_data` types
class _TypedData {
  const _TypedData();

  static const _url = 'dart:typed_data';

  /// Creates a [Uint8List] reference.
  Reference get uint8List => const Reference('Uint8List', _url);
}

/// `package:xml` types
class _Xml {
  const _Xml();

  static const _url = 'package:xml/xml.dart';

  /// Creates a [xml.XmlName] reference.
  Reference get xmlName => const Reference('XmlName', _url);

  /// Creates a [xml.XmlAttribute] reference.
  Reference get xmlAttribute => const Reference('XmlAttribute', _url);
}
