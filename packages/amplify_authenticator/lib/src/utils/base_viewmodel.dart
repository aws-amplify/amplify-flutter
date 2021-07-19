import 'package:flutter/material.dart';

///Base View Model
class BaseViewModel extends ChangeNotifier {
  bool _isBusy = false;

  /// isBusy getter
  bool get isBusy => _isBusy;

  /// isBusy setter
  void setBusy(bool busy) {
    _isBusy = busy;
    notifyListeners();
  }

  Object? _error;

  ///error getter
  Object get error => _error!;

  ///error setter
  void setError(Object error) {
    _error = error;
    notifyListeners();
  }

  /// error clearer
  void clearError() {
    _error = null;
    notifyListeners();
  }

  /// hasError getter
  bool get hasError => _error != null;
}
