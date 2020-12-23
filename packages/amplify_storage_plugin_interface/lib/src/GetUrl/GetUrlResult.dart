/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:flutter/foundation.dart';

class GetUrlResult {
  String url;

  GetUrlResult({@required this.url});

  @override
  String toString() {
    return 'GetUrlResult(url: $url)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is GetUrlResult && o.url == url;
  }

  @override
  int get hashCode {
    return url.hashCode;
  }
}
