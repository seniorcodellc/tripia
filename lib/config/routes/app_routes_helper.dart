import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripia_user/core/utils/extensions.dart';

import '../../services/app.service.dart';

Future<T?> pushRoute<T>(
  String route, {
  bool isNewTask = false,
  bool isToReplace = false,
  String? exceptRoute,
  Map<String, dynamic>? arguments,
}) async {
  if (isNewTask) {
    /*(route) => route.isCurrent && route.settings.name == "newRouteName"
        ? false
        : true)*/
    return await Navigator.pushNamedAndRemoveUntil(
        // TODO: it was exceptRoute!
        AppService().getContext,
        route,
        exceptRoute!.isNotNull ? ModalRoute.withName(exceptRoute) : (route) => false,
        arguments: arguments);
  } else if (isToReplace) {
    return await Navigator.pushReplacementNamed(AppService().getContext, route, arguments: arguments);
  } else {
    return await Navigator.pushNamed(AppService().getContext, route, arguments: arguments);
  }
}

/// Dispose current screens or close current dialog
void pop([Object? object]) {
  if (Navigator.canPop(AppService().getContext)) Navigator.pop(AppService().getContext, object);
}

// popScreen(BuildContext context ,Widget route)=>Navigator.push(context, MaterialPageRoute(builder: (context)=>route,));

/// Dispose current screen or close current dialog
push({required BuildContext context, required String route, Map<String, dynamic>? argument}) =>
    Navigator.pushNamed(context, route, arguments: argument);
canPop(context) => Navigator.pop(context);
pushAndRemove({required BuildContext context, required String route}) => Navigator.pushNamedAndRemoveUntil(
      context,
      route,
      (route) => false,
    );
