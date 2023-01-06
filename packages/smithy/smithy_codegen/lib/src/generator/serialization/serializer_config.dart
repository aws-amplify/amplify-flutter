// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
