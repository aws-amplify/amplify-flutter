import 'package:smithy/smithy.dart';

/// An operation which belongs to a service.
///
/// See:
/// - [HttpOperation]
abstract class Operation<Input, Output> {
  const Operation();

  /// The protocol used by this operation for all serialization/deserialization
  /// of wire formats.
  Protocol get protocol;

  /// Runs the operation.
  ///
  /// The protocol used will be selected at runtime from [protocols] based on
  /// the client passed in, i.e. using [Client.protocol].
  Future<Output> run(Input input, [covariant Client? client]);
}

/// A constructor of [Output] from [T].
///
/// See:
/// - [StreamingResponseContructor]
/// - [RawResponseConstructor]
/// - [JsonConstructor]
typedef Constructor<T extends Object?, Output> = Output Function(T);

/// A constructor of [Output] from a stream of [T] events.
typedef StreamingResponseContructor<T extends Object?, Output> = Output
    Function(Stream<T>);

/// A constructor of [Output] from [T].
typedef RawResponseConstructor<T extends Object?, Output> = Output Function(T);

/// A constructor of [Output] a JSON map, typically [Output.fromJson].
typedef JsonConstructor<Output> = Output Function(Map<String, Object?>);

/// Applies pagination to an operation.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/behavior-traits.html#paginated-trait
mixin PaginatedOperation<Input, Output> on Operation<Input, Output> {
  String? inputToken(Input input);
  String? outputToken(Output output);
  Object /* List|Map */ items(Output output);
  int? pageSize(Input input);
}
