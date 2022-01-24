import 'package:smithy/smithy.dart';

/// An operation which belongs to a service.
///
/// See:
/// - [HttpOperation]
abstract class Operation<Input, Output> {
  const Operation();

  /// The protocols used by this operation for all serialization/deserialization
  /// of wire formats.
  Iterable<Protocol> get protocols;

  /// Runs the operation for [input].
  ///
  /// Specifying [client] or [useProtocol] overrides the default for the
  /// operation.
  Future<Output> run(
    Input input, {
    covariant Client? client,
    ShapeId? useProtocol,
  });

  /// The error types of the operation.
  List<SmithyError> get errorTypes;
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
