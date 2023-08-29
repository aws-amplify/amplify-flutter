// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.sts.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_request.dart';
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_response.dart';
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_with_saml_request.dart';
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_with_saml_response.dart';
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_with_web_identity_request.dart';
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_with_web_identity_response.dart';
import 'package:smoke_test/src/sdk/src/sts/model/assumed_role_user.dart';
import 'package:smoke_test/src/sdk/src/sts/model/credentials.dart';
import 'package:smoke_test/src/sdk/src/sts/model/decode_authorization_message_request.dart';
import 'package:smoke_test/src/sdk/src/sts/model/decode_authorization_message_response.dart';
import 'package:smoke_test/src/sdk/src/sts/model/expired_token_exception.dart';
import 'package:smoke_test/src/sdk/src/sts/model/federated_user.dart';
import 'package:smoke_test/src/sdk/src/sts/model/get_access_key_info_request.dart';
import 'package:smoke_test/src/sdk/src/sts/model/get_access_key_info_response.dart';
import 'package:smoke_test/src/sdk/src/sts/model/get_caller_identity_request.dart';
import 'package:smoke_test/src/sdk/src/sts/model/get_caller_identity_response.dart';
import 'package:smoke_test/src/sdk/src/sts/model/get_federation_token_request.dart';
import 'package:smoke_test/src/sdk/src/sts/model/get_federation_token_response.dart';
import 'package:smoke_test/src/sdk/src/sts/model/get_session_token_request.dart';
import 'package:smoke_test/src/sdk/src/sts/model/get_session_token_response.dart';
import 'package:smoke_test/src/sdk/src/sts/model/idp_communication_error_exception.dart';
import 'package:smoke_test/src/sdk/src/sts/model/idp_rejected_claim_exception.dart';
import 'package:smoke_test/src/sdk/src/sts/model/invalid_authorization_message_exception.dart';
import 'package:smoke_test/src/sdk/src/sts/model/invalid_identity_token_exception.dart';
import 'package:smoke_test/src/sdk/src/sts/model/malformed_policy_document_exception.dart';
import 'package:smoke_test/src/sdk/src/sts/model/packed_policy_too_large_exception.dart';
import 'package:smoke_test/src/sdk/src/sts/model/policy_descriptor_type.dart';
import 'package:smoke_test/src/sdk/src/sts/model/provided_context.dart';
import 'package:smoke_test/src/sdk/src/sts/model/region_disabled_exception.dart';
import 'package:smoke_test/src/sdk/src/sts/model/tag.dart';

const List<_i1.SmithySerializer> serializers = [
  ...PolicyDescriptorType.serializers,
  ...Tag.serializers,
  ...ProvidedContext.serializers,
  ...AssumeRoleRequest.serializers,
  ...Credentials.serializers,
  ...AssumedRoleUser.serializers,
  ...AssumeRoleResponse.serializers,
  ...ExpiredTokenException.serializers,
  ...MalformedPolicyDocumentException.serializers,
  ...PackedPolicyTooLargeException.serializers,
  ...RegionDisabledException.serializers,
  ...AssumeRoleWithSamlRequest.serializers,
  ...AssumeRoleWithSamlResponse.serializers,
  ...IdpRejectedClaimException.serializers,
  ...InvalidIdentityTokenException.serializers,
  ...AssumeRoleWithWebIdentityRequest.serializers,
  ...AssumeRoleWithWebIdentityResponse.serializers,
  ...IdpCommunicationErrorException.serializers,
  ...DecodeAuthorizationMessageRequest.serializers,
  ...DecodeAuthorizationMessageResponse.serializers,
  ...InvalidAuthorizationMessageException.serializers,
  ...GetAccessKeyInfoRequest.serializers,
  ...GetAccessKeyInfoResponse.serializers,
  ...GetCallerIdentityRequest.serializers,
  ...GetCallerIdentityResponse.serializers,
  ...GetFederationTokenRequest.serializers,
  ...FederatedUser.serializers,
  ...GetFederationTokenResponse.serializers,
  ...GetSessionTokenRequest.serializers,
  ...GetSessionTokenResponse.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltList,
    [FullType(PolicyDescriptorType)],
  ): _i2.ListBuilder<PolicyDescriptorType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ProvidedContext)],
  ): _i2.ListBuilder<ProvidedContext>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Tag)],
  ): _i2.ListBuilder<Tag>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(String)],
  ): _i2.ListBuilder<String>.new,
};
