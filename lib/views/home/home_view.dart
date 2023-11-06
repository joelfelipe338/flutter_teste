import 'package:flutter/material.dart';
import 'package:teste_flutter/views/capture_screen/widgets/politicas_e_privacidade.dart';
import 'package:teste_flutter/views/home/widgets/login_button.dart';
import 'package:teste_flutter/views/home/widgets/password_field.dart';
import 'package:teste_flutter/views/home/widgets/user_field.dart';

import '../capture_screen/capture_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);


  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.teal.shade900,
                Colors.teal,
              ],
            ),
          ),
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  UserField(controller: _userController,),
                  const SizedBox(
                    height: 20,
                  ),
                  PasswordField(controller: _passwordController),
                  const SizedBox(
                    height: 40,
                  ),
                  LoginButton(
                    isLoading: _isLoading,
                      onPressed: (){
                    if (_formKey.currentState!.validate()) {
                      _userController.text = _userController.text.trim();
                      _passwordController.text = _passwordController.text.trim();
                      setState(() => _isLoading = true);
                      Future.delayed(Duration(seconds: 2)).then((value){
                        setState(() => _isLoading = false);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CaptureScreen()));
                      });
                    }
                  }),
                  const Spacer(),
                  const Politics()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
