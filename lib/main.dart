import 'package:authentication/application/auth/auth_check/auth_check_bloc.dart';
import 'package:authentication/injection.dart';
import 'package:authentication/presentation/auth/sign_in_page.dart';
import 'package:authentication/presentation/home/home_page.dart';
import 'package:authentication/presentation/intro/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        create: (context) =>
            getIt<AuthCheckBloc>()..add(const AuthCheckEvent.started()),
        child: AuthWidget(),
      ),
    );
  }
}

class AuthWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCheckBloc, AuthCheckState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          unAuthenticated: (_) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => SignInPage(),
              ),
            );
          },
        );
      },
      child: SplashPage(),
    );
  }
}
