import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_firebase/Widget_tree.dart';






Future<void>main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyBaoJw6DSScGsWQ00Y4vuQbrIW791w10Dk',
     appId: '1:518633508934:web:51ff52736d3b139bbe7a47',
      messagingSenderId: '518633508934',
       projectId: 'flutterapplication-5980d')
  );


runApp(const MaterialApp(home:  WidgetTree(),));


}

