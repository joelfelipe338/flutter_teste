import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:teste_flutter/controllers/main_controller.dart';
import 'package:teste_flutter/views/home/home_view.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<MainController>(MainController());
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomeView(),
    );
  }
}
