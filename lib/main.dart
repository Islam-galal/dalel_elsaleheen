import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'Pages/Homepage.dart';

void main() async{


  await Supabase.initialize(
      url: 'https://mpjdghhizcjhmhkakyyj.supabase.co',
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1wamRnaGhpemNqaG1oa2FreXlqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODg5MjE2NzYsImV4cCI6MjAwNDQ5NzY3Nn0.uWX2C68coysel8dc2LD8itlp0B8DXdG681W4ZvxRzGA',
  );

  final supabase = Supabase.instance.client;

  runApp(MaterialApp(
    home: HomePage(),
  ));
}
class Dalel_ElSalehen extends StatelessWidget {
  const Dalel_ElSalehen({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      routes: {

        HomePage().id :(context)=>HomePage(),
      },

      debugShowCheckedModeBanner: false,
      initialRoute: "homepage",
    );
  }
}
