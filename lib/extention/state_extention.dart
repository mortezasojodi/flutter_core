import 'package:core/abstraction/state.dart';

extension Extension2 on StateStatus {
  bool isLoading() {
    return this == StateStatus.Loading;
  }

  bool isInitial() {
    return this == StateStatus.Initial;
  }

  bool isSuccess() {
    return this == StateStatus.Success;
  }

  bool isRetry() {
    return this == StateStatus.Retry;
  }
}
