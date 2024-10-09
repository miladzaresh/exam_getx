import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:price_management/src/infrastructure/route/route_pages.dart';
import 'package:price_management/src/infrastructure/route/route_path.dart';


class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: RoutePage.pages,
        initialRoute: RoutePath.splash,
      );
}