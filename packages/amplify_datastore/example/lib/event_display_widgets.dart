// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
