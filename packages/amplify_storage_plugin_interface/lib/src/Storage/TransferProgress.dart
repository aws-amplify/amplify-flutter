class TransferProgress {
  int currentProgress;
  int totalProgress;

  TransferProgress(this.currentProgress, this.totalProgress);

  double getFractionCompleted() {
    return currentProgress / totalProgress;
  }
}
