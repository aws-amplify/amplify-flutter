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

@internal

/// Internal auth state machine code.
library amplify_auth_cognito.state;

import 'package:meta/meta.dart';

export 'event/auth_event.dart';
export 'event/credential_store_event.dart';
export 'event/fetch_auth_session_event.dart';
export 'event/hosted_ui_event.dart';
export 'event/sign_in_event.dart';
export 'event/sign_up_event.dart';

export 'machines/auth_state_machine.dart';
export 'machines/credential_store_state_machine.dart';
export 'machines/fetch_auth_session_state_machine.dart';
export 'machines/hosted_ui_state_machine.dart';
export 'machines/sign_in_state_machine.dart';
export 'machines/sign_up_state_machine.dart';

export 'state/auth_state.dart';
export 'state/credential_store_state.dart';
export 'state/fetch_auth_session_state.dart';
export 'state/hosted_ui_state.dart';
export 'state/sign_in_state.dart';
export 'state/sign_up_state.dart';
