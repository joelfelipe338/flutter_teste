import 'package:flutter/material.dart';

class UserField extends StatelessWidget {
  final TextEditingController controller;
  const UserField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;
    return SizedBox(
      width: sizeScreen.width * .8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("  Usúario",
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
            controller: controller,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value != null && value.isEmpty) return "Campo não preenchido";
              return null;
            },
            decoration: InputDecoration(
              counterText: '',
              contentPadding:const  EdgeInsets.all(0),
              errorStyle: const TextStyle(color: Colors.white),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: const Icon(
                Icons.person,
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
