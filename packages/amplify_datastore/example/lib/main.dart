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

import 'dart:convert';

import 'package:amplify_datastore_example/codegen/ModelProvider.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'amplifyconfiguration.dart';

import 'codegen/Blog.dart';
import 'codegen/Post.dart';
import 'codegen/Comment.dart';

void main() {
  runApp(MyApp());
}

JsonEncoder encoder = new JsonEncoder.withIndent('  ');

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _posts = '';
  String _comments = '';
  String _blogs = '';
  String _posts4rating = '';
  String _posts1To4Rating = '';
  String _postWithCreatedDate = '';
  String _posts2Or5Rating = '';
  String _postWithIdNotEquals = '';
  String _firstPostFromResult = '';
  String _allPostsWithoutRating2Or5 = '';
  bool _isAmplifyConfigured = false;

  String _streamingData = '';
  Stream<SubscriptionEvent<Post>> stream = null;
  Amplify amplify = new Amplify();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    AmplifyDataStore datastorePlugin =
        AmplifyDataStore(modelProvider: ModelProvider.instance);

    await amplify.addPlugin(dataStorePlugins: [datastorePlugin]);
    // Configure
    await amplify.configure(amplifyconfig);
    setState(() {
      _isAmplifyConfigured = true;
    });
    runQueries();
  }

  void runQueries() async {
    String allPosts = '';
    String allComments = '';
    String allBlogs = '';
    String posts4Rating = '';
    String posts1To4Rating = '';
    String posts2Or5Rating = '';
    String postWithCreatedDate = '';
    String postWithIdNotEquals = '';
    String firstPostFromResult = '';
    String allPostsWithoutRating2Or5 = '';

    stream = Amplify.DataStore.observe(Post.classType);
    stream.listen((event) {
      print("Received Event: " + (event.item).toJson().toString());
    });

    // get all comments
    (await Amplify.DataStore.query(Comment.classType)).forEach((element) {
      if (element != null) {
        allComments += encoder.convert(element.toJson());
      }
    });

    // get all posts
    (await Amplify.DataStore.query(Post.classType)).forEach((element) {
      if (element != null) {
        allPosts += encoder.convert(element.toJson());
      }
    });

    // get all blogs
    (await Amplify.DataStore.query(Blog.classType)).forEach((element) {
      if (element != null) {
        allBlogs += encoder.convert(element.toJson());
      }
    });

    (await Amplify.DataStore.query(Post.classType, where: Post.RATING.ge(4)))
        .forEach((element) {
      posts4Rating += encoder.convert(element.toJson()) + '\n';
    });

    (await Amplify.DataStore.query(Post.classType,
            where: Post.RATING.between(1, 4)))
        .forEach((element) {
      posts1To4Rating += encoder.convert(element.toJson()) + '\n';
    });

    (await Amplify.DataStore.query(Post.classType,
            where: QueryField(fieldName: "post.id")
                .ne("e25859fc-e254-4e8b-8cae-62ccacce4097")))
        .forEach((element) {
      postWithIdNotEquals += encoder.convert(element.toJson()) + '\n';
    });

    (await Amplify.DataStore.query(Post.classType,
            where: Post.RATING.eq(2).or(Post.RATING.eq(5))))
        .forEach((element) {
      posts2Or5Rating += encoder.convert(element.toJson()) + '\n';
    });

    (await Amplify.DataStore.query(Post.classType,
            pagination: QueryPagination.firstResult()))
        .forEach((element) {
      firstPostFromResult += encoder.convert(element.toJson());
    });

    (await Amplify.DataStore.query(Post.classType,
            where: not(Post.RATING.eq(5).or(Post.RATING.eq(2)))))
        .forEach((element) {
      allPostsWithoutRating2Or5 += encoder.convert(element.toJson());
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

  savePost() async {
    try {
      Post post = Post(
          title: 'New Post being saved', rating: 15, created: DateTime.now());
      await Amplify.DataStore.save(post);
      Post newPost = post.copyWith(id: post.id, title: 'Updated Title');
      await Amplify.DataStore.save(newPost, when: Post.RATING.eq(10));
    } catch (e) {
      print(e);
    }
  }

  deletePost() async {
    try {
      await Amplify.DataStore.delete(
          // replace 'id' for testing as needed
          Post(id: 'f6c4be2d-9b1b-496e-b3bf-78035f0e6191', title: 'Title'));
    } catch (e) {
      print(e);
    }
  }

  clearStore() async {
    try {
      Amplify.DataStore.clear();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Plugin example app'),
        ),
        body: Center(
          child: ListView(
            padding: EdgeInsets.all(5.0),
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10.0)),
              Center(
                child: RaisedButton(
                  onPressed: _isAmplifyConfigured ? savePost : null,
                  child: Text('Save Post'),
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Center(
                child: RaisedButton(
                  onPressed: _isAmplifyConfigured ? deletePost : null,
                  child: Text('Delete Post'),
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Center(
                child: RaisedButton(
                  onPressed: _isAmplifyConfigured ? clearStore : null,
                  child: Text('Clear Store'),
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Center(
                child: RaisedButton(
                  onPressed: _isAmplifyConfigured ? runQueries : null,
                  child: const Text('Query'),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              // replace with any or all query results as needed
              Text('Posts >= 4 rating: \n$_posts4rating\n'),
            ],
          ),
        ),
      ),
    );
  }
}
