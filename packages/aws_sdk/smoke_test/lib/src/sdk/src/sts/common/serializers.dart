// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i31;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_request.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_response.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_with_saml_request.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_with_saml_response.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_with_web_identity_request.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_with_web_identity_response.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/sts/model/assumed_role_user.dart' as _i6;
import 'package:smoke_test/src/sdk/src/sts/model/credentials.dart' as _i5;
import 'package:smoke_test/src/sdk/src/sts/model/decode_authorization_message_request.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/sts/model/decode_authorization_message_response.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/sts/model/expired_token_exception.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/sts/model/federated_user.dart' as _i27;
import 'package:smoke_test/src/sdk/src/sts/model/get_access_key_info_request.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/sts/model/get_access_key_info_response.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/sts/model/get_caller_identity_request.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/sts/model/get_caller_identity_response.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/sts/model/get_federation_token_request.dart'
    as _i26;
import 'package:smoke_test/src/sdk/src/sts/model/get_federation_token_response.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/sts/model/get_session_token_request.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/sts/model/get_session_token_response.dart'
    as _i30;
import 'package:smoke_test/src/sdk/src/sts/model/idp_communication_error_exception.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/sts/model/idp_rejected_claim_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/sts/model/invalid_authorization_message_exception.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/sts/model/invalid_identity_token_exception.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/sts/model/malformed_policy_document_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/sts/model/packed_policy_too_large_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/sts/model/policy_descriptor_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/sts/model/region_disabled_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/sts/model/tag.dart' as _i3;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.PolicyDescriptorType.serializers,
  ..._i3.Tag.serializers,
  ..._i4.AssumeRoleRequest.serializers,
  ..._i5.Credentials.serializers,
  ..._i6.AssumedRoleUser.serializers,
  ..._i7.AssumeRoleResponse.serializers,
  ..._i8.ExpiredTokenException.serializers,
  ..._i9.MalformedPolicyDocumentException.serializers,
  ..._i10.PackedPolicyTooLargeException.serializers,
  ..._i11.RegionDisabledException.serializers,
  ..._i12.AssumeRoleWithSamlRequest.serializers,
  ..._i13.AssumeRoleWithSamlResponse.serializers,
  ..._i14.IdpRejectedClaimException.serializers,
  ..._i15.InvalidIdentityTokenException.serializers,
  ..._i16.AssumeRoleWithWebIdentityRequest.serializers,
  ..._i17.AssumeRoleWithWebIdentityResponse.serializers,
  ..._i18.IdpCommunicationErrorException.serializers,
  ..._i19.DecodeAuthorizationMessageRequest.serializers,
  ..._i20.DecodeAuthorizationMessageResponse.serializers,
  ..._i21.InvalidAuthorizationMessageException.serializers,
  ..._i22.GetAccessKeyInfoRequest.serializers,
  ..._i23.GetAccessKeyInfoResponse.serializers,
  ..._i24.GetCallerIdentityRequest.serializers,
  ..._i25.GetCallerIdentityResponse.serializers,
  ..._i26.GetFederationTokenRequest.serializers,
  ..._i27.FederatedUser.serializers,
  ..._i28.GetFederationTokenResponse.serializers,
  ..._i29.GetSessionTokenRequest.serializers,
  ..._i30.GetSessionTokenResponse.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i31.BuiltList,
    [FullType(_i2.PolicyDescriptorType)],
  ): _i31.ListBuilder<_i2.PolicyDescriptorType>.new,
  const FullType(
    _i31.BuiltList,
    [FullType(_i3.Tag)],
  ): _i31.ListBuilder<_i3.Tag>.new,
  const FullType(
    _i31.BuiltList,
    [FullType(String)],
  ): _i31.ListBuilder<String>.new,
};
