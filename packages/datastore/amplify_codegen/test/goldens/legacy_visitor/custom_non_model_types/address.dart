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

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: non_constant_identifier_names,inference_failure_on_collection_literal

library models.address;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;

class Address
    with
        AWSEquatable<Address>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const Address({
    required this.line1,
    this.line2,
    required this.city,
    required this.state,
    required this.postalCode,
  });

  factory Address.fromJson(Map<String, Object?> json) {
    final line1 = json['line1'] == null
        ? (throw ModelFieldError(
            'Address',
            'line1',
          ))
        : (json['line1'] as String);
    final line2 = json['line2'] == null ? null : (json['line2'] as String);
    final city = json['city'] == null
        ? (throw ModelFieldError(
            'Address',
            'city',
          ))
        : (json['city'] as String);
    final state = json['state'] == null
        ? (throw ModelFieldError(
            'Address',
            'state',
          ))
        : (json['state'] as String);
    final postalCode = json['postalCode'] == null
        ? (throw ModelFieldError(
            'Address',
            'postalCode',
          ))
        : (json['postalCode'] as String);
    return Address(
      line1: line1,
      line2: line2,
      city: city,
      state: state,
      postalCode: postalCode,
    );
  }

  final String line1;

  final String? line2;

  final String city;

  final String state;

  final String postalCode;

  static final mipr.NonModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.NonModelTypeDefinition.serializer,
    const {
      'name': 'Address',
      'fields': {
        'line1': {
          'name': 'line1',
          'type': {'scalar': 'String'},
          'isReadOnly': false,
          'authRules': [],
        },
        'line2': {
          'name': 'line2',
          'type': {'scalar': 'String'},
          'isReadOnly': false,
          'authRules': [],
        },
        'city': {
          'name': 'city',
          'type': {'scalar': 'String'},
          'isReadOnly': false,
          'authRules': [],
        },
        'state': {
          'name': 'state',
          'type': {'scalar': 'String'},
          'isReadOnly': false,
          'authRules': [],
        },
        'postalCode': {
          'name': 'postalCode',
          'type': {'scalar': 'String'},
          'isReadOnly': false,
          'authRules': [],
        },
      },
    },
  )!;

  @override
  List<Object?> get props => [
        line1,
        line2,
        city,
        state,
        postalCode,
      ];
  @override
  String get runtimeTypeName => 'Address';
  @override
  Map<String, Object?> toJson() => {
        'line1': line1,
        'line2': line2,
        'city': city,
        'state': state,
        'postalCode': postalCode,
      };
}
