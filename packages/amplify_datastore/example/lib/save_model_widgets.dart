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

Widget addBlogWidget(TextEditingController controller, bool isAmplifyConfigured,
    Function saveFn) {
  return Row(
    children: [
      divider,
      Flexible(
        child: TextField(
          decoration: const InputDecoration(hintText: "Blog Name"),
          controller: controller,
        ),
      ),
      divider,
      ElevatedButton(
        onPressed: () async {
          if (isAmplifyConfigured) {
            await saveFn(controller.text);
            controller.clear();
            return;
          }
          return null;
        },
        child: const Text('Save Blog'),
      ),
      divider,
    ],
  );
}

Widget addPostWidget(
    {required TextEditingController titleController,
    required TextEditingController ratingController,
    required bool isAmplifyConfigured,
    required List<Blog> allBlogs,
    required Function saveFn,
    required _MyAppState app,
    Blog? defaultBlog}) {
  return Row(
    children: [
      divider,
      Flexible(
        child: TextField(
          decoration: const InputDecoration(hintText: "Post Title"),
          controller: titleController,
        ),
      ),
      divider,
      SizedBox(
        width: 100,
        child: TextField(
          decoration: const InputDecoration(hintText: "Rating"),
          keyboardType: TextInputType.number,
          controller: ratingController,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
      divider,
      DropdownButton<Blog>(
          value: defaultBlog,
          hint: Text("Blog"),
          items: allBlogs
              .map((e) => DropdownMenuItem(
                    child: Text(e.name),
                    value: e,
                  ))
              .toList(), //_dropdownMenuItems,
          onChanged: (value) {
            app.setState(() {
              app._selectedBlogForNewPost = value;
            });
          }),
      divider,
      ElevatedButton(
        onPressed: () async {
          if (isAmplifyConfigured) {
            await saveFn(titleController.text, int.parse(ratingController.text),
                app._selectedBlogForNewPost);
            titleController.clear();
            ratingController.clear();
            return;
          }
          return null;
        },
        child: const Text('Save Post'),
      ),
      divider,
    ],
  );
}

Widget addCommentWidget(
    TextEditingController controller,
    bool isAmplifyConfigured,
    Post? defaultPost,
    List<Post> allPosts,
    Function saveFn,
    _MyAppState app) {
  return Row(
    children: [
      divider,
      Flexible(
        child: TextField(
          decoration: const InputDecoration(hintText: "Comment"),
          controller: controller,
        ),
      ),
      divider,
      DropdownButton<Post>(
          value: defaultPost,
          hint: Text("Post"),
          items: allPosts
              .map((e) => DropdownMenuItem(
                    child: Text(e.title),
                    value: e,
                  ))
              .toList(), //_dropdownMenuItems,
          onChanged: (value) {
            app.setState(() {
              app._selectedPostForNewComment = value;
            });
          }),
      divider,
      ElevatedButton(
        onPressed: () async {
          if (isAmplifyConfigured) {
            await saveFn(controller.text, app._selectedPostForNewComment);
            controller.clear();
            return;
          }
          return null;
        },
        child: const Text('Save Comment'),
      ),
      divider,
    ],
  );
}
