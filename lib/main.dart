import 'package:bus_ticket_booking_app/Pages/launcher_page.dart';
import 'package:bus_ticket_booking_app/Pages/login_page.dart';
import 'package:bus_ticket_booking_app/Provider/user_provider.dart';
import 'package:bus_ticket_booking_app/onBoarding/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool("showHome") ?? false;

  runApp(
      MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child:  MyApp(showHome:showHome)));
}

class MyApp extends StatelessWidget {
   final bool showHome;


   const
   MyApp({super.key, required this.showHome}); // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: showHome? const LoginPage(): OnBoarding() ,
      // initialRoute: OnBoarding.routeName,
      routes: {
        LoginPage.routeName:(context)=>const LoginPage(),
        LauncherPage.routeName:(context)=>const LauncherPage(),
      },
    );
  }
}


