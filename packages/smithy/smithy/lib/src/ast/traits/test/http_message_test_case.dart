// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:smithy/ast.dart';

enum AppliesTo { client, server }

/// Defines how an HTTP request is serialized given a specific protocol,
/// authentication scheme, and set of input parameters.
abstract class HttpMessageTestCase<T extends HttpMessageTestCase<T>>
    with AWSSerializable, AWSEquatable<T> {
  const HttpMessageTestCase({
    required this.id,
    this.documentation,
    required this.protocol,
    this.authScheme,
    this.body,
    this.bodyMediaType,
    this.params = const {},
    this.vendorParamsShape,
    this.vendorParams = const {},
    this.headers = const {},
    this.forbidHeaders = const [],
    this.requireHeaders = const [],
    this.tags = const [],
    this.appliesTo,
  });

  /// The identifier of the test case. This identifier can be used by protocol
  /// test implementations to filter out unsupported test cases by ID, to
  /// generate test case names, etc. The provided id MUST match Smithy's
  /// smithy:identifier ABNF. No two httpRequestTests test cases can share the
  /// same ID.
  final String id;

  /// A description of the test and what is being asserted defined in
  /// CommonMark.
  final String? documentation;

  /// A shape ID that targets a shape marked with the protocolDefinition trait.
  /// Because Smithy services can support multiple protocols, each test MUST
  /// specify which protocol is under test.
  final ShapeId protocol;

  /// A shape ID that specifies the optional authentication scheme to assume.
  /// It's possible that specific authentication schemes might influence the
  /// serialization logic of an HTTP request. The targeted shape MUST be marked
  /// with the [AuthDefinitionTrait] trait.
  final ShapeId? authScheme;

  /// The expected HTTP message body. If no request body is defined, then no
  /// assertions are made about the body of the message. Because the body
  /// parameter is a string, binary data MUST be represented in body by base64
  /// encoding the data (for example, use "Zm9vCg==" and not "foo").
  final String? body;

  /// The media type of the [body]. This is used to help test runners to parse
  /// and validate the expected data against generated data.
  final String? bodyMediaType;

  /// Defines the input parameters used to generate the HTTP request. These
  /// parameters MUST be compatible with the input of the operation.
  ///
  /// Parameter values that contain binary data MUST be defined using values
  /// that can be represented in plain text (for example, use "foo" and not
  /// "Zm9vCg=="). While this limits the kinds of binary values that can be
  /// tested in protocol tests, it allows protocol tests to demonstrate the
  /// requirement of many protocols that binary data is automatically base64
  /// encoded and decoded.
  final Map<String, Object?> params;

  /// A shape to be used to validate the [vendorParams] member contents.
  ///
  /// If set, the parameters in [vendorParams] MUST be compatible with this
  /// shape's definition.
  final ShapeId? vendorParamsShape;

  /// Defines vendor-specific parameters that are used to influence the request.
  /// For example, some vendors might utilize environment variables,
  /// configuration files on disk, or other means to influence the serialization
  /// formats used by clients or servers.
  ///
  /// If a [vendorParamsShape] is set, these parameters MUST be compatible with
  /// that shape's definition.
  final Map<String, Object?> vendorParams;

  /// A map of expected HTTP headers. Each key represents a header field name
  /// and each value represents the expected header value. An HTTP request is
  /// not in compliance with the protocol if any listed header is missing from
  /// the serialized request or if the expected header value differs from the
  /// serialized request value.
  ///
  /// Applies no constraints on additional headers.
  final Map<String, String> headers;

  /// A list of header field names that must not appear in the serialized HTTP
  /// request.
  final List<String> forbidHeaders;

  /// A list of header field names that must appear in the serialized HTTP
  /// message, but no assertion is made on the value. Headers listed in headers
  /// do not need to appear in this list.
  final List<String> requireHeaders;

  /// Attaches a list of tags that allow test cases to be categorized and
  /// grouped.
  final List<String> tags;

  /// Indicates that the test case is only to be implemented by "client" or
  /// "server" implementations. This property is useful for identifying and
  /// testing edge cases of clients and servers that are impossible or
  /// undesirable to test in both client and server implementations. For
  /// example, a "server" test might be useful to ensure a service can
  /// gracefully receive a request that optionally contains a payload.
  final AppliesTo? appliesTo;

  @override
  List<Object?> get props => [
        id,
        documentation,
        protocol,
        authScheme,
        body,
        bodyMediaType,
        params,
        vendorParamsShape,
        vendorParams,
        headers,
        forbidHeaders,
        requireHeaders,
        tags,
        appliesTo,
      ];
}
