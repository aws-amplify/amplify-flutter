/// {@template amplify_storage_s3.transfer_progress}
/// The progress of a storage transfer operation.
/// {@endtemplate}
class TransferProgress {
  /// The current progress, in bytes, for the storage transfer operation.
  final int currentProgress;
  
  /// The total number of bytes for the storage transfer operation.
  final int totalProgress;

  /// {@macro amplify_storage_s3.transfer_progress}
  const TransferProgress(this.currentProgress, this.totalProgress);

  /// The fractional progress of the storage transfer operation.
  /// 
  /// 0 <= `fractionCompleted` <= 1
  double get fractionCompleted => currentProgress / totalProgress;
}
