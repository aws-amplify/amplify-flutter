import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';

import 'matcher.dart';

part 'acceptor_definition.g.dart';

enum AcceptorState { success, failure, retry }

@JsonSerializable()
class AcceptorDefinition
    with AWSSerializable, AWSEquatable<AcceptorDefinition> {
  const AcceptorDefinition({
    required this.state,
    required this.matcher,
  });

  factory AcceptorDefinition.fromJson(Object? json) =>
      _$AcceptorDefinitionFromJson((json as Map).cast<String, Object?>());

  final AcceptorState state;
  final Matcher matcher;

  @override
  List<Object?> get props => [state, matcher];

  @override
  Map<String, Object?> toJson() => _$AcceptorDefinitionToJson(this);
}
