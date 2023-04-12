import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import '../models/ModelProvider.dart';
import '../util/util.dart';

class GraphQLCreateExamples extends StatelessWidget {
  const GraphQLCreateExamples({
    super.key,
    required this.setResults,
    required this.setBlog,
    required this.setPost,
    this.blog,
    this.post,
    this.authMode = APIAuthorizationType.userPools,
  });

  final APIAuthorizationType? authMode;
  final Blog? blog;
  final Post? post;
  final void Function(Blog) setBlog;
  final void Function(Post) setPost;
  final void Function(String) setResults;

  // Create a new blog
  Future<void> createBlog() async {
    final blog = Blog(name: 'Example Blog - ${uuid()}');
    setBlog(blog);

    final req = ModelMutations.create(
      blog,
      authorizationMode: authMode,
    );

    final operation = Amplify.API.mutate(
      request: req,
    );
    // _lastOperation = operation;

    final response = await operation.response;
    setResults(handleResponse(response));
  }

  // Create a new post
  // Attached to the last created blog
  Future<void> createPost() async {
    final post = Post(title: 'Example Post - ${uuid()}', rating: 3, blog: blog);
    setPost(post);
    final req = ModelMutations.create(
      post,
      authorizationMode: authMode,
    );

    final operation = Amplify.API.mutate(
      request: req,
    );
    // _lastOperation = operation;

    final response = await operation.response;
    setResults(handleResponse(response));
  }

  // Create a new comment
  // Attached to the last created blog and post
  Future<void> createComment() async {
    final comment = Comment(content: 'Example Comment - ${uuid()}', post: post);
    final req = ModelMutations.create(
      comment,
      authorizationMode: authMode,
    );

    final operation = Amplify.API.mutate(
      request: req,
    );
    // _lastOperation = operation;

    final response = await operation.response;
    setResults(handleResponse(response));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Create',
          textAlign: TextAlign.left,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: Amplify.isConfigured ? createBlog : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              child: const Text('Blog'),
            ),
            ElevatedButton(
              onPressed:
                  Amplify.isConfigured && blog != null ? createPost : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              child: const Text('Post'),
            ),
            ElevatedButton(
              onPressed: Amplify.isConfigured && blog != null && post != null
                  ? createComment
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              child: const Text('Comment'),
            ),
          ],
        ),
      ],
    );
  }
}
