import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDVULsMnedcdIRp5Kc-TBi_X-48Bi17MHA",
            authDomain: "hi-gain-7jou78.firebaseapp.com",
            projectId: "hi-gain-7jou78",
            storageBucket: "hi-gain-7jou78.appspot.com",
            messagingSenderId: "798664007838",
            appId: "1:798664007838:web:03260fafdb893ff57a5b8f"));
  } else {
    await Firebase.initializeApp();
  }
}
