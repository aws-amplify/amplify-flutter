// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_example/models/Blog.dart';
import 'package:amplify_api_example/models/Comment.dart';
import 'package:amplify_api_example/models/Post.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class GraphQLApiView extends StatefulWidget {
  const GraphQLApiView({super.key, this.isAmplifyConfigured = false});
  final bool isAmplifyConfigured;

  @override
  State<GraphQLApiView> createState() => _GraphQLApiViewState();
}

class _GraphQLApiViewState extends State<GraphQLApiView> {
  String _result = '';
  StreamSubscription<GraphQLResponse<Blog>>? _subscription;
  StreamSubscription<GraphQLResponse<Post>>? _subscriptionByID;
  void Function()? _unsubscribe;
  GraphQLOperation<dynamic>? _lastOperation;

  List<ModelIdentifier<Blog>> blogIds = [];
  List<ModelIdentifier<Post>> postIds = [];
  late ModelIdentifier<Blog>? _selectedBlog;
  late ModelIdentifier<Post>? _selectedPost;
  late ModelIdentifier<Comment>? _selectedComment;

  Blog? _blog;
  Post? _post;

  /// Subscribe to new blogs
  Future<void> subscribe() async {
    if (_subscription != null) {
      return;
    }

    final subscriptionReq = ModelSubscriptions.onCreate(
      Blog.classType,
      authorizationMode: APIAuthorizationType.userPools,
    );

    final operation = Amplify.API.subscribe(
      subscriptionReq,
      onEstablished: () => print('Subscription established'),
    );

    final streamSubscription = operation.listen(
      handleSubscriptionEvents,
      onError: (Object error) => print(
        'Error in GraphQL subscription: $error',
      ),
    );
    setState(() {
      _subscription = streamSubscription;
      _unsubscribe = streamSubscription.cancel;
    });
  }

  /// Subscribe to new posts for a blog ID
  /// Requires a blog to be created first
  Future<void> subscribeByID() async {
    if (_subscriptionByID != null) {
      return;
    }

    final subscriptionReq = ModelSubscriptions.onCreate(
      Post.classType,
      where: Post.BLOG.eq(_blog!.id),
    );

    final operation = Amplify.API.subscribe(
      subscriptionReq,
      onEstablished: () => print('Subscription established'),
    );

    final streamSubscription = operation.listen(
      handleSubscriptionEvents,
      onError: (Object error) => print(
        'Error in GraphQL subscription: $error',
      ),
    );
    setState(() {
      _subscriptionByID = streamSubscription;
      _unsubscribe = streamSubscription.cancel;
    });
  }

  /// Get a list of blogs with model query helper
  Future<void> queryBlogs() async {
    final req = ModelQueries.list(
      Blog.classType,
      authorizationMode: APIAuthorizationType.userPools,
    );

    final operation = Amplify.API.query(request: req);

    final response = await operation.response;
    handleResponse(response);
  }

  /// Get a list of posts and parent blogs with model query helper
  Future<void> queryPosts() async {
    final req = ModelQueries.list(
      Post.classType,
      limit: 15,
      authorizationMode: APIAuthorizationType.userPools,
    );

    final operation = Amplify.API.query(request: req);

    final response = await operation.response;
    handleResponse(response);
  }

  /// Get a list of Comments with raw GraphQL and their nested Post and Blog
  /// & decode the response into model objects
  Future<void> queryComments() async {
    const document = r'''
      query MyQuery {
        listComments {
          items {
            id
            owner
            content
            post {
              title
              id
              blog {
                id
                name
              }
            }
          }
        }
      }
    ''';

    final req = GraphQLRequest<PaginatedResult<Comment>>(
      document: document,
      // The response from this query will be a list of Comments
      // these two parameters are required to decode the response
      // into type safe model objects.
      // Without them the response will be returned as a Map<String, dynamic>

      decodePath: 'listComments',
      modelType: const PaginatedModelType(Comment.classType),
    );

    final operation = Amplify.API.query(request: req);

    final response = await operation.response;
    print(response);
    handleResponse(response);
  }

  // Returns a blog with the id given by the user
  Future<void> getBlog() async {
    final req = ModelQueries.get(
      Blog.classType,
      _selectedBlog!,
      authorizationMode: APIAuthorizationType.userPools,
    );

    final operation = Amplify.API.query(request: req);

    final response = await operation.response;
    handleResponse(response);
  }

  // Returns a post with the id given by the user
  Future<void> getPost() async {
    final req = ModelQueries.get(
      Post.classType,
      _selectedPost!,
      authorizationMode: APIAuthorizationType.userPools,
    );

    final operation = Amplify.API.query(request: req);

    final response = await operation.response;
    handleResponse(response);
  }

  // Returns a comment by id with nested parents post and blog
  Future<void> getComment() async {
    const document = r'''
      query MyQuery($id: ID!) {
        getComment(id: $id) {
          id
          content
          post {
            title
            id
            blog {
              id
              name
            }
          }
        }
      }
    ''';
    final req = GraphQLRequest<Comment>(
      document: document,
      variables: _selectedComment!.serializeAsMap(),
      authorizationMode: APIAuthorizationType.userPools,
      // The response from this query will be a Comment
      // these two parameters are required to decode the response
      // into type safe model objects.
      // Without them the response will be returned as a Map<String, dynamic>
      modelType: Comment.classType,
      decodePath: 'getComment',
    );

    final operation = Amplify.API.query(request: req);

    final response = await operation.response;
    handleResponse(response);
  }

  // Create a new blog
  Future<void> createBlog() async {
    _blog = Blog(name: 'Example Blog - ${uuid()}');

    final req = ModelMutations.create(
      _blog!,
      authorizationMode: APIAuthorizationType.userPools,
    );

    final operation = Amplify.API.mutate(
      request: req,
    );
    _lastOperation = operation;

    final response = await operation.response;
    handleResponse(response);
  }

  // Create a new post
  // Attached to the last created blog
  Future<void> createPost() async {
    _post = Post(title: 'Example Post - ${uuid()}', rating: 3, blog: _blog);

    final req = ModelMutations.create(
      _post!,
      authorizationMode: APIAuthorizationType.userPools,
    );

    final operation = Amplify.API.mutate(
      request: req,
    );
    _lastOperation = operation;

    final response = await operation.response;
    handleResponse(response);
  }

  // Create a new comment
  // Attached to the last created blog and post
  Future<void> createComment() async {
    final comment =
        Comment(content: 'Example Comment - ${uuid()}', post: _post);
    final req = ModelMutations.create(
      comment,
      authorizationMode: APIAuthorizationType.userPools,
    );

    final operation = Amplify.API.mutate(
      request: req,
    );
    _lastOperation = operation;

    final response = await operation.response;
    handleResponse(response);
  }

  void onCancelPressed() async {
    try {
      await _lastOperation?.cancel();
    } on Exception catch (e) {
      print('Cancel FAILED');
      print(e.toString());
    }
  }

  void handleResponse(
    GraphQLResponse<Model> response,
  ) {
    final data = response.data;
    if (data == null) {
      print('errors: ${response.errors}');
      return;
    }

    final prettyData = prettifyData(data);

    setState(() {
      _result = prettyData;
    });
  }

  void handleSubscriptionEvents(GraphQLResponse<dynamic> event) {
    print('subscription event received');
    if (event.hasErrors) {
      print('Error(s) received from subscription: ${event.errors}');
      return;
    }
    // final prettyData = prettifyData(event.data);
    final data = 'Subscription event data received: ${event.data}';
    print(data);
    setState(() {
      _result = data;
    });
  }

  String prettifyData(Model data) {
    final dataJson = const JsonEncoder.withIndent('  ').convert(data.toJson());
    print('Result data: $dataJson');
    return dataJson;
  }

  @override
  void initState() {
    super.initState();
    queryBlogs();
    queryPosts();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(5),
      children: <Widget>[
        Column(
          children: [
            const SizedBox(
              width: double.infinity,
              child: Text(
                'List',
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: ElevatedButton(
                    onPressed: widget.isAmplifyConfigured ? queryBlogs : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // This is what you need!
                    ),
                    child: const Text('Blogs'),
                  ),
                ),
                Flexible(
                  child: ElevatedButton(
                    onPressed: widget.isAmplifyConfigured ? queryPosts : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // This is what you need!
                    ),
                    child: const Text('Posts'),
                  ),
                ),
                Flexible(
                  child: ElevatedButton(
                    onPressed:
                        widget.isAmplifyConfigured ? queryComments : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // This is what you need!
                    ),
                    child: const Text('Comments'),
                  ),
                ),
              ],
            ),

            /// Mutations
            const SizedBox(
              width: double.infinity,
              child: Text(
                'Create',
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: ElevatedButton(
                    onPressed: widget.isAmplifyConfigured ? createBlog : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber, // This is what you need!
                    ),
                    child: const Text('Blog'),
                  ),
                ),
                Flexible(
                  child: ElevatedButton(
                    onPressed: widget.isAmplifyConfigured && _blog != null
                        ? createPost
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber, // This is what you need!
                    ),
                    child: const Text('Post'),
                  ),
                ),
                Flexible(
                  child: ElevatedButton(
                    onPressed: widget.isAmplifyConfigured &&
                            _blog != null &&
                            _post != null
                        ? createComment
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber, // This is what you need!
                    ),
                    child: const Text('Comment'),
                  ),
                ),
              ],
            ),

            /// Subscriptions
            ///
            const SizedBox(
              width: double.infinity,
              child: Text(
                'Subscriptions',
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: ElevatedButton(
                    onPressed:
                        widget.isAmplifyConfigured && _subscription == null
                            ? subscribe
                            : null,
                    child: const Text('Blogs'),
                  ),
                ),
                Flexible(
                  child: ElevatedButton(
                    onPressed: widget.isAmplifyConfigured &&
                            _subscriptionByID == null &&
                            _blog != null
                        ? subscribeByID
                        : null,
                    child: const Text('Posts By BlogID'),
                  ),
                ),
                Flexible(
                  child: ElevatedButton(
                    onPressed: _subscription != null
                        ? () => setState(() {
                              _unsubscribe?.call();
                              _unsubscribe = null;
                              _subscription = null;
                            })
                        : null,
                    child: const Text('Unsubscribe'),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _lastOperation != null &&
                        _lastOperation!.operation.isCompleted &&
                        _lastOperation!.operation.isCanceled
                    ? onCancelPressed
                    : null,
                child: const Text('Cancel Operation'),
              ),
            ),
          ],
        ),

        /// Get By ID
        ///
        const Padding(padding: EdgeInsets.all(10)),
        const Divider(
          color: Colors.black,
        ),
        const Padding(padding: EdgeInsets.all(10)),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter Blog ID',
          ),
          onChanged: (String newValue) {
            setState(() {
              _selectedBlog = BlogModelIdentifier(id: newValue);
            });
          },
        ),
        ElevatedButton(
          onPressed: widget.isAmplifyConfigured ? getBlog : null,
          child: const Text('Get Blog'),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter Post ID',
          ),
          onChanged: (String newValue) {
            setState(() {
              _selectedPost = PostModelIdentifier(id: newValue);
            });
          },
        ),
        ElevatedButton(
          onPressed: widget.isAmplifyConfigured ? getPost : null,
          child: const Text('Get Post'),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter Comment ID',
          ),
          onChanged: (String newValue) {
            setState(() {
              _selectedComment = CommentModelIdentifier(id: newValue);
            });
          },
        ),
        ElevatedButton(
          onPressed: widget.isAmplifyConfigured ? getComment : null,
          child: const Text('Get Comment'),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        const Divider(
          color: Colors.black,
        ),
        const Text(
          'Results',
          textAlign: TextAlign.left,
        ),
        const Padding(padding: EdgeInsets.all(10)),
        Text(
          '\n$_result\n',
        ),
      ],
    );
  }
}
