import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shoflex/providers/cart_provider.dart';
import 'package:shoflex/providers/order_provider.dart';
import 'package:shoflex/routes/router.dart';
import 'package:shoflex/widgets/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => OrderProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, 
      statusBarIconBrightness:
          Brightness.dark, 
      systemNavigationBarColor: Colors.white, 
      systemNavigationBarIconBrightness:
          Brightness.dark, 
    ));
    return MaterialApp(
      title: 'Shoflex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: SplashScreen(),
    );
  }
}
