// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'package:flutter/services.dart';
import 'core_platform_interface.dart';

const MethodChannel _channel = MethodChannel('com.amplify.flutter/core');

/// An implementation of [AmplifyCorePlatform] that uses method channels.
class MethodChannelCore extends AmplifyCorePlatform {

  Future<void> configure() {
    print("METHOD CHANNEL CORE GETMYAMPLIFY");
    return _channel.invokeMethod('configure');
  }

  Future<String> getConfiguration() async {
    return _channel.invokeMethod('getConfiguration');
  }
}
