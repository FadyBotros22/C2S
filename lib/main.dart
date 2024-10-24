import 'package:c2s/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'components/amplifyconfiguration.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  await _configureAmplify();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black, // Set the primary color to black
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.black), // Recommended for better color handling
      ),
      home: LoginPage(),
    ),
  );
}

Future<void> _configureAmplify() async {
  try {
    await Amplify.addPlugins([AmplifyAuthCognito(), AmplifyStorageS3()]);
    await Amplify.configure(amplifyconfig);

    safePrint('Successfully configured');
  } on Exception catch (e) {
    safePrint('Error configuring Amplify: $e');
  }
}
