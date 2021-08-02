import 'package:flutter/widgets.dart';

abstract class AuthStringType {
  late BuildContext _context;
  void set context(BuildContext context) {
    _context = context;
  }

  BuildContext get context {
    return this._context;
  }
}
