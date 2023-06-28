// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:aws_common/aws_common.dart' hide HttpPayload;
import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/core/reserved_words.dart';
import 'package:smithy_codegen/src/generator/serialization/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/generator/visitors/symbol_visitor.dart';
import 'package:smithy_codegen/src/util/config_parameter.dart';
import 'package:smithy_codegen/src/util/docs.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

extension SimpleShapeUtil on SimpleShape {
  Reference get typeReference => switch (getType()) {
        ShapeType.bigDecimal => throw UnimplementedError(),
        ShapeType.bigInteger => DartTypes.core.bigInt,
        ShapeType.blob when isStreaming =>
          DartTypes.async.stream(DartTypes.core.list(DartTypes.core.int)),
        ShapeType.blob when (!isStreaming) => DartTypes.typedData.uint8List,
        ShapeType.boolean => DartTypes.core.bool,
        ShapeType.byte => DartTypes.core.int,
        ShapeType.document => DartTypes.builtValue.jsonObject,
        ShapeType.double => DartTypes.core.double,
        ShapeType.float => DartTypes.core.double,
        ShapeType.integer => DartTypes.core.int,
        ShapeType.long => DartTypes.fixNum.int64,
        ShapeType.short => DartTypes.core.int,
        ShapeType.string => DartTypes.core.string,
        ShapeType.timestamp => DartTypes.core.dateTime,
        final ShapeType invalid =>
          throw ArgumentError('Invalid simple shape: $invalid'),
      };
}

extension ShapeClassName on Shape {
  /// The unescaped, unmodified class name for the shape.
  ///
  /// Should use [escapedClassName] instead.
  String? className(CodegenContext context) {
    final type = getType();
    switch (type) {
      case ShapeType.string:
        if (!isEnum) return null;
      case ShapeType.enum_:
      case ShapeType.intEnum:
      case ShapeType.structure:
      case ShapeType.operation:
      case ShapeType.union:
      case ShapeType.resource:
        break;
      case ShapeType.service:
        return context.serviceName;
      default:
        return null;
    }
    return (rename(context) ?? shapeId.shape).pascalCase;
  }

  /// The escaped class name.
  String? escapedClassName(CodegenContext context) {
    final name = className(context);
    if (name == null) {
      return null;
    }
    final needsRename = reservedTypeNames.contains(name) ||
        context.shapes.values.any((shape) {
          return shape.className(context) == '${name}Builder';
        });
    if (needsRename) {
      return '${context.serviceName.pascalCase}$name';
    }
    return name;
  }
}

extension DartName on String {
  String nameEscaped(ShapeType parentType) {
    assert(
      parentType == ShapeType.enum_ ||
          parentType == ShapeType.union ||
          parentType == ShapeType.structure,
      'Escaping names should only be done on types with members and enums',
    );
    final reservedWords = [
      ...hardReservedWords,
      if (parentType == ShapeType.enum_) ...enumReservedWords,
      if (parentType == ShapeType.union) ...unionReservedWords,
      if (parentType == ShapeType.structure) ...structReservedWords,
    ];

    final escapeChar =
        (parentType == ShapeType.enum_ || parentType == ShapeType.union)
            ? r'$'
            : '_';
    var name = this;
    if (reservedWords.contains(name)) {
      name = '$name$escapeChar';
    }
    return name;
  }
}

extension MemberShapeUtils on MemberShape {
  /// The name of this shape in a Dart struct.
  String dartName(ShapeType type) => memberName.camelCase.nameEscaped(type);
}

extension ShapeUtils on Shape {
  /// Whether the shape is a primitive value (more specifically, a bool or number)
  /// in an S3 service closure.
  ///
  /// S3 models incorrectly label these values as boxed and until this is fixed,
  /// we must work around this by explicitly unboxing them.
  // TOOD(dnys1): Remove when S3 models are fixed.
  bool isS3Primitive(CodegenContext context) {
    final isS3 = context.serviceShapeId?.namespace == 'com.amazonaws.s3';
    const primitiveTypes = [
      ShapeType.boolean,
      ShapeType.integer,
      ShapeType.long
    ];
    final targetShape = switch (this) {
      final MemberShape member => context.shapeFor(member.target),
      _ => this,
    };
    return isS3 && primitiveTypes.contains(targetShape.getType());
  }

  bool isNullable(CodegenContext context, [Shape? parent]) {
    final isMemberShape = parent != null;
    if (!isMemberShape) {
      // If a shape is not part of an aggregate shape, its nullability is
      // strictly equal to whether it has a default value.
      return hasTrait<BoxTrait>();
    }

    final parentType = parent.getType();
    switch (parentType) {
      // Lists have nullable members only when they are sparse.
      case ShapeType.list:
        return parent.isSparse;

      // Sets never have null members.
      case ShapeType.set:
        return false;

      // Maps always have non-null keys. Values are null iff the map is sparse.
      // The box trait is not used to determine nullability.
      case ShapeType.map:
        final isValue = (parent as MapShape).value.target == shapeId;
        return isValue && parent.isSparse;

      // Shapes which are part of a structure are always considered boxed
      // unless they are marked with the `@required` trait.
      case ShapeType.structure:
        final targetShape = this is MemberShape
            ? context.shapeFor((this as MemberShape).target)
            : this;
        final isBoxed = targetShape.isBoxed;
        return isS3Primitive(context) ||
            isNotRequired && (targetShape.hasDefaultValue ? isBoxed : true);

      // All but one value in a union is non-null. We represent all values
      // with nullable getters, though.
      case ShapeType.union:
        return true;

      default:
        throw StateError('Unknown aggregate type: $parentType');
    }
  }

  /// The rename for the shape in the service closure.
  String? rename(CodegenContext context) =>
      context.service?.rename[shapeId.toString()];

  /// Whether the shape has documentation which needs processing.
  bool hasDocs(CodegenContext context) =>
      hasTrait<DocumentationTrait>() ||
      (this is MemberShape &&
          context.shapeFor((this as MemberShape).target).hasDocs(context)) ||
      hasTrait<ExternalDocumentationTrait>() ||
      hasTrait<ExamplesTrait>();

  /// The formatted documentation for the shape.
  String formattedDocs(CodegenContext context) {
    if (!hasDocs(context)) return '';

    final buf = StringBuffer();
    var docs = getTrait<DocumentationTrait>()?.value;

    // The effective documentation trait of a shape is resolved using the following process:
    //
    // 1. Use the documentation trait of the shape, if present.
    // 2. If the shape is a Member, then use the documentation trait of the shape targeted by the member, if present.
    //
    // See: https://awslabs.github.io/smithy/1.0/spec/core/documentation-traits.html?highlight=sensitive#documentation-trait
    if (this is MemberShape) {
      docs ??= context
          .shapeFor((this as MemberShape).target)
          .getTrait<DocumentationTrait>()
          ?.value;
    }
    if (docs != null) {
      buf.write(formatDocs(docs));
    }

    // Add external documentation
    final externalDocs = getTrait<ExternalDocumentationTrait>()?.urls;
    if (externalDocs != null && externalDocs.isNotEmpty) {
      if (buf.isNotEmpty) buf.writeln('///');
      buf.writeln('/// See also:');
      externalDocs.forEach((key, value) {
        buf.writeln('/// - [$key]($value)');
      });
    }

    // TODO(dnys1): Once service client interface is finalized.
    // Add examples (only valid for operation shapes)
    // final examples = getTrait<ExamplesTrait>()?.examples;
    // if (examples != null && examples.isNotEmpty) {
    //   final operation = this as OperationShape;
    //   if (buf.isNotEmpty) buf.writeln('///');
    //   for (final example in examples) {
    //     buf.writeln('### Example: ${example.title}');
    //     final docs = example.documentation;
    //     if (docs != null) {
    //       buf.writeln();
    //       buf.writeln(docs);
    //     }
    //     final input = example.input;
    //   }
    // }

    return buf.toString();
  }

  Expression? get deprecatedAnnotation {
    const defaultMessage =
        'No longer recommended for use. See API documentation for more details.';
    final trait = getTrait<DeprecatedTrait>();
    if (trait == null) {
      return null;
    }
    final since = trait.since;
    var message = trait.message ?? defaultMessage;
    if (since != null) {
      message = 'Since $since. $message';
    }
    return DartTypes.core.deprecated.newInstance([
      literalString(message),
    ]);
  }

  /// The default value of this shape when not boxed.
  Expression? defaultValue(CodegenContext context) {
    if (isBoxed) {
      return null;
    }
    if (isS3Primitive(context)) {
      return null;
    }
    final targetShape = this is MemberShape
        ? context.shapeFor((this as MemberShape).target)
        : this;
    final defaultTrait =
        getTrait<DefaultTrait>() ?? targetShape.getTrait<DefaultTrait>();
    final defaultValue = defaultTrait?.value;
    switch (targetShape.getType()) {
      case ShapeType.byte:
      case ShapeType.short:
      case ShapeType.integer:
      case ShapeType.float:
      case ShapeType.double:
        return literalNum(defaultValue as num? ?? 0);
      case ShapeType.long:
        return defaultValue == null || defaultValue == 0
            ? DartTypes.fixNum.int64.property('ZERO')
            : DartTypes.fixNum.int64.newInstance([
                literalNum(defaultValue as int),
              ]);
      case ShapeType.boolean:
        return literalBool(defaultValue as bool? ?? false);
      case ShapeType.blob:
        if (defaultValue is! String) {
          return null;
        }
        final encoded = utf8.encode(defaultValue);
        final encodedExp = literalConstList(encoded);
        if (!targetShape.isStreaming) {
          return encodedExp;
        }
        if (encoded.isEmpty) {
          return DartTypes.async.stream().constInstanceNamed('empty', []);
        }
        return DartTypes.async.stream().newInstanceNamed('value', [
          encodedExp,
        ]);
      default:
        return null;
    }
  }

  /// The absolute `package` path of the library generated for this shape.
  String libraryUrl(CodegenContext context) =>
      smithyLibrary(context).libraryUrl;

  /// The library directive name for this shape.
  String libraryName(CodegenContext context) {
    return smithyLibrary(context).libraryName;
  }

  /// The library type generated for this shape.
  SmithyLibrary_LibraryType get libraryType => switch (getType()) {
        ShapeType.service => SmithyLibrary_LibraryType.CLIENT,
        ShapeType.operation => SmithyLibrary_LibraryType.OPERATION,
        ShapeType.structure ||
        ShapeType.union =>
          SmithyLibrary_LibraryType.MODEL,
        ShapeType _ when isEnum => SmithyLibrary_LibraryType.MODEL,
        final ShapeType invalid =>
          throw ArgumentError('Invalid shape type: $invalid'),
      };

  /// The smithy library for this shape.
  SmithyLibrary smithyLibrary(CodegenContext context) {
    final rename = this.rename(context);
    var basePath = context.basePath;
    if (basePath != null && !basePath.endsWith('/')) {
      basePath = '$basePath/';
    }
    var filename = rename?.pascalCase.snakeCase;
    if (filename == null) {
      final shape = this;
      if (shape is OperationShape) {
        filename = shape.dartName(context).snakeCase;
      } else {
        filename = shape.shapeId.shape.pascalCase.snakeCase;
      }
    }
    return SmithyLibrary()
      ..packageName = context.packageName
      ..serviceName = context.serviceName
      ..libraryType = libraryType
      ..filename = filename
      ..basePath = basePath ?? '';
  }

  PaginatedTraits? get _paginatedTraits {
    if (this is! OperationShape && this is! ServiceShape) {
      return null;
    }
    final trait = getTrait<PaginatedTrait>();
    if (trait == null) {
      return null;
    }
    return PaginatedTraits(
      (b) => b
        ..inputTokenPath = trait.inputToken
        ..outputTokenPath = trait.outputToken
        ..itemsPath = trait.items
        ..pageSizePath = trait.pageSize,
    );
  }
}

extension NamedMembersShapeUtil on NamedMembersShape {
  PaginationItem parsePathToExpression(CodegenContext context, String p) {
    var shape = this;
    final path = p.split('.');
    final exps = <Expression Function(Expression)>[];
    var isNullable = false;
    late MemberShape member;
    late Reference symbol;
    while (path.isNotEmpty) {
      final memberName = path.removeAt(0);
      member = shape.members[memberName]!;
      final dartName = member.dartName(shape.getType());
      final isNullableCopy = isNullable; // local copy for capture
      exps.add((exp) => exp.nullableProperty(dartName, isNullableCopy));
      isNullable = member.isNullable(context, shape);
      symbol = context.symbolFor(member.target, shape);
      final targetShape = context.shapeFor(member.target);
      if (path.isNotEmpty) {
        shape = targetShape as NamedMembersShape;
      }
    }
    Expression buildExpression(Expression exp) =>
        exps.fold(exp, (exp, el) => el(exp));
    return PaginationItem(
      (b) => b
        ..member.replace(member)
        ..buildExpression = buildExpression
        ..symbol = symbol
        ..isNullable = isNullable,
    );
  }
}

extension OperationShapeUtil on OperationShape {
  /// The name of this operation as a Dart class.
  String dartName(CodegenContext context) {
    final shapeName = shapeId.shape.pascalCase;
    if (shapeName.endsWith('Operation')) {
      return shapeName;
    }

    // Don't rename if doing so would conflict with another class.
    final operationShapeName = '${shapeName}_Operation'.pascalCase;
    final existingShape = context.shapes.keys.firstWhereOrNull((shapeId) {
      return shapeId.shape.pascalCase == operationShapeName;
    });
    if (existingShape != null) {
      return shapeName;
    }
    return operationShapeName;
  }

  /// The shape for the operation's input.
  StructureShape inputShape(CodegenContext context) =>
      context.shapeFor(input?.target ?? Shape.unit) as StructureShape;

  /// The symbol for the operation's input.
  Reference inputSymbol(CodegenContext context) =>
      context.symbolFor(input?.target ?? Shape.unit);

  /// The shape for the operation's output.
  StructureShape outputShape(CodegenContext context) =>
      context.shapeFor(output?.target ?? Shape.unit) as StructureShape;

  /// The symbol for the operation's output.
  Reference outputSymbol(CodegenContext context) =>
      context.symbolFor(output?.target ?? Shape.unit);

  PaginatedTraits? paginatedTraits(CodegenContext context) {
    final serviceShape = context.service;
    PaginatedTraits? traits;
    if (serviceShape != null) {
      traits = serviceShape._paginatedTraits;
    }
    final operationTraits = _paginatedTraits;
    return (traits ?? operationTraits)?.rebuild((b) {
      if (operationTraits?.inputTokenPath != null) {
        b.inputTokenPath = operationTraits!.inputTokenPath;
      }
      if (operationTraits?.outputTokenPath != null) {
        b.outputTokenPath = operationTraits!.outputTokenPath;
      }
      if (operationTraits?.itemsPath != null) {
        b.itemsPath = operationTraits!.itemsPath;
      }
      if (operationTraits?.pageSizePath != null) {
        b.pageSizePath = operationTraits!.pageSizePath;
      }

      if (b.inputTokenPath != null) {
        b.inputToken.replace(
          inputShape(context).parsePathToExpression(
            context,
            b.inputTokenPath!,
          ),
        );
      }

      if (b.outputTokenPath != null) {
        b.outputToken.replace(
          outputShape(context).parsePathToExpression(
            context,
            b.outputTokenPath!,
          ),
        );
      }

      if (b.itemsPath != null) {
        b.items.replace(
          outputShape(context).parsePathToExpression(
            context,
            b.itemsPath!,
          ),
        );
      }

      if (b.pageSizePath != null) {
        b.pageSize.replace(
          inputShape(context).parsePathToExpression(
            context,
            b.pageSizePath!,
          ),
        );
      }
    });
  }

  HttpTrait? httpTrait(CodegenContext context) {
    final trait = getTrait<HttpTrait>();
    if (trait != null) {
      return trait;
    }
    final protocol = context.serviceProtocols;

    // awsJson1_0 and awsJson1_1 are
    // "an HTTP protocol that sends "POST" requests and responses with JSON documents."
    //
    // See:
    // - https://awslabs.github.io/smithy/1.0/spec/aws/aws-json-1_0-protocol.html
    // - https://awslabs.github.io/smithy/1.0/spec/aws/aws-json-1_1-protocol.html
    if ([AwsJson1_0Trait.id, AwsJson1_1Trait.id, AwsQueryTrait.id]
        .contains(protocol.singleOrNull?.shapeId)) {
      return const HttpTrait(method: 'POST', uri: '/');
    }
    return null;
  }

  Iterable<ConfigParameter> operationParameters(CodegenContext context) sync* {
    final serviceShape = context.service;
    if (serviceShape == null) {
      return;
    }

    // The client field
    yield ConfigParameter(
      (p) => p
        ..type = DartTypes.awsCommon.awsHttpClient.boxed
        ..name = 'client'
        ..location = ParameterLocation.run |
            ParameterLocation.clientConstructor |
            ParameterLocation.clientMethod,
    );

    if (serviceShape.isAwsService) {
      yield ConfigParameter(
        (p) => p
          ..type = DartTypes.core.string
          ..name = 'region'
          ..required = true
          ..location = ParameterLocation.constructor |
              ParameterLocation.clientConstructor,
      );

      // The baseUri field
      yield ConfigParameter(
        (p) => p
          ..type = DartTypes.core.uri.boxed
          ..name = 'baseUri'
          ..location = ParameterLocation.constructor |
              ParameterLocation.clientConstructor,
      );
    } else {
      // The baseUri override
      yield ConfigParameter(
        (p) => p
          ..type = DartTypes.core.uri
          ..name = 'baseUri'
          ..isOverride = true
          ..required = true
          ..location = ParameterLocation.constructor |
              ParameterLocation.clientConstructor,
      );
    }

    final isS3 = serviceShape.resolvedService?.sdkId == 'S3';
    if (isS3) {
      yield ConfigParameter(
        (p) => p
          ..type = DartTypes.smithyAws.s3ClientConfig
          ..name = 's3ClientConfig'
          ..required = true
          ..location = ParameterLocation.constructor |
              ParameterLocation.clientConstructor |
              ParameterLocation.clientMethod
          ..defaultTo =
              DartTypes.smithyAws.s3ClientConfig.constInstance([]).code,
      );
    }

    if (serviceShape.hasTrait<SigV4Trait>()) {
      yield ConfigParameter(
        (p) => p
          ..type = DartTypes.awsSigV4.awsCredentialsProvider
          ..name = 'credentialsProvider'
          ..location = ParameterLocation.constructor |
              ParameterLocation.clientConstructor |
              ParameterLocation.clientMethod
          ..required = true
          ..defaultTo = DartTypes.awsSigV4.awsCredentialsProvider
              .constInstanceNamed('environment', []).code,
      );
    }

    // The requestInterceptors field.
    yield ConfigParameter(
      (p) => p
        ..type = DartTypes.core.list(DartTypes.smithy.httpRequestInterceptor)
        ..name = 'requestInterceptors'
        ..location =
            ParameterLocation.constructor | ParameterLocation.clientConstructor
        ..defaultTo = const Code('const []'),
    );

    // The responseInterceptors field.
    yield ConfigParameter(
      (p) => p
        ..type = DartTypes.core.list(DartTypes.smithy.httpResponseInterceptor)
        ..name = 'responseInterceptors'
        ..location =
            ParameterLocation.constructor | ParameterLocation.clientConstructor
        ..defaultTo = const Code('const []'),
    );
  }

  /// Fields which should be generated for the operation and its service client
  /// based off the traits attached to this shape's service.
  Iterable<Field> protocolFields(CodegenContext context) sync* {
    for (final parameter in operationParameters(context)
        .where((p) => p.location.inConstructor)) {
      yield Field(
        (f) => f
          ..modifier = FieldModifier.final$
          ..type = parameter.type
          ..annotations.addAll([
            if (parameter.isOverride) DartTypes.core.override,
          ])
          ..name = parameter.isOverride ? parameter.name : '_${parameter.name}',
      );
    }
  }

  /// Constructor parameters which should be generated for the operation and its
  /// service client based off the traits attached to this shape's service.
  Iterable<Parameter> constructorParameters(
    CodegenContext context, {
    bool Function(ConfigParameter) toThis = _defaultToThis,
  }) sync* {
    for (final parameter in operationParameters(context)
        .where((p) => p.location.inConstructor)) {
      yield Parameter((p) {
        final pToThis = toThis(parameter);
        p
          ..toThis = pToThis
          ..required = parameter.required && parameter.defaultTo == null
          ..type = pToThis ? null : parameter.type
          ..name = parameter.name
          ..named = true
          ..defaultTo = parameter.defaultTo;
      });
    }
  }

  static bool _defaultToThis(ConfigParameter p) => p.isOverride;
}

extension StructureShapeUtil on StructureShape {
  /// The operation this shape belongs to, if any.
  OperationShape? operationShape(CodegenContext context) =>
      context.shapes.values.whereType<OperationShape>().firstWhereOrNull(
            (operation) =>
                operation.input?.target == shapeId ||
                operation.output?.target == shapeId ||
                operation.errors.map((ref) => ref.target).contains(shapeId),
          );

  /// Whether this is an unwrapped S3 output.
  bool isS3UnwrappedOutput(CodegenContext context) {
    final operationShape = this.operationShape(context);
    return operationShape != null &&
        operationShape.hasTrait<S3UnwrappedXmlOutputTrait>() &&
        isOutputShape;
  }

  /// The symbol for the HTTP payload, or `this` if not supported.
  HttpPayload httpPayload(CodegenContext context) {
    MemberShape? payloadMember;
    if (isS3UnwrappedOutput(context)) {
      payloadMember = members.values.single;
    }
    payloadMember ??= members.values.firstWhereOrNull((shape) {
      return shape.hasTrait<HttpPayloadTrait>();
    });
    if (payloadMember == null) {
      var symbol = context.symbolFor(shapeId);
      if (hasPayload(context) && shapeId != Shape.unit) {
        symbol = symbol.typeRef.rebuild((t) => t.symbol = '${t.symbol}Payload');
      }
      return HttpPayload((b) => b.symbol = symbol);
    }
    return HttpPayload(
      (b) => b
        ..symbol = payloadMember!.accept(SymbolVisitor(context), this)
        ..member.replace(payloadMember),
    );
  }

  /// HTTP metadata on operation output structures.
  HttpOutputTraits? httpOutputTraits(
    CodegenContext context, {
    bool overrideTrait = false,
  }) {
    if (!isOutputShape && !overrideTrait && Shape.unit != shapeId) {
      return null;
    }
    final builder = HttpOutputTraitsBuilder();
    for (final member in members.values) {
      final headerTrait = member.getTrait<HttpHeaderTrait>();
      if (headerTrait != null) {
        builder.httpHeaders[headerTrait.value] = member;
      }
      final prefixHeadersTrait = member.getTrait<HttpPrefixHeadersTrait>();
      if (prefixHeadersTrait != null) {
        builder.httpPrefixHeaders
          ..member.replace(member)
          ..trait = prefixHeadersTrait;
      }
      if (member.hasTrait<HttpResponseCodeTrait>()) {
        builder.httpResponseCode.replace(member);
      }
    }
    return builder.build();
  }

  /// HTTP metadata on operation input structures.
  HttpInputTraits? httpInputTraits(
    CodegenContext context, {
    bool overrideTrait = false,
  }) {
    if (!isInputShape && !overrideTrait && Shape.unit != shapeId) {
      return null;
    }
    final builder = HttpInputTraitsBuilder();
    for (final member in members.values) {
      final headerTrait = member.getTrait<HttpHeaderTrait>();
      if (headerTrait != null) {
        builder.httpHeaders[headerTrait.value] = member;
      }
      if (member.hasTrait<HttpLabelTrait>()) {
        builder.httpLabels.add(member);
      }
      final prefixHeadersTrait = member.getTrait<HttpPrefixHeadersTrait>();
      if (prefixHeadersTrait != null) {
        builder.httpPrefixHeaders
          ..member.replace(member)
          ..trait = prefixHeadersTrait;
      }
      if (member.hasTrait<HostLabelTrait>()) {
        builder.hostLabel.replace(member);
      }
      final queryTrait = member.getTrait<HttpQueryTrait>();
      if (queryTrait != null) {
        builder.httpQuery[queryTrait.value] = member;
      }
      if (member.hasTrait<HttpQueryParamsTrait>()) {
        builder.httpQueryParams.replace(member);
      }
    }
    return builder.build();
  }

  HttpErrorTraits? httpErrorTraits(
    CodegenContext context, [
    Reference? payloadSymbol,
  ]) {
    if (!isError) {
      return null;
    }
    final builder = HttpErrorTraitsBuilder()
      ..symbol = context.symbolFor(shapeId)
      ..payloadSymbol = payloadSymbol
      ..shapeId = shapeId;
    final errorTrait = expectTrait<ErrorTrait>();
    builder.kind = errorTrait.type;
    final httpErrorTrait = getTrait<HttpErrorTrait>();
    if (httpErrorTrait != null) {
      builder.statusCode = httpErrorTrait.code;
    }
    final retryTrait = getTrait<RetryableTrait>();
    if (retryTrait != null) {
      builder.retryConfig = RetryConfig(
        isThrottlingError: retryTrait.throttling,
      );
    }
    for (final member in members.values) {
      final headerTrait = member.getTrait<HttpHeaderTrait>();
      if (headerTrait != null) {
        builder.httpHeaders[headerTrait.value] = member;
      }
      final prefixHeadersTrait = member.getTrait<HttpPrefixHeadersTrait>();
      if (prefixHeadersTrait != null) {
        builder.httpPrefixHeaders
          ..member.replace(member)
          ..trait = prefixHeadersTrait;
      }
    }
    return builder.build();
  }

  /// Member shapes and their [Reference] types.
  Map<MemberShape, Reference> memberSymbols(CodegenContext context) => {
        for (var member in sortedMembers)
          member: context
              .symbolFor(member.target, this)
              .withBoxed(member.isNullable(context, this)),
      };

  /// Members sorted by their re-cased Dart name.
  List<MemberShape> get sortedMembers => members.values.toList()
    ..sort((a, b) {
      return a.dartName(getType()).compareTo(b.dartName(getType()));
    });

  /// The member shape to serialize when [HttpPayloadTrait] is used.
  MemberShape? payloadShape(CodegenContext context) =>
      httpPayload(context).member;

  /// The list of all members which convey some information about the request,
  /// and for most protocols are not included in the body of the request.
  List<MemberShape> metadataMembers(CodegenContext context) {
    final httpInputTraits = this.httpInputTraits(context);
    final httpOutputTraits = this.httpOutputTraits(context);
    final httpErrorTraits = this.httpErrorTraits(context);

    return <MemberShape?>{
      ...?httpInputTraits?.httpHeaders.values,
      httpInputTraits?.httpQueryParams,
      ...?httpInputTraits?.httpLabels,
      httpInputTraits?.httpPrefixHeaders?.member,
      ...?httpInputTraits?.httpQuery.values,
      httpOutputTraits?.httpResponseCode,
      ...?httpOutputTraits?.httpHeaders.values,
      httpOutputTraits?.httpPrefixHeaders?.member,
      ...?httpErrorTraits?.httpHeaders.values,
      httpErrorTraits?.httpPrefixHeaders?.member,
    }.whereType<MemberShape>().toList()
      ..sorted(
        (a, b) => a.dartName(getType()).compareTo(b.dartName(getType())),
      );
  }

  /// The list of all members which should always be included in the body of
  /// the request.
  List<MemberShape> payloadMembers(CodegenContext context) => sortedMembers
      .where((member) => !metadataMembers(context).contains(member))
      .toList();

  /// Whether the structure has an HTTP payload.
  bool hasPayload(CodegenContext context) {
    if (isS3UnwrappedOutput(context)) {
      return true;
    }
    return (isInputShape || isOutputShape || isError) &&
        (members.values.any(
          (shape) =>
              shape.hasTrait<HttpPayloadTrait>() ||
              metadataMembers(context).isNotEmpty,
        ));
  }

  /// Whether the structure needs a payload struct.
  bool hasBuiltPayload(CodegenContext context) =>
      hasPayload(context) && payloadShape(context) == null;

  /// Whether the structure has a streaming payload.
  bool hasStreamingPayload(CodegenContext context) {
    final payloadShape = this.payloadShape(context);
    return hasPayload(context) &&
        payloadShape != null &&
        (payloadShape.isStreaming ||
            context.shapeFor(payloadShape.target).isStreaming);
  }
}

extension ShapeIdUtil on ShapeId {
  /// A constructed ShapeId expression.
  Expression get constructed => DartTypes.smithy.shapeId.constInstance([], {
        'namespace': literalString(namespace),
        'shape': literalString(shape),
        if (member != null) 'member': literalString(member!),
      });
}

extension ServiceShapeUtil on ServiceShape {
  /// Whether this is an AWS service.
  bool get isAwsService => resolvedService != null;

  /// The resolved service trait for AWS services.
  ResolvedServiceTrait? get resolvedService {
    final serviceTrait = getTrait<ServiceTrait>();
    if (serviceTrait == null) {
      return null;
    }
    return serviceTrait.resolve(shapeId);
  }
}
