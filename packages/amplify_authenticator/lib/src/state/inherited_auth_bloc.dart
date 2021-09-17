/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:flutter/material.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';

class InheritedAuthBloc extends InheritedWidget {
  // ignore: public_member_api_docs
  const InheritedAuthBloc(
      {Key? key, required this.authBloc, required Widget child})
      : super(key: key, child: child);

  final StateMachineBloc authBloc;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  // ignore: public_member_api_docs
  static InheritedAuthBloc? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedAuthBloc>();
}
