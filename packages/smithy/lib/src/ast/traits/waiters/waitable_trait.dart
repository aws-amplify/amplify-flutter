import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'waitable_trait.g.dart';

@JsonSerializable()
class WaitableTrait with AWSSerializable implements Trait<WaitableTrait> {
  const WaitableTrait(this.waiters);

  factory WaitableTrait.fromJson(Object? json) =>
      _$WaitableTraitFromJson(<String, Object?>{'waiters': json});

  static const id = ShapeId(namespace: 'smithy.waiters', shape: 'waitable');

  final Map<String, Waiter> waiters;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [waiters];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$WaitableTraitToJson(this);

  @override
  WaitableTrait get value => this;
}
