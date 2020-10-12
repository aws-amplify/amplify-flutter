import 'package:flutter/material.dart';
import 'dart:async';

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'amplifyconfiguration.dart';

import 'Post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _posts = '';
  String _posts4rating = '';
  String _posts1To4Rating = '';
  String _postWithId = '';
  String _posts2Or5Rating = '';
  Amplify amplify = new Amplify();
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    AmplifyDataStore datastorePlugin =
        AmplifyDataStore(modelSchemas: [createTestSchema()]);
    await amplify.addPlugin(dataStorePlugins: [datastorePlugin]);
    // Configure
    await amplify.configure(amplifyconfig);
    String allPosts = '';
    String posts4Rating = '';
    String posts1To4Rating = '';
    String posts2Or5Rating = '';
    String postWithId = '';

    (await Amplify.DataStore.query(Post.classType,
            sortBy: [Post.RATING.ascending()]))
        .forEach((element) {
      allPosts += element.toJson().toString() + '\n';
    });

    (await Amplify.DataStore.query(Post.classType, where: Post.RATING.ge(4)))
        .forEach((element) {
      posts4Rating += element.toJson().toString() + '\n';
    });

    (await Amplify.DataStore.query(Post.classType,
            where: Post.RATING.between(1, 4)))
        .forEach((element) {
      posts1To4Rating += element.toJson().toString() + '\n';
    });

    (await Amplify.DataStore.query(Post.classType,
            where: Post.ID.eq("06befc39-c147-4242-9a91-2c08b97f2054")))
        .forEach((element) {
      postWithId += element.toJson().toString() + '\n';
    });

    (await Amplify.DataStore.query(Post.classType,
            where: Post.RATING.eq(2).or(Post.RATING.eq(5))))
        .forEach((element) {
      posts2Or5Rating += element.toJson().toString() + '\n';
    });

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;
    setState(() {
      _posts = allPosts;
      _posts1To4Rating = posts1To4Rating;
      _posts4rating = posts4Rating;
      _postWithId = postWithId;
      _posts2Or5Rating = posts2Or5Rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text(
              'All Posts sort by rating ascending (sorting not working)\n$_posts\n' +
                  'Posts >= 4 rating\n$_posts4rating\n' +
                  'Posts between 1 and 4 rating\n$_posts1To4Rating\n' +
                  'Posts with rating 2 or 5\n$_posts2Or5Rating\n' +
                  'Post With id 06befc39-c147-4242-9a91-2c08b97f2054 (Not working)\n$_postWithId'),
        ),
      ),
    );
  }

  ModelSchema createTestSchema() {
    Map<String, ModelField> modelFieldMap = {};
    modelFieldMap["id"] = ModelField(
        name: "id",
        type: "String",
        targetType: "ID",
        isRequired: true,
        isArray: false,
        isEnum: false,
        isModel: false);
    modelFieldMap["title"] = ModelField(
        name: "title",
        type: "String",
        targetType: "String",
        isRequired: true,
        isArray: false,
        isEnum: false,
        isModel: false);
    modelFieldMap["rating"] = ModelField(
        name: "rating",
        type: "Integer",
        targetType: "Integer",
        isRequired: false,
        isArray: false,
        isEnum: false,
        isModel: false);
    modelFieldMap["created"] = ModelField(
        name: "created",
        type: "DateTime",
        targetType: "Date",
        isRequired: false,
        isArray: false,
        isEnum: false,
        isModel: false);
    return ModelSchema(
        name: "Post", pluralName: "Posts", fields: modelFieldMap);
  }
}
