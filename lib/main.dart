import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider_understanding/controller/counterprovidercontroller.dart';
import 'package:provider_understanding/controller/favoritcontroller.dart';
import 'package:provider_understanding/controller/theam_changer_controller.dart';
import 'screens/homescreen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getApplicationSupportDirectory(); // Initialize path_provider
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
          ),
          ChangeNotifierProvider(
            create: (_) => ThemeChanger(),
          )
        ],
        child: Builder(
          builder: (BuildContext context) {
            final themeChanger = Provider.of<ThemeChanger>(context);
            return MaterialApp(
              title: 'Provider_Deep_UnderStanding',
              themeMode: themeChanger.themeMode,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark
              ),
              home: const HomeScreen(),
            );
          },
        ));
  }
}
