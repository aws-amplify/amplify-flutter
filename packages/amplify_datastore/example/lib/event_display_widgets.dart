//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

part of sample_app;

Widget getWidgetToDisplayBlogEvents(ScrollController scrollController,
    List<String> streamingData, Future<void> Function() executeAfterBuild) {
  return SizedBox(
      height: 70,
      child: ListView.builder(
          controller: scrollController,
          shrinkWrap: true,
          reverse: true,
          itemCount: streamingData.length,
          itemBuilder: (BuildContext context, int index) {
            executeAfterBuild();
            return Container(
              margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Text(streamingData[index]),
            );
          }));
}

Widget getWidgetToDisplayPostEvents(ScrollController scrollController,
    List<String> streamingData, Future<void> Function() executeAfterBuild) {
  return SizedBox(
      height: 70,
      child: ListView.builder(
          controller: scrollController,
          shrinkWrap: true,
          reverse: true,
          itemCount: streamingData.length,
          itemBuilder: (BuildContext context, int index) {
            executeAfterBuild();
            return Container(
              margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Text(streamingData[index]),
            );
          }));
}

Widget getWidgetToDisplayCommentEvents(ScrollController scrollController,
    List<String> streamingData, Future<void> Function() executeAfterBuild) {
  return SizedBox(
      height: 70,
      child: ListView.builder(
          controller: scrollController,
          shrinkWrap: true,
          reverse: true,
          itemCount: streamingData.length,
          itemBuilder: (BuildContext context, int index) {
            executeAfterBuild();
            return Container(
              margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Text(streamingData[index]),
            );
          }));
}
