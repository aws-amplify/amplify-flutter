import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:flutter/material.dart';

/// To be implemented by other classes
class FlutterAppLifecycleProvider extends WidgetsBindingObserver
    implements AppLifecycleProvider {
  bool _isObserving = false;

  Function? _onBackground;
  Function? _onForeground;

  @override
  void setOnForegroundListener(Function onForeground) =>
      _onForeground = onForeground;
  @override
  void setOnBackgroundListener(Function onBackground) =>
      _onBackground = onBackground;

  @override
  void startObserving() {
    if (_isObserving) return;

    _isObserving = true;
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void stopObserving() {
    _isObserving = false;
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        _onForeground?.call();
        // startSession
        break;
      // foreground inactive due to phone call / etc.
      case AppLifecycleState.inactive:
        _onBackground?.call();
        // stopSession
        // submitEvents
        break;
      // backgrounded
      case AppLifecycleState.paused:
        _onBackground?.call();
        // stopSession
        // submitEvents
        break;
      // flutter engine running without view
      case AppLifecycleState.detached:
        break;
      default:
    }
  }
}
