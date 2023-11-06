import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController controller;
  const PasswordField({Key? key, required this.controller}) : super(key: key);

  static final validCharacters = RegExp(r'^[a-zA-Z0-9]+$');


  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;
    return SizedBox(
      width: sizeScreen.width * .8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("  Senha",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              )),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            maxLength: 20,
            style: const TextStyle(color: Colors.black),
            obscureText: true,
            controller: controller,
            validator: (value) {
              if (value != null && value.isEmpty) return "Campo não preenchido";
              if (value != null && value.length < 3) return "Minimo de 3 caracteres";
              if (value != null && !PasswordField.validCharacters.hasMatch(value)) return "Sem caracteres especiais";
              return null;
            },
            decoration: InputDecoration(
              counterText: '',
              contentPadding:const EdgeInsets.all(0),
              errorStyle:const TextStyle(color: Colors.white),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: const Icon(
                Icons.lock,
                color: Colors.black,
              ),
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(6)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(6)),
            ),
          )
        ],
      ),
    );
  }
}
