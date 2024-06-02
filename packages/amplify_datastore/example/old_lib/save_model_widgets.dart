// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
    required Function updateSelectedBlogForNewPost,
    Blog? selectedBlog}) {
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
          value: selectedBlog,
          hint: Text("Blog"),
          items: allBlogs
              .map((e) => DropdownMenuItem(
                    child: Text(e.name),
                    value: e,
                  ))
              .toList(), //_dropdownMenuItems,
          onChanged: (value) => updateSelectedBlogForNewPost(value)),
      divider,
      ElevatedButton(
        onPressed: () async {
          if (isAmplifyConfigured) {
            await saveFn(titleController.text, int.parse(ratingController.text),
                selectedBlog);
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
    Post? selectedPostForNewComment,
    Function saveFn,
    Function updateSelectedPostForNewComment) {
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
            updateSelectedPostForNewComment(value);
          }),
      divider,
      ElevatedButton(
        onPressed: () async {
          if (isAmplifyConfigured) {
            await saveFn(controller.text, selectedPostForNewComment);
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
