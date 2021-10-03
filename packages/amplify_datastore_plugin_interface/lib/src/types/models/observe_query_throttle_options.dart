/// {@template observe_query_throttle_options}
/// Options for throttling events emitted from ObserveQuery during
/// the sync process
/// {@endtemplate}
class ObserveQueryThrottleOptions {
  /// During the initial sync, a [QuerySnapshot] wil be
  /// generated every [maxCount] records
  ///
  /// If [maxDuration] is non-null, a [QuerySnapshot] may
  /// be generated more freqnently than every [maxCount]
  final int? maxCount;

  /// During the initial sync, a [QuerySnapshot] wil be
  /// generated every [maxDuration]
  ///
  /// If [maxCount] is non-null, a [QuerySnapshot] may
  /// generated more freqnently than every [maxDuration]
  final Duration? maxDuration;

  /// {@macro observe_query_throttle_options}
  const ObserveQueryThrottleOptions({
    this.maxCount = 1000,
    this.maxDuration = const Duration(seconds: 2),
  });
}
