import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core/core.dart';

mixin LifeCycleBase<T extends StateStreamableSource> {
  dispose() {
    getItVLM.unregister<T>();
  }

  disposeInstance() {
    getItVLM.unregister<T>();
  }
}

mixin LifeCycleBaseInstance<T extends StateStreamableSource> {
  disposeInstance() {
    getItVLM.unregister<T>();
  }
}
