
import 'package:abaricom_mongodb_trial_1/common/widgets/bottom_bar.dart';
import 'package:abaricom_mongodb_trial_1/constants/global_variables.dart';
import 'package:abaricom_mongodb_trial_1/features/auth/auth_screen.dart';
import 'package:abaricom_mongodb_trial_1/features/auth/services/auth_service.dart';
import 'package:abaricom_mongodb_trial_1/providers/user_provider.dart';
import 'package:abaricom_mongodb_trial_1/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abaricom Application',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty? const BottomBar(): const AuthScreen(),
    );
  }
}
