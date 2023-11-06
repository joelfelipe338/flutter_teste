import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function() onPressed;
  final bool isLoading;
  const LoginButton({Key? key,required this.onPressed, this.isLoading = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          primary: Colors.green, shape: const StadiumBorder(), elevation: 5),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 40.0),
        child: isLoading ? const SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(color: Colors.white,)) : const Text(
          "Entrar",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
