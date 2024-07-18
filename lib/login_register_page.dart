

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_firebase/auth.dart';

class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
  
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  String email = '';
  bool isLogin = true;
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  

  

  Future<void>signInWithEmailAndPassword()async{
    try {} on FirebaseAuthException{
      await Auth().signInWitchEmailandPassword(
        email: _controllerEmail.text,
        password:_controllerPassword.text,
      );
      
    }

  }
  Stream<Future<void>>createUserWithEmailAndPassword()async*{
    try {} on FirebaseAuthException{
      yield Auth().createUserWitchEmailAndPassword(
        email: _controllerEmail.text,
        password:_controllerPassword.text,
      );
      
    }
    
    
  }
  
  Widget _errorMassege(){
    return Text(_controllerEmail.text == "" ? "" : _controllerEmail.text);
  }
  
  Widget _submitButtum (){
    return ElevatedButton(
      onPressed:isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
      child: Text(isLogin ? "Login" : "Register"),
    );
    
  }

Widget _entryFieald(
      String title,
      TextEditingController controller,
    ){
      return TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: title
        ),
      );
    }

  Widget _loginOrRegisterButtom(){
    return TextButton(
      onPressed: (){
        isLogin = !isLogin;
      }, child: Text(isLogin ? "Register instead" : "Login instead "),
    );
    
  }
  
  Widget _title(){
      return const Text('Flutter Firebase Auth');
      
    }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: _title(),
        
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _entryFieald('Email', _controllerEmail),
            _entryFieald('Password', _controllerPassword),
            _errorMassege(),
            _submitButtum(),
            _loginOrRegisterButtom()

            
          ],
        ),

      ),
    );
    
  }
}