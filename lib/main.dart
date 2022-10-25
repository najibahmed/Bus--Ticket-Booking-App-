import 'package:bus_ticket_booking_app/Pages/launcher_page.dart';
import 'package:bus_ticket_booking_app/Pages/login_page.dart';
import 'package:bus_ticket_booking_app/Provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName:(context)=>LoginPage(),
        LauncherPage.routeName:(context)=>LauncherPage(),
      },
    );
  }
}


