import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoadingProvider extends StateNotifier<bool> {
  LoadingProvider() : super(false);

  void setLoading(bool value) {
    state = value;
  }
}
