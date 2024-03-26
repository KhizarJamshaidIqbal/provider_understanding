import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider_understanding/controller/counterprovidercontroller.dart';
import 'package:provider_understanding/controller/favoritcontroller.dart';
import 'screens/homescreen/home_screen.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await getApplicationSupportDirectory();// Initialize path_provider
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CounterProviderController(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavoritProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Provider_Deep_UnderStanding',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
