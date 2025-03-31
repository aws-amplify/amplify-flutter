// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

class NoOpVoidResult : PushNotificationsHostApiBindings.VoidResult {
    override fun success() {}
  
    override fun error(error: Throwable) {}
}
