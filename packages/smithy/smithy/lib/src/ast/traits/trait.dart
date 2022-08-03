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

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';
import 'package:smithy/ast.dart';

part 'dynamic_trait.dart';

/// Constructs [Trait] objects from JSON values.
typedef TraitConstructor<TraitValue extends Object, T extends Trait<TraitValue>>
    = T Function(Object?);

/// Traits provide additional context and semantics to shapes.
///
/// A trait complements a [Shape] by providing additional information to help
/// correctly interpret any specific representation of it or to add information
/// about constraints on the logical structure of the [Shape].
abstract class Trait<TraitValue extends Object>
    with AWSEquatable<Trait<TraitValue>>, AWSSerializable {
  const Trait(this.shapeId, this.value);

  static Trait fromJson(ShapeId shapeId, Object? jsonValue) {
    if (!serializers.containsKey(shapeId)) {
      // TODO(dnys1): Log
      safePrint('No serializer found for $shapeId');
      return DynamicTrait._(shapeId, jsonValue ?? const <String, Object?>{});
    }
    return serializers[shapeId]!(jsonValue);
  }

  /// Returns the fully-qualified shape ID of the trait.
  final ShapeId shapeId;

  /// The value of the trait.
  final TraitValue value;

  /// Checks if this trait is persisted with the shape, or if it is a synthetic,
  /// or transient trait, only meant to temporarily aid in some kind of
  /// in-memory model transformation.
  ///
  /// Because synthetic traits are not persisted with shapes, they also do not
  /// need to be defined in Smithy's semantic model before they can be used in
  /// the model.
  bool get isSynthetic => false;

  @override
  Object? toJson() =>
      value is AWSSerializable ? (value as AWSSerializable).toJson() : value;

  @override
  List<Object?> get props => [shapeId, value, isSynthetic];

  static final Map<ShapeId, TraitConstructor> serializers = {
    // Core
    AuthDefinitionTrait.id: AuthDefinitionTrait.fromJson,
    AuthTrait.id: AuthTrait.fromJson,
    BoxTrait.id: BoxTrait.fromJson,
    CorsTrait.id: CorsTrait.fromJson,
    DeprecatedTrait.id: DeprecatedTrait.fromJson,
    DocumentationTrait.id: DocumentationTrait.fromJson,
    EndpointTrait.id: EndpointTrait.fromJson,
    EnumTrait.id: EnumTrait.fromJson,
    ErrorTrait.id: ErrorTrait.fromJson,
    EventHeaderTrait.id: EventHeaderTrait.fromJson,
    EventPayloadTrait.id: EventPayloadTrait.fromJson,
    ExamplesTrait.id: ExamplesTrait.fromJson,
    ExternalDocumentationTrait.id: ExternalDocumentationTrait.fromJson,
    HostLabelTrait.id: HostLabelTrait.fromJson,
    HttpApiKeyAuthTrait.id: HttpApiKeyAuthTrait.fromJson,
    HttpBasicAuthTrait.id: HttpBasicAuthTrait.fromJson,
    HttpBearerAuthTrait.id: HttpBearerAuthTrait.fromJson,
    HttpChecksumRequiredTrait.id: HttpChecksumRequiredTrait.fromJson,
    HttpDigestAuthTrait.id: HttpDigestAuthTrait.fromJson,
    HttpErrorTrait.id: HttpErrorTrait.fromJson,
    HttpHeaderTrait.id: HttpHeaderTrait.fromJson,
    HttpLabelTrait.id: HttpLabelTrait.fromJson,
    HttpPayloadTrait.id: HttpPayloadTrait.fromJson,
    HttpPrefixHeadersTrait.id: HttpPrefixHeadersTrait.fromJson,
    HttpQueryParamsTrait.id: HttpQueryParamsTrait.fromJson,
    HttpQueryTrait.id: HttpQueryTrait.fromJson,
    HttpResponseCodeTrait.id: HttpResponseCodeTrait.fromJson,
    HttpTrait.id: HttpTrait.fromJson,
    IdRefTrait.id: IdRefTrait.fromJson,
    IdempotencyTokenTrait.id: IdempotencyTokenTrait.fromJson,
    IdempotentTrait.id: IdempotentTrait.fromJson,
    InputTrait.id: InputTrait.fromJson,
    InternalTrait.id: InternalTrait.fromJson,
    JsonNameTrait.id: JsonNameTrait.fromJson,
    LengthTrait.id: LengthTrait.fromJson,
    MediaTypeTrait.id: MediaTypeTrait.fromJson,
    NoReplaceTrait.id: NoReplaceTrait.fromJson,
    OptionalAuthTrait.id: OptionalAuthTrait.fromJson,
    OutputTrait.id: OutputTrait.fromJson,
    PaginatedTrait.id: PaginatedTrait.fromJson,
    PatternTrait.id: PatternTrait.fromJson,
    PrivateTrait.id: PrivateTrait.fromJson,
    ProtocolDefinitionTrait.id: ProtocolDefinitionTrait.fromJson,
    RangeTrait.id: RangeTrait.fromJson,
    ReadonlyTrait.id: ReadonlyTrait.fromJson,
    RecommendedTrait.id: RecommendedTrait.fromJson,
    ReferencesTrait.id: ReferencesTrait.fromJson,
    RequiredTrait.id: RequiredTrait.fromJson,
    RequiresLengthTrait.id: RequiresLengthTrait.fromJson,
    ResourceIdentifierTrait.id: ResourceIdentifierTrait.fromJson,
    RetryableTrait.id: RetryableTrait.fromJson,
    SensitiveTrait.id: SensitiveTrait.fromJson,
    SinceTrait.id: SinceTrait.fromJson,
    SparseTrait.id: SparseTrait.fromJson,
    StreamingTrait.id: StreamingTrait.fromJson,
    SuppressTrait.id: SuppressTrait.fromJson,
    TagsTrait.id: TagsTrait.fromJson,
    TimestampFormatTrait.id: TimestampFormatTrait.fromJson,
    TitleTrait.id: TitleTrait.fromJson,
    UnitTypeTrait.id: UnitTypeTrait.fromJson,
    UnstableTrait.id: UnstableTrait.fromJson,
    WaitableTrait.id: WaitableTrait.fromJson,
    XmlAttributeTrait.id: XmlAttributeTrait.fromJson,
    XmlFlattenedTrait.id: XmlFlattenedTrait.fromJson,
    XmlNameTrait.id: XmlNameTrait.fromJson,
    XmlNamespaceTrait.id: XmlNamespaceTrait.fromJson,

    // AWS
    ArnReferenceTrait.id: ArnReferenceTrait.fromJson,
    ArnTrait.id: ArnTrait.fromJson,
    ControlPlaneTrait.id: ControlPlaneTrait.fromJson,
    DataTrait.id: DataTrait.fromJson,
    HttpChecksumTrait.id: HttpChecksumTrait.fromJson,
    ServiceTrait.id: ServiceTrait.fromJson,
    CognitoUserPoolsTrait.id: CognitoUserPoolsTrait.fromJson,
    SigV4Trait.id: SigV4Trait.fromJson,
    UnsignedPayloadTrait.id: UnsignedPayloadTrait.fromJson,
    ClientDiscoveredEndpointTrait.id: ClientDiscoveredEndpointTrait.fromJson,
    ClientEndpointDiscoveryIdTrait.id: ClientEndpointDiscoveryIdTrait.fromJson,
    ClientEndpointDiscoveryTrait.id: ClientEndpointDiscoveryTrait.fromJson,
    AwsJson1_0Trait.id: AwsJson1_0Trait.fromJson,
    AwsJson1_1Trait.id: AwsJson1_1Trait.fromJson,
    RestJson1Trait.id: RestJson1Trait.fromJson,
    RestXmlTrait.id: RestXmlTrait.fromJson,
    S3UnwrappedXmlOutputTrait.id: S3UnwrappedXmlOutputTrait.fromJson,

    // Protocol Tests
    HttpMalformedRequestTestsTrait.id: HttpMalformedRequestTestsTrait.fromJson,
    HttpRequestTestsTrait.id: HttpRequestTestsTrait.fromJson,
    HttpResponseTestsTrait.id: HttpResponseTestsTrait.fromJson,
  };
}

extension TraitHelpers on Trait {
  /// The absolute name (shape ID) of this trait.
  String get name => shapeId.absoluteName;

  /// Gets the idiomatic name of a prelude trait by stripping off the
  /// `smithy.api#` prefix. This is used in various error messages.
  @internal
  String get idiomaticName => name.replaceFirst('smithy.api#', '');
}
