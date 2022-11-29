import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class IndexController extends ChangeNotifier {
  static const int nextValue = 1;
  static const int previousValue = -1;
  static const int moveValue = 0;

  late Completer _completer;

  int? index;
  bool? animation;
  int? event;

  Future move(int index, {bool animation = true}) {
    this.animation = animation;
    this.index = index;
    event = moveValue;
    _completer = Completer();
    notifyListeners();
    return _completer.future;
  }

  Future next({bool animation = true}) {
    event = nextValue;
    this.animation = animation;
    _completer = Completer();
    notifyListeners();
    return _completer.future;
  }

  Future previous({bool animation = true}) {
    event = previousValue;
    this.animation = animation;
    _completer = Completer();
    notifyListeners();
    return _completer.future;
  }

  void complete() {
    if (!_completer.isCompleted) {
      _completer.complete();
    }
  }
}
