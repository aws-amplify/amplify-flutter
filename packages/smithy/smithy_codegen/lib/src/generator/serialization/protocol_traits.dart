// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

part 'protocol_traits.g.dart';

abstract class ProtocolTraits
    implements Built<ProtocolTraits, ProtocolTraitsBuilder> {
  factory ProtocolTraits([void Function(ProtocolTraitsBuilder) updates]) =
      _$ProtocolTraits;
  ProtocolTraits._();

  String? get wireName;
  XmlNamespaceTrait? get namespace;
  BuiltSet<MemberShape> get attributeMembers;
  BuiltSet<MemberShape> get flattenedMembers;
  BuiltMap<MemberShape, XmlNamespaceTrait> get memberNamespaces;
  BuiltMap<MemberShape, String> get memberWireNames;
}

abstract class HttpPayload implements Built<HttpPayload, HttpPayloadBuilder> {
  factory HttpPayload([void Function(HttpPayloadBuilder) updates]) =
      _$HttpPayload;
  HttpPayload._();

  Reference get symbol;
  MemberShape? get member;
}

abstract class HttpPrefixHeaders
    implements Built<HttpPrefixHeaders, HttpPrefixHeadersBuilder> {
  factory HttpPrefixHeaders([void Function(HttpPrefixHeadersBuilder) updates]) =
      _$HttpPrefixHeaders;
  HttpPrefixHeaders._();

  HttpPrefixHeadersTrait get trait;
  MemberShape get member;
}

@BuiltValue(instantiable: false)
abstract class HttpTraits {
  BuiltMap<String, MemberShape> get httpHeaders;
  HttpPrefixHeaders? get httpPrefixHeaders;
}

abstract class HttpInputTraits
    implements HttpTraits, Built<HttpInputTraits, HttpInputTraitsBuilder> {
  factory HttpInputTraits([void Function(HttpInputTraitsBuilder) updates]) =
      _$HttpInputTraits;
  HttpInputTraits._();

  /// Shapes marked with an [HttpLabelTrait] annotation.
  BuiltSet<MemberShape> get httpLabels;
  MemberShape? get hostLabel;
  BuiltMap<String, MemberShape> get httpQuery;
  MemberShape? get httpQueryParams;
}

abstract class HttpOutputTraits
    implements HttpTraits, Built<HttpOutputTraits, HttpOutputTraitsBuilder> {
  factory HttpOutputTraits([void Function(HttpOutputTraitsBuilder) updates]) =
      _$HttpOutputTraits;
  HttpOutputTraits._();

  MemberShape? get httpResponseCode;
}

abstract class HttpErrorTraits
    implements HttpTraits, Built<HttpErrorTraits, HttpErrorTraitsBuilder> {
  factory HttpErrorTraits([void Function(HttpErrorTraitsBuilder) updates]) =
      _$HttpErrorTraits;
  HttpErrorTraits._();

  ShapeId get shapeId;
  ErrorKind get kind;
  Reference get symbol;
  Reference? get payloadSymbol;
  RetryConfig? get retryConfig;
  int? get statusCode;

  Expression get constInstance {
    return DartTypes.smithy.smithyError.constInstance(
      [
        shapeId.constructed,
        DartTypes.smithy.errorKind.property(kind.name),
        symbol,
      ],
      {
        if (statusCode != null) 'statusCode': literalNum(statusCode!),
        if (retryConfig != null)
          'retryConfig': DartTypes.smithy.retryConfig.constInstance([], {
            'isThrottlingError': literalBool(retryConfig!.isThrottlingError),
          }),
        'builder': symbol.property('fromResponse'),
      },
      [payloadSymbol ?? DartTypes.core.object.boxed, symbol],
    );
  }
}

abstract class PaginationItem
    implements Built<PaginationItem, PaginationItemBuilder> {
  factory PaginationItem([void Function(PaginationItemBuilder) updates]) =
      _$PaginationItem;
  PaginationItem._();

  MemberShape get member;
  bool get isNullable;
  Expression Function(Expression) get buildExpression;
  Reference get symbol;
}

abstract class PaginatedTraits
    implements Built<PaginatedTraits, PaginatedTraitsBuilder> {
  factory PaginatedTraits([void Function(PaginatedTraitsBuilder) updates]) =
      _$PaginatedTraits;
  PaginatedTraits._();

  String? get inputTokenPath;
  PaginationItem? get inputToken;

  String? get outputTokenPath;
  PaginationItem? get outputToken;

  String? get pageSizePath;
  PaginationItem? get pageSize;

  String? get itemsPath;
  PaginationItem? get items;
}
