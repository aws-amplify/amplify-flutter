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

export 'traits/annotation_trait.dart';

// AWS
export 'traits/aws/arn_reference_trait.dart';
export 'traits/aws/arn_trait.dart';
export 'traits/aws/auth/cognito_user_pools_trait.dart';
export 'traits/aws/auth/sig_v4_trait.dart';
export 'traits/aws/auth/unsigned_payload_trait.dart';
export 'traits/aws/client_endpoint_discovery/client_discovered_endpoint_trait.dart';
export 'traits/aws/client_endpoint_discovery/client_endpoint_discovery_id_trait.dart';
export 'traits/aws/client_endpoint_discovery/client_endpoint_discovery_trait.dart';
export 'traits/aws/control_plane_trait.dart';
export 'traits/aws/customizations/s3_unwrapped_xml_output_trait.dart';
export 'traits/aws/data_trait.dart';
export 'traits/aws/http_checksum_trait.dart';
export 'traits/aws/protocols/aws_json_1_0_trait.dart';
export 'traits/aws/protocols/aws_json_1_1_trait.dart';
export 'traits/aws/protocols/aws_protocol_trait.dart';
export 'traits/aws/protocols/rest_json_1_trait.dart';
export 'traits/aws/protocols/rest_xml_trait.dart';
export 'traits/aws/service_trait.dart';

export 'traits/core/auth_definition_trait.dart';
export 'traits/core/auth_trait.dart';
export 'traits/core/box_trait.dart';
export 'traits/core/cors_trait.dart';
export 'traits/core/deprecated_trait.dart';
export 'traits/core/documentation_trait.dart';
export 'traits/core/endpoint_trait.dart';
export 'traits/core/enum_definition.dart';
export 'traits/core/enum_trait.dart';
export 'traits/core/error_trait.dart';
export 'traits/core/event_header_trait.dart';
export 'traits/core/event_payload_trait.dart';
export 'traits/core/examples_trait.dart';
export 'traits/core/external_documentation_trait.dart';
export 'traits/core/host_label_trait.dart';
export 'traits/core/id_ref_trait.dart';
export 'traits/core/idempotency_token_trait.dart';
export 'traits/core/idempotent_trait.dart';
export 'traits/core/input_trait.dart';
export 'traits/core/internal_trait.dart';
export 'traits/core/json_name_trait.dart';
export 'traits/core/length_trait.dart';
export 'traits/core/media_type_trait.dart';
export 'traits/core/no_replace_trait.dart';
export 'traits/core/optional_auth_trait.dart';
export 'traits/core/output_trait.dart';
export 'traits/core/paginated_trait.dart';
export 'traits/core/pattern_trait.dart';
export 'traits/core/private_trait.dart';
export 'traits/core/protocol_definition_trait.dart';
export 'traits/core/range_trait.dart';
export 'traits/core/readonly_trait.dart';
export 'traits/core/recommended_trait.dart';
export 'traits/core/references_trait.dart';
export 'traits/core/required_trait.dart';
export 'traits/core/requires_length_trait.dart';
export 'traits/core/resource_identifier_trait.dart';
export 'traits/core/retryable_trait.dart';
export 'traits/core/sensitive_trait.dart';
export 'traits/core/since_trait.dart';
export 'traits/core/sparse_trait.dart';
export 'traits/core/streaming_trait.dart';
export 'traits/core/suppress_trait.dart';
export 'traits/core/tags_trait.dart';
export 'traits/core/timestamp_format_trait.dart';
export 'traits/core/title_trait.dart';
export 'traits/core/unit_type_trait.dart';
export 'traits/core/unstable_trait.dart';
export 'traits/core/xml_attribute_trait.dart';
export 'traits/core/xml_flattened_trait.dart';
export 'traits/core/xml_name_trait.dart';
export 'traits/core/xml_namespace_trait.dart';
export 'traits/http/http_api_key_auth_trait.dart';
export 'traits/http/http_basic_auth_trait.dart';
export 'traits/http/http_bearer_auth_trait.dart';
export 'traits/http/http_checksum_required_trait.dart';
export 'traits/http/http_digest_auth_trait.dart';
export 'traits/http/http_error_trait.dart';
export 'traits/http/http_header_trait.dart';
export 'traits/http/http_label_trait.dart';
export 'traits/http/http_payload_trait.dart';
export 'traits/http/http_prefix_headers_trait.dart';
export 'traits/http/http_query_params_trait.dart';
export 'traits/http/http_query_trait.dart';
export 'traits/http/http_response_code_trait.dart';
export 'traits/http/http_trait.dart';
export 'traits/string_list_trait.dart';
export 'traits/string_trait.dart';

// Protocol Tests
export 'traits/test/http_malformed_request_definition.dart';
export 'traits/test/http_malformed_request_test_case.dart';
export 'traits/test/http_malformed_request_tests_trait.dart';
export 'traits/test/http_malformed_response_body_definition.dart';
export 'traits/test/http_malformed_response_definition.dart';
export 'traits/test/http_message_test_case.dart';
export 'traits/test/http_request_test_case.dart';
export 'traits/test/http_request_tests_trait.dart';
export 'traits/test/http_response_test_case.dart';
export 'traits/test/http_response_tests_trait.dart';
export 'traits/test/parameterized_http_malformed_test_case.dart';

export 'traits/trait.dart';

// Waiters
export 'traits/waiters/acceptor_definition.dart';
export 'traits/waiters/matcher.dart';
export 'traits/waiters/waitable_trait.dart';
export 'traits/waiters/waiter.dart';
