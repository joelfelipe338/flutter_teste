import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../controllers/main_controller.dart';

class AddButton extends StatelessWidget {
  final FocusNode focusNode;
  final GlobalKey<FormState> formKey;
  AddButton({Key? key,required this.focusNode, required this.formKey}) : super(key: key);

  MainController mainController = GetIt.I.get<MainController>();

  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;
    return SizedBox(
        width: sizeScreen.width * .8,
        child: TextFormField(
          autofocus: true,
          focusNode: focusNode,
          style: const TextStyle(color: Colors.black),
          controller: mainController.inputController,
          keyboardType: TextInputType.emailAddress,
          textAlign: TextAlign.center,
          onChanged: mainController.onChangeInput,
          validator: (value){
            if(value != null && value.isEmpty) return "";
            return null;
          },
          onFieldSubmitted: (value){
            if(formKey.currentState!.validate()) {
              mainController.onSubmittedInput(value).then((value) => FocusScope.of(context).requestFocus(focusNode));
            }else{
              FocusScope.of(context).requestFocus(focusNode);
            }
          },
          decoration: InputDecoration(

            hintStyle:const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            hintText:"Digite seu texto",
            counterText: '',
            contentPadding: const EdgeInsets.all(0),
            errorStyle: const TextStyle(color: Colors.white),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(6)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(6)),
          ),
        )

    );
  }
}
