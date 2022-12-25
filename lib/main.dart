import 'package:flutter/material.dart';
import 'package:noa_driver/splash/splash.dart';
import 'package:provider/provider.dart';

import 'locator/locator.dart';
import 'login-registration/login-controller.dart';
import 'order-details/order-details.dart';

void main() async{
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CustommerLoginController()),
      ],
      child: MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: "Nunito"
        ),
        home:OrderDetails(),
      ),
    );
  }
}

