abstract class AppLifecycleProvider {
  bool _isObserving = false;

  AppLifecycleProvider();

  void setOnForegroundListener(Function onForeground);
  void setOnBackgroundListener(Function onBackground);

  void startObserving() {
    if (_isObserving) return;
    _isObserving = true;
  }

  void stopObserving() {
    _isObserving = false;
  }
}
