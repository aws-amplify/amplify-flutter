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

/// {@template smithy.endpoint}
/// Represents the endpoint a service client should make API operation calls to.
///
/// The SDK will automatically resolve these endpoints per API client using an
/// internal resolver.
/// {@endtemplate}
class Endpoint {
  /// {@macro smithy.endpoint}
  const Endpoint({
    required this.uri,
    this.isHostnameImmutable = false,
  });

  /// The base URL endpoint clients will use to make API calls to e.g.
  /// "api.myservice.com". NOTE: Only scheme, port, host and path are valid.
  /// Other URL elements like query parameters are ignored.
  final Uri uri;

  /// Flag indicating that the hostname can be modified by
  /// the SDK client. If the hostname is mutable the SDK clients may modify any
  /// part of the hostname based on the requirements of the API (e.g. adding or
  /// removing content in the hostname).
  ///
  /// As an example Amazon S3 Client prefixing "bucketname" to the hostname or
  /// changing th hostname service name component from "s3" to
  /// "s3-accespoint.dualstack." requires mutable hostnames.
  ///
  /// Care should be taken when setting this flag and providing a custom endpoint.
  /// If the hostname is expected to be mutable and the client cannot modify the
  /// endpoint correctly, the operation will likely fail.
  final bool isHostnameImmutable;
}
