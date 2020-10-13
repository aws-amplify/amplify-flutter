import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:meta/meta.dart';

class Post extends Model {
  static final QueryField ID = new QueryField("id");
  static final QueryField TITLE = new QueryField("title");
  static final QueryField RATING = new QueryField("rating");
  static final QueryField CREATED = new QueryField("created");

  @override
  @ModelField(targetType: 'ID', isRequired: true)
  final String id;

  @ModelField(targetType: 'String', isRequired: true)
  final String title;

  @ModelField(targetType: 'Integer', isRequired: false)
  final int rating;

  @ModelField(targetType: 'Date', isRequired: false)
  final DateTime created;

  @override
  String getId() {
    return id;
  }

  // Constructors
  const Post._internal(
      {@required this.id, @required this.title, this.rating, this.created});

  factory Post(
      {String id, @required String title, int rating, DateTime created}) {
    return Post._internal(
        id: id, title: title, rating: rating, created: created);
  }

  // Utility methods for immutability
  Post copyWith({@required String id, @required String title}) {
    return Post(
        id: id ?? this.id,
        title: title ?? this.title,
        rating: rating ?? this.rating,
        created: created ?? this.created);
  }

  // De/serialization methods
  Post.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        rating = json['rating'],
        created =
            json['created'] != null ? DateTime.parse(json['created']) : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'rating': rating,
        'created': formatDateToISO8601(created),
      };

  // Equals and toString() and hash()
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
        id == other.id &&
        title == other.title &&
        rating == other.rating &&
        created == other.created;
  }

  @override
  int get hashCode => super.hashCode;

  bool equals(Object other) {
    return this == other;
  }

  // Type metadata
  static const classType = PostType();
  @override
  final ModelType instanceType = const PostType();
}

class PostType extends ModelType<Post> {
  const PostType();

  @override
  Post fromJson(Map<String, dynamic> jsonData) {
    return Post.fromJson(jsonData);
  }
}
