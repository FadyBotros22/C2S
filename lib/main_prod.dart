import 'package:c2s/presentation/screens/home_page.dart';
import 'package:c2s/presentation/screens/login_page.dart';
import 'package:c2s/statics/preferences.dart';
import 'package:flutter/material.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'data/local/amplify.dart';
import 'presentation/widgets//amplifyconfiguration.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:firebase_core/firebase_core.dart';
import 'data/local/injection_container.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  await configureAmplify();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light));
  FlavorConfig(
      name: "prod",
      color: Colors.red,
      location: BannerLocation.bottomStart,
      variables: {
        "title": 'Production',
        "baseUrl": "https://www.example.com",
      });
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black, // Set the primary color to black
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.black), // Recommended for better color handling
      ),
      home: getIt<Preferences>().getData('token') == null ||
              getIt<Preferences>().getData('token') == ''
          ? LoginPage()
          : HomePage(),
    ),
  );
}
