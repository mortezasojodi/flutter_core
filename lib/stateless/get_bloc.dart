import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core/core.dart';

abstract class GetBloc<T extends StateStreamableSource>
    extends StatelessWidget {
  const GetBloc({super.key});

  final String? tag = null;

  T get init {
    return getItVLM<T>();
  }

  T _initP({
    String? instanceName,
    dynamic param1,
    dynamic param2,
    Type? type,
  }) {
    return getItVLM<T>(
        instanceName: instanceName, param1: param1, param2: param2, type: type);
  }

  T _initNoP({
    String? instanceName,
    Type? type,
  }) {
    return getItVLM<T>(instanceName: instanceName, type: type);
  }

  // initContext(BuildContext context) {
  //   return getItVLM<T>();
  // }

  T controller(BuildContext context) {
    return context.read<T>();
  }

  Widget build(BuildContext context);

  // Widget buildBloc({required Widget child, required BuildContext context}) {
  //   var model = GetArgument.arguments(context, "model");
  //   return BlocProvider(
  //       create: (context) => _initP(param1: model), child: child);
  // }

  Widget builderBloc(
      {required WidgetBuilder builder,
      required BuildContext context,
      bool autoRemove = true,
      BaseEvent? event,
      bool sendData = false}) {
    // var model = GetArgument.arguments(context, "model");
    if (autoRemove) {
      return BlocProvider(create: (context) {
        T instance;

        instance = _initNoP();
        if (instance is Bloc && event != null) {
          instance..add(event);
        }
        return instance;
      }, child: Builder(builder: (c) {
        return builder(c);
      }));
    } else {
      T instance;

      instance = _initNoP();
      if (instance is Bloc && event != null) {
        instance..add(event);
      }
      return BlocProvider.value(
          value: instance,
          child: Builder(builder: (c) {
            return builder(c);
          }));
    }
  }

  Widget builderBlocWithData(
      {required WidgetBuilder builder,
      required BuildContext context,
      dynamic param1,
      dynamic param2,
      bool sendData = false}) {
    return BlocProvider(
        create: (context) =>
            !sendData ? _initNoP() : _initP(param1: param1, param2: param2),
        child: Builder(builder: (c) {
          return builder(c);
        }));
  }
}

abstract class IGetBloc<S extends Object, T extends StateStreamableSource>
    extends StatelessWidget {
  const IGetBloc({super.key});

  final String? tag = null;

  T get init {
    return getItVLM<S>() as T;
  }

  T _initP({
    String? instanceName,
    dynamic param1,
    dynamic param2,
    Type? type,
  }) {
    return getItVLM<S>(
        instanceName: instanceName,
        param1: param1,
        param2: param2,
        type: type) as T;
  }

  T _initNoP({
    String? instanceName,
    Type? type,
  }) {
    return getItVLM<S>(instanceName: instanceName, type: type) as T;
  }

  // initContext(BuildContext context) {
  //   return getItVLM<T>();
  // }

  T controller(BuildContext context) {
    return context.read<T>();
  }

  Widget build(BuildContext context);

  // Widget buildBloc({required Widget child, required BuildContext context}) {
  //   var model = GetArgument.arguments(context, "model");
  //   return BlocProvider(
  //       create: (context) => _initP(param1: model), child: child);
  // }

  Widget builderBloc(
      {required WidgetBuilder builder,
      required BuildContext context,
      bool autoRemove = true,
      BaseEvent? event,
      bool sendData = false}) {
    // var model = GetArgument.arguments(context, "model");
    if (autoRemove) {
      return BlocProvider(create: (context) {
        T instance;

        instance = _initNoP();
        if (instance is Bloc && event != null) {
          instance..add(event);
        }
        return instance;
      }, child: Builder(builder: (c) {
        return builder(c);
      }));
    } else {
      T instance;

      instance = _initNoP();
      if (instance is Bloc && event != null) {
        instance..add(event);
      }
      return BlocProvider.value(
          value: instance,
          child: Builder(builder: (c) {
            return builder(c);
          }));
    }
  }

  Widget builderBlocWithData(
      {required WidgetBuilder builder,
      required BuildContext context,
      dynamic param1,
      dynamic param2,
      bool sendData = false}) {
    return BlocProvider(
        create: (context) =>
            !sendData ? _initNoP() : _initP(param1: param1, param2: param2),
        child: Builder(builder: (c) {
          return builder(c);
        }));
  }
}
