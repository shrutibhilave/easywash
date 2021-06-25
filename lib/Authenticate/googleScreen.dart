import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign'
    '_in.dart';

import 'googlesignIN.dart';

class googleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context)=> GoogeSignInProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ElevatedButton(onPressed: (){
        final provider = Provider.of<GoogeSignInProvider>(context,listen: false);
        provider.googleLogin();
      }, child: Text('Sign in with google')),
    ),
  );



}

