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

class SerializerConfig {
  const SerializerConfig({
    this.renameMembers = true,
    this.usePayload = true,
    this.usePrivateSymbols = true,
    this.isTest = false,
  });

  /// Config for test serializers.
  const SerializerConfig.test()
      : this(
          usePayload: false,
          renameMembers: false,
          usePrivateSymbols: false,
          isTest: true,
        );

  /// Config for generic JSON protocol.
  const SerializerConfig.genericJson()
      : this(
          usePayload: true,
          renameMembers: true,
          usePrivateSymbols: true,
        );

  /// Config for AWS JSON 1.0/1.1
  const SerializerConfig.awsJson()
      : this(
          usePayload: false,
          renameMembers: false,
          usePrivateSymbols: true,
        );

  /// Config for AWS REST JSON 1
  const SerializerConfig.restJson1()
      : this(
          usePayload: true,
          renameMembers: true,
          usePrivateSymbols: true,
        );

  final bool renameMembers;
  final bool usePayload;
  final bool usePrivateSymbols;
  final bool isTest;
}
