import 'package:aft_common/aft_common.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:pub_semver/pub_semver.dart';

part 'group.g.dart';

abstract class Group
    with AWSSerializable
    implements Built<Group, GroupBuilder> {
  factory Group([void Function(GroupBuilder) updates]) = _$Group;

  const Group._();

  static Group fromJson(Map<String, Object?> json) {
    return _serializers.deserializeWith(serializer, json)!;
  }

  String get packageName;
  Version get latestVersion;
  VersionConstraint? get globalConstraint;
  BuiltMap<String, VersionConstraint> get dependentPackages;

  @override
  Map<String, Object?> toJson() {
    return _serializers.serializeWith(serializer, this) as Map<String, Object?>;
  }

  static Serializer<Group> get serializer => _$groupSerializer;
}

@SerializersFor([
  Group,
])
final Serializers _serializers = (_$_serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(const VersionConstraintSerializer())
      ..add(const VersionConstraintSerializer<Version>()))
    .build();
