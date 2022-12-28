// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class DispatchListener implements Dispatcher {
  const DispatchListener({
    this.onDispatch,
  });

  final void Function(StateMachineEvent<dynamic, dynamic>)? onDispatch;

  @override
  void dispatch(StateMachineEvent<dynamic, dynamic> event) {
    onDispatch?.call(event);
  }
}
