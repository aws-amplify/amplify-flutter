import 'package:flutter/material.dart';

class BaseViewModel extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  void setBusy(bool busy) {
    _isBusy = busy;
    notifyListeners();
  }

  Object? _error;
  Object get error => _error!;
  void setError(Object error) {
    _error = error;
    notifyListeners();
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }

  bool get hasError => _error != null;
}
