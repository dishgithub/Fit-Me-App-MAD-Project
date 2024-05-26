import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fit_me/models/userModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final FirebaseAuth _auth= FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Consumer<UserModel>(
      builder: (context, userModel,child){
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${userModel.user!.email}'),
              TextButton.icon(
                onPressed: (){
                  _auth.signOut();
                  userModel.user=null;
                  Navigator.pushReplacementNamed(context, '/');
                },
                label: Text('Log-out'),
                icon: Icon(Icons.logout),
              )
            ],
          ),
        );
      }
    );
  }
}
