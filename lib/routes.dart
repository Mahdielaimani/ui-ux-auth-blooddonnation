import 'package:blooddonation/core/constant/routes.dart';
import 'package:blooddonation/view/screen/auth/loginpage.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> routes = {
  RoutesName.login: (context) => LoginPage()
};
