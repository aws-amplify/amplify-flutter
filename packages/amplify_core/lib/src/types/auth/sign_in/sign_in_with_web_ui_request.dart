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

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_in_with_web_ui_request.g.dart';

@zAmplifyGenericSerializable
class SignInWithWebUIRequest<Options extends SignInWithWebUIOptions>
    with
        // TODO(dnys1): https://github.com/dart-lang/sdk/issues/49484
        AWSEquatable<SignInWithWebUIRequest<Options>>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const SignInWithWebUIRequest({this.provider, this.options});

  factory SignInWithWebUIRequest.fromJson(
    Map<String, Object?> json,
    Options Function(Map<String, Object?>) fromJsonOptions,
  ) =>
      _$SignInWithWebUIRequestFromJson(
        json,
        (json) => fromJsonOptions((json as Map).cast()),
      );

  @JsonKey(toJson: _authProviderToJson, fromJson: _authProviderFromJson)
  final AuthProvider? provider;

  final Options? options;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => [provider, options];

  @override
  String get runtimeTypeName => 'SignInWithWebUIRequest';

  @override
  Map<String, Object?> toJson() => _$SignInWithWebUIRequestToJson(
        this,
        (Options options) => options.toJson(),
      );
}

String? _authProviderToJson(AuthProvider? provider) => provider?.name;

AuthProvider? _authProviderFromJson(String? json) {
  if (json == null) {
    return null;
  }
  return AuthProvider.values.firstWhere(
    (provider) => provider.name == json,
    orElse: () => AuthProvider.custom(json),
  );
}
