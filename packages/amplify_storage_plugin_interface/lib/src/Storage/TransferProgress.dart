class TransferProgress {
  int currentBytes;
  int totalBytes;

  TransferProgress(this.currentBytes, this.totalBytes);

  double getFractionCompleted() {
    return currentBytes / totalBytes;
  }
}
