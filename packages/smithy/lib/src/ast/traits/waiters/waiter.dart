import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'waiter.g.dart';

@JsonSerializable()
class Waiter with AWSSerializable, AWSEquatable<Waiter> {
  const Waiter({
    this.documentation,
    required this.acceptors,
    this.minDelay = Waiter.defaultMinDelay,
    this.maxDelay = Waiter.defaultMaxDelay,
    this.tags = const [],
  });

  factory Waiter.fromJson(Object? json) =>
      _$WaiterFromJson((json as Map).cast<String, Object?>());

  static const defaultMinDelay = 2;
  static const defaultMaxDelay = 120;

  final String? documentation;
  final List<AcceptorDefinition> acceptors;
  final int minDelay;
  final int maxDelay;
  final List<String> tags;

  @override
  List<Object?> get props => [
        documentation,
        acceptors,
        minDelay,
        maxDelay,
        tags,
      ];

  @override
  Map<String, Object?> toJson() => _$WaiterToJson(this);
}
