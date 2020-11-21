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
      RaisedButton(
        onPressed: () async {
          if (isAmplifyConfigured) {
            await saveFn(controller.text);
            controller.clear();
            return;
          }
          return null;
        },
        child: Text('Save Blog'),
      ),
      divider,
    ],
  );
}

Widget addPostWidget(
    TextEditingController titleController,
    TextEditingController ratingController,
    bool isAmplifyConfigured,
    Blog defaultBlog,
    List<Blog> allBlogs,
    Function saveFn,
    _MyAppState app) {
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
      RaisedButton(
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
        child: Text('Save Post'),
      ),
      divider,
    ],
  );
}

Widget addCommentWidget(
    TextEditingController controller,
    bool isAmplifyConfigured,
    Post defaultPost,
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
      RaisedButton(
        onPressed: () async {
          if (isAmplifyConfigured) {
            await saveFn(controller.text, app._selectedPostForNewComment);
            controller.clear();
            return;
          }
          return null;
        },
        child: Text('Save Comment'),
      ),
      divider,
    ],
  );
}
