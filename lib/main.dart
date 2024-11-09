import 'package:cleaningapp/config/routes/routes.dart';
import 'package:cleaningapp/config/theme/colors.dart';
import 'package:cleaningapp/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'ubuntu',
          scaffoldBackgroundColor: AppColors.white,
        ),
      ),
    );
  }
}
