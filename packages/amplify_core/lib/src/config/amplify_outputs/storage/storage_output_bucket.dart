// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0



/// {@template amplify_core.amplify_outputs.amazon_pinpoint_channel}
/// Supported channels for Amazon Pinpoint.
/// {@endtemplate}
class StorageOutputBucket {
  StorageOutputBucket(this.name, this.bucketName, this.awsRegion);
  factory StorageOutputBucket.fromJson(Map<String, dynamic> json) => StorageOutputBucket(json['name'].toString(), json['bucket_name'].toString(), json['aws_region'].toString());
  String name;
  String bucketName;
  String awsRegion;
  Map<String, dynamic> toJson() => <String, dynamic>{'name':name, 'bucket_name':bucketName, 'aws_region':awsRegion};
}
