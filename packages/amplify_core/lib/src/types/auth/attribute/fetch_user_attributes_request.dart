/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/src/types/auth/attribute/fetch_user_attributes_options.dart';
import 'package:amplify_core/src/util/serializable.dart';
import 'package:aws_common/aws_common.dart';

part 'fetch_user_attributes_request.g.dart';

/// {@template amplify_core.fetch_user_attribute_request}
/// Encapsulates parameters for a fetch user attributes operation
/// {@endtemplate}
@zAmplifyGenericSerializable
class FetchUserAttributesRequest<Options extends FetchUserAttributesOptions>
    with
        AWSEquatable<FetchUserAttributesRequest<FetchUserAttributesOptions>>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.fetch_user_attribute_request}
  const FetchUserAttributesRequest({this.options});

  /// {@macro amplify_core.fetch_user_attribute_request}
  factory FetchUserAttributesRequest.fromJson(
    Map<String, Object?> json,
    Options Function(Map<String, Object?>) fromJsonOptions,
  ) =>
      _$FetchUserAttributesRequestFromJson(
        json,
        (json) => fromJsonOptions((json as Map).cast()),
      );

  /// Plugin-specific, advanced options such as information about the client
  final Options? options;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => [options];

  @override
  String get runtimeTypeName => 'FetchUserAttributesRequest';

  @override
  Map<String, Object?> toJson() => _$FetchUserAttributesRequestToJson(
        this,
        (Options options) => options.toJson(),
      );
}
