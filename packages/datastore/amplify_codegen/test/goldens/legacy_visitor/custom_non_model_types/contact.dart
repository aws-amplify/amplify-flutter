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

library models.contact;

import 'package:amplify_core/amplify_core.dart';

import 'address.dart';
import 'phone.dart';

class Contact
    with
        AWSEquatable<Contact>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const Contact({
    required this.contactName,
    required this.phone,
    this.mailingAddresses,
  });

  factory Contact.fromJson(Map<String, Object?> json) {
    final contactName = json['contactName'] == null
        ? (throw ModelFieldError(
            'Contact',
            'contactName',
          ))
        : (json['contactName'] as String);
    final phone = json['phone'] == null
        ? (throw ModelFieldError(
            'Contact',
            'phone',
          ))
        : Phone.fromJson((json['phone'] as Map<String, Object?>));
    final mailingAddresses = json['mailingAddresses'] == null
        ? null
        : (json['mailingAddresses'] as List<Object?>)
            .cast<Map<String, Object?>?>()
            .map((el) => el == null ? null : Address.fromJson(el))
            .toList();
    return Contact(
      contactName: contactName,
      phone: phone,
      mailingAddresses: mailingAddresses,
    );
  }

  final String contactName;

  final Phone phone;

  final List<Address?>? mailingAddresses;

  @override
  List<Object?> get props => [
        contactName,
        phone,
        mailingAddresses,
      ];
  @override
  String get runtimeTypeName => 'Contact';
  @override
  Map<String, Object?> toJson() => {
        'contactName': contactName,
        'phone': phone.toJson(),
        'mailingAddresses':
            mailingAddresses?.map((el) => el?.toJson()).toList(),
      };
}
