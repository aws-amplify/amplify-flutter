abstract class AppLifecycleProvider {
  AppLifecycleProvider();

  void setOnForegroundListener(Function onForeground);
  void setOnBackgroundListener(Function onBackground);

  void startObserving();
  void stopObserving();
}
