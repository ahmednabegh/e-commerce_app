import 'package:e_commerce_app/%20%20styles/app_themes.dart';
import 'package:e_commerce_app/ui/login/login_screen.dart';
import 'package:e_commerce_app/ui/register/register_screen.dart';
import 'package:e_commerce_app/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
      SplashScreen.routeName:(context)=>SplashScreen(),
      RegisterScreen.routeName:(context)=>RegisterScreen(),
      LoginScreen.routeName:(context)=> LoginScreen(),
      },
      theme: MyTheme.lightTheme,
    );
     }
}