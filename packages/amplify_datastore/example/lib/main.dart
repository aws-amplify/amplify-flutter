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

library sample_app;

import 'dart:convert';

import 'package:amplify_datastore_example/codegen/ModelProvider.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'amplifyconfiguration.dart';

import 'codegen/Blog.dart';
import 'codegen/Post.dart';
import 'codegen/Comment.dart';

part 'queries_display_widgets.dart';
part 'save_model_widgets.dart';
part 'event_display_widgets.dart';

void main() {
  runApp(MyApp());
}

final divider = VerticalDivider(
  color: Colors.white,
  width: 10,
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Post> _posts = List();
  List<Comment> _comments = List();
  List<Blog> _blogs = List();
  List<Post> _posts4rating = List();
  List<Post> _posts1To4Rating = List();
  List<Post> _postWithCreatedDate = List();
  List<Post> _posts2Or5Rating = List();
  List<Post> _postWithIdNotEquals = List();
  List<Post> _firstPostFromResult = List();
  List<Post> _allPostsWithoutRating2Or5 = List();
  List<String> _postStreamingData = List();
  List<String> _blogStreamingData = List();
  List<String> _commentStreamingData = List();
  bool _isAmplifyConfigured = false;
  String _queriesToView = "Post"; //default view
  Blog _selectedBlogForNewPost;
  Post _selectedPostForNewComment;
  Stream<SubscriptionEvent<Post>> postStream;
  Stream<SubscriptionEvent<Blog>> blogStream;
  Stream<SubscriptionEvent<Comment>> commentStream;
  bool _listeningToHub = true;
  AmplifyDataStore datastorePlugin;

  final _titleController = TextEditingController();
  final _ratingController = TextEditingController();
  final _nameController = TextEditingController();
  final _contentController = TextEditingController();
  ScrollController _postScrollController =
      ScrollController(initialScrollOffset: 50.0);
  ScrollController _blogScrollController =
      ScrollController(initialScrollOffset: 50.0);
  ScrollController _commentScrollController =
      ScrollController(initialScrollOffset: 50.0);

  Amplify amplify = new Amplify();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    datastorePlugin = AmplifyDataStore(modelProvider: ModelProvider.instance);
    listenToHub();
    await amplify.addPlugin(dataStorePlugins: [datastorePlugin]);
    // Configure
    await amplify.configure(amplifyconfig);

    // setup streams
    postStream = Amplify.DataStore.observe(Post.classType);
    postStream.listen((event) {
      _postStreamingData.add('Post: ' +
          (event.eventType.toString() == EventType.delete.toString()
              ? event.item.id
              : event.item.title) +
          ', of type: ' +
          event.eventType.toString());
      runQueries();
    }).onError((error) => print(error));

    blogStream = Amplify.DataStore.observe(Blog.classType);
    blogStream.listen((event) {
      _blogStreamingData.add('Blog: ' +
          (event.eventType.toString() == EventType.delete.toString()
              ? event.item.id
              : event.item.name) +
          ', of type: ' +
          event.eventType.toString());
      runQueries();
    }).onError((error) => print(error));

    commentStream = Amplify.DataStore.observe(Comment.classType);
    commentStream.listen((event) {
      _commentStreamingData.add('Comment: ' +
          (event.eventType.toString() == EventType.delete.toString()
              ? event.item.id
              : event.item.content) +
          ', of type: ' +
          event.eventType.toString());
      runQueries();
    }).onError((error) => print(error));

    setState(() {
      _isAmplifyConfigured = true;
    });
  }

  void listenToHub() {
    AmplifyDataStore.events.listenToDataStore((msg) {
      if (msg["eventName"] == "ready") {
        runQueries();
      }
      print(msg);
    });
    setState(() {
      _listeningToHub = true;
    });
  }

  void stopListeningToHub() {
    AmplifyDataStore.events.stopListeningToDataStore();
    setState(() {
      _listeningToHub = false;
    });
  }

  void runQueries() async {
    List<Post> allPosts = List();
    List<Comment> allComments = List();
    List<Blog> allBlogs = List();
    List<Post> posts4Rating = List();
    List<Post> posts1To4Rating = List();
    List<Post> posts2Or5Rating = List();
    List<Post> postWithCreatedDate = List();
    List<Post> postWithIdNotEquals = List();
    List<Post> firstPostFromResult = List();
    List<Post> allPostsWithoutRating2Or5 = List();

    // get all comments
    (await Amplify.DataStore.query(Comment.classType)).forEach((element) {
      if (element != null) {
        allComments.add(element);
      }
    });

    // get all posts
    (await Amplify.DataStore.query(Post.classType)).forEach((element) {
      if (element != null) {
        allPosts.add(element);
      }
    });

    // get all blogs
    (await Amplify.DataStore.query(Blog.classType)).forEach((element) {
      if (element != null) {
        allBlogs.add(element);
      }
    });

    (await Amplify.DataStore.query(Post.classType, where: Post.RATING.ge(4)))
        .forEach((element) {
      posts4Rating.add(element);
    });

    (await Amplify.DataStore.query(Post.classType,
            where: Post.RATING.between(1, 4)))
        .forEach((element) {
      posts1To4Rating.add(element);
    });

    (await Amplify.DataStore.query(Post.classType,
            where: Post.CREATED.eq("2020-02-02T20:20:20-08:00")))
        .forEach((element) {
      postWithCreatedDate.add(element);
    });

    (await Amplify.DataStore.query(Post.classType,
            where: QueryField(fieldName: "post.id")
                .ne("e25859fc-e254-4e8b-8cae-62ccacce4097")))
        .forEach((element) {
      postWithIdNotEquals.add(element);
    });

    (await Amplify.DataStore.query(Post.classType,
            where: Post.RATING.eq(2).or(Post.RATING.eq(5))))
        .forEach((element) {
      posts2Or5Rating.add(element);
    });

    (await Amplify.DataStore.query(Post.classType,
            pagination: QueryPagination.firstResult()))
        .forEach((element) {
      firstPostFromResult.add(element);
    });

    (await Amplify.DataStore.query(Post.classType,
            where: not(Post.RATING.eq(5).or(Post.RATING.eq(2)))))
        .forEach((element) {
      allPostsWithoutRating2Or5.add(element);
    });

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;
    setState(() {
      _posts = allPosts;
      _comments = allComments;
      _blogs = allBlogs;
      _posts1To4Rating = posts1To4Rating;
      _posts4rating = posts4Rating;
      _postWithCreatedDate = postWithCreatedDate;
      _posts2Or5Rating = posts2Or5Rating;
      _postWithIdNotEquals = postWithIdNotEquals;
      _firstPostFromResult = firstPostFromResult;
      _allPostsWithoutRating2Or5 = allPostsWithoutRating2Or5;
    });
  }

  savePost(String title, int rating, Blog associatedBlog) async {
    try {
      Post post = Post(title: title, rating: rating, blog: associatedBlog);
      await Amplify.DataStore.save(post);
      runQueries();
    } catch (e) {
      print(e);
    }
  }

  saveBlog(String name) async {
    try {
      Blog blog = Blog(
        name: name,
      );
      await Amplify.DataStore.save(blog);
      runQueries();
    } catch (e) {
      print(e);
    }
  }

  saveComment(String content, Post associatedPost) async {
    try {
      Comment comment = Comment(content: content, post: associatedPost);
      await Amplify.DataStore.save(comment);
      runQueries();
    } catch (e) {
      print(e);
    }
  }

  deletePost(String id) async {
    try {
      _selectedPostForNewComment = null;
      await Amplify.DataStore.delete(Post(id: id, title: null));
      runQueries();
    } catch (e) {
      print(e);
    }
  }

  deleteBlog(String id) async {
    try {
      _selectedBlogForNewPost = null;
      await Amplify.DataStore.delete(Blog(id: id, name: null));
      runQueries();
    } catch (e) {
      print(e);
    }
  }

  deleteComment(String id) async {
    try {
      await Amplify.DataStore.delete(Comment(id: id, content: null));
      runQueries();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    executeAfterBuild();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Best DataStore App Ever',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () async {
                    await Amplify.DataStore.clear();
                    runQueries();
                  },
                  child: Icon(
                    Icons.clear,
                    semanticLabel: "Clear",
                    size: 24.0,
                  ),
                )),
          ],
        ),
        body: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10.0)),

            // Row for saving blog
            addBlogWidget(_nameController, _isAmplifyConfigured, saveBlog),

            // Row for saving post
            addPostWidget(
                _titleController,
                _ratingController,
                _isAmplifyConfigured,
                _selectedBlogForNewPost,
                _blogs,
                savePost,
                this),

            // Row for saving comment
            addCommentWidget(_contentController, _isAmplifyConfigured,
                _selectedPostForNewComment, _posts, saveComment, this),

            Padding(padding: EdgeInsets.all(10.0)),

            // Row for query buttons
            displayQueryButtons(_isAmplifyConfigured, this, runQueries),

            Padding(padding: EdgeInsets.all(5.0)),
            Text("Listen to DataStore Hub"),
            Switch(
              value: _listeningToHub,
              onChanged: (value) {
                if (_listeningToHub) {
                  stopListeningToHub();
                } else {
                  listenToHub();
                }
              },
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
            ),

            Padding(padding: EdgeInsets.all(5.0)),

            // Showing relevant queries
            if (_queriesToView == "Post")
              getWidgetToDisplayPost(_posts, deletePost, _blogs)
            else if (_queriesToView == "Blog")
              getWidgetToDisplayBlog(_blogs, deleteBlog)
            else if (_queriesToView == "Comment")
              getWidgetToDisplayComment(_comments, deleteComment, _posts),

            Text(_queriesToView + " Events",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 14)),

            Padding(padding: EdgeInsets.all(5.0)),
            if (_queriesToView == "Post")
              getWidgetToDisplayPostEvents(
                  _postScrollController, _postStreamingData, executeAfterBuild)
            else if (_queriesToView == "Blog")
              getWidgetToDisplayBlogEvents(
                  _blogScrollController, _blogStreamingData, executeAfterBuild)
            else if (_queriesToView == "Comment")
              getWidgetToDisplayCommentEvents(_commentScrollController,
                  _commentStreamingData, executeAfterBuild),
          ],
          // replace with any or all query results as needed
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) => executeAfterBuild());
  }

  Future<void> executeAfterBuild() async {
    // this code will get executed after the build method
    // because of the way async functions are scheduled

    Future.delayed(const Duration(milliseconds: 500), () {
      if (_postScrollController.hasClients)
        _postScrollController.animateTo(
            _postScrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeOut);
      if (_blogScrollController.hasClients)
        _blogScrollController.animateTo(
            _blogScrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeOut);
      if (_commentScrollController.hasClients)
        _commentScrollController.animateTo(
            _commentScrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeOut);
    });
  }
}
