import 'dart:async';

import 'package:amplify_datastore_example/main.dart';
import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class PublicView extends StatefulWidget {
  const PublicView({super.key, this.isAmplifyConfigured = false});
  final bool isAmplifyConfigured;

  @override
  State<PublicView> createState() => _PublicViewState();
}

class _PublicViewState extends State<PublicView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<Post> _posts = <Post>[];
  List<Comment> _comments = <Comment>[];
  List<Blog> _blogs = <Blog>[];
  late Stream<SubscriptionEvent<Post>> postStream;
  late Stream<SubscriptionEvent<Blog>> blogStream;
  late Stream<SubscriptionEvent<Comment>> commentStream;
  List<String> _postStreamingData = <String>[];
  List<String> _blogStreamingData = <String>[];
  List<String> _commentStreamingData = <String>[];
  String _queriesToView = "Post"; //default view
  Blog? _selectedBlogForNewPost;
  Post? _selectedPostForNewComment;

  late StreamSubscription<DataStoreHubEvent> hubSubscription;
  bool _listeningToHub = true;

  final _titleController = TextEditingController();
  final _ratingController = TextEditingController();
  final _nameController = TextEditingController();
  final _contentController = TextEditingController();
  ScrollController _postScrollController = ScrollController(
    initialScrollOffset: 50.0,
  );
  ScrollController _blogScrollController = ScrollController(
    initialScrollOffset: 50.0,
  );
  ScrollController _commentScrollController = ScrollController(
    initialScrollOffset: 50.0,
  );

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    initPageState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  Future<void> initPageState() async {
    listenToHub();

    Amplify.DataStore.observeQuery(Blog.classType).listen((
      QuerySnapshot<Blog> snapshot,
    ) {
      var count = snapshot.items.length;
      var now = DateTime.now().toIso8601String();
      bool status = snapshot.isSynced;
      print(
        '[Observe Query] Blog snapshot received with $count models, status: $status at $now',
      );
      setState(() {
        _blogs = snapshot.items;
      });
    });

    Amplify.DataStore.observeQuery(Post.classType).listen((
      QuerySnapshot<Post> snapshot,
    ) {
      setState(() {
        _posts = snapshot.items;
      });
    });

    Amplify.DataStore.observeQuery(Comment.classType).listen((
      QuerySnapshot<Comment> snapshot,
    ) {
      setState(() {
        _comments = snapshot.items;
      });
    });

    // setup streams
    postStream = Amplify.DataStore.observe(Post.classType);
    postStream
        .listen((event) {
          _postStreamingData.add(
            'Post: ' +
                (event.eventType.toString() == EventType.delete.toString()
                    ? event.item.id
                    : event.item.title) +
                ', of type: ' +
                event.eventType.toString(),
          );
        })
        .onError((error) => print(error));

    blogStream = Amplify.DataStore.observe(Blog.classType);
    blogStream
        .listen((event) {
          _blogStreamingData.add(
            'Blog: ' +
                (event.eventType.toString() == EventType.delete.toString()
                    ? event.item.id
                    : event.item.name) +
                ', of type: ' +
                event.eventType.toString(),
          );
        })
        .onError((error) => print(error));

    commentStream = Amplify.DataStore.observe(Comment.classType);
    commentStream
        .listen((event) {
          _commentStreamingData.add(
            'Comment: ' +
                (event.eventType.toString() == EventType.delete.toString()
                    ? event.item.id
                    : event.item.content) +
                ', of type: ' +
                event.eventType.toString(),
          );
        })
        .onError((error) => print(error));
  }

  void listenToHub() {
    setState(() {
      hubSubscription = Amplify.Hub.listen(HubChannel.DataStore, (msg) {
        print(msg.type);
      });
      _listeningToHub = true;
    });
  }

  void stopListeningToHub() {
    hubSubscription.cancel();
    setState(() {
      _listeningToHub = false;
    });
  }

  savePost(String title, int rating, Blog associatedBlog) async {
    try {
      Post post = Post(
        title: title,
        rating: rating,
        created: TemporalDateTime.now(),
        blog: associatedBlog,
      );
      await Amplify.DataStore.save(post);
    } catch (e) {
      print(e);
    }
  }

  saveBlog(String name) async {
    try {
      Blog blog = Blog(name: name);
      await Amplify.DataStore.save(blog);
    } catch (e) {
      print(e);
    }
  }

  saveComment(String content, Post associatedPost) async {
    try {
      Comment comment = Comment(content: content, post: associatedPost);
      await Amplify.DataStore.save(comment);
    } catch (e) {
      print(e);
    }
  }

  deletePost(String id) async {
    try {
      _selectedPostForNewComment = null;
      await Amplify.DataStore.delete(
        Post(id: id, title: "", rating: 0, created: TemporalDateTime.now()),
      );
    } catch (e) {
      print(e);
    }
  }

  deleteBlog(String id) async {
    try {
      _selectedBlogForNewPost = null;
      await Amplify.DataStore.delete(Blog(id: id, name: ""));
    } catch (e) {
      print(e);
    }
  }

  deleteComment(String id) async {
    try {
      await Amplify.DataStore.delete(Comment(id: id, content: ""));
    } catch (e) {
      print(e);
    }
  }

  void updateQueriesToView(String value) {
    setState(() {
      _queriesToView = value;
    });
  }

  void updateSelectedBlogForNewPost(Blog value) {
    setState(() {
      _selectedBlogForNewPost = value;
    });
  }

  void updateSelectedPostForNewComment(Post value) {
    setState(() {
      _selectedPostForNewComment = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // actions: <Widget>[
    //               Padding(
    //                   padding: EdgeInsets.only(right: 20.0),
    //                   child: GestureDetector(
    //                     onTap: () async {
    //                       await Amplify.DataStore.clear();
    //                     },
    //                     child: Icon(
    //                       Icons.clear,
    //                       semanticLabel: "Clear",
    //                       size: 24.0,
    //                     ),
    //                   )),
    //             ],
    //           ),
    executeAfterBuild();
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(10.0)),

        // Row for saving blog
        addBlogWidget(_nameController, widget.isAmplifyConfigured, saveBlog),

        // Row for saving post
        addPostWidget(
          titleController: _titleController,
          ratingController: _ratingController,
          isAmplifyConfigured: widget.isAmplifyConfigured,
          allBlogs: _blogs,
          selectedBlog: _selectedBlogForNewPost,
          saveFn: savePost,
          updateSelectedBlogForNewPost: updateSelectedBlogForNewPost,
        ),

        // Row for saving comment
        addCommentWidget(
          _contentController,
          widget.isAmplifyConfigured,
          _selectedPostForNewComment,
          _posts,
          _selectedPostForNewComment,
          saveComment,
          updateSelectedPostForNewComment,
        ),

        Padding(padding: EdgeInsets.all(10.0)),

        // Start / Stop / Clear buttons
        displaySyncButtons(),

        // Row for query buttons
        displayQueryButtons(
          widget.isAmplifyConfigured,
          _queriesToView,
          updateQueriesToView,
        ),

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

        Text(
          _queriesToView + " Events",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 14,
          ),
        ),

        Padding(padding: EdgeInsets.all(5.0)),
        if (_queriesToView == "Post")
          getWidgetToDisplayPostEvents(
            _postScrollController,
            _postStreamingData,
            executeAfterBuild,
          )
        else if (_queriesToView == "Blog")
          getWidgetToDisplayBlogEvents(
            _blogScrollController,
            _blogStreamingData,
            executeAfterBuild,
          )
        else if (_queriesToView == "Comment")
          getWidgetToDisplayCommentEvents(
            _commentScrollController,
            _commentStreamingData,
            executeAfterBuild,
          ),
      ],
      // replace with any or all query results as needed
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
          curve: Curves.easeOut,
        );
      if (_blogScrollController.hasClients)
        _blogScrollController.animateTo(
          _blogScrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      if (_commentScrollController.hasClients)
        _commentScrollController.animateTo(
          _commentScrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
    });
  }
}
