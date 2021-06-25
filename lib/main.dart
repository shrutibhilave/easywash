import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_easy_washapp/Authenticate/Authenticate.dart';
import 'package:provider/provider.dart';
import 'package:my_easy_washapp/Authenticate/googlesignIN.dart';
import 'package:google_sign_in/google_sign'
    '_in.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context)=> GoogeSignInProvider(),
  child: MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Authenticate(),

  ),
  );



  }
