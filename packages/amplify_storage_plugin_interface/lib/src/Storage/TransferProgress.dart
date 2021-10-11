/// {@template amplify_storage_s3.transfer_progress}
/// The progress of a storage transfer operation.
/// {@endtemplate}
class TransferProgress {
  /// The current progress, in bytes, for the storage transfer operation.
  final int currentBytes;

  /// The total number of bytes for the storage transfer operation.
  final int totalBytes;

  /// {@macro amplify_storage_s3.transfer_progress}
  const TransferProgress(this.currentBytes, this.totalBytes);

  /// The fractional progress of the storage transfer operation.
  ///
  /// 0 <= `fractionCompleted` <= 1
  double getFractionCompleted() {
    return currentBytes / totalBytes;
  }
}
