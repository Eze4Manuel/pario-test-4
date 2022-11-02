
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/ui/screens/welcome/welcome.dart';
import 'app/ui/theme/app_strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(
      const MaterialApp(
          title: Strings.appName,
          debugShowCheckedModeBanner: false,
          home: Welcome()
        // home: Login()
      )));
}