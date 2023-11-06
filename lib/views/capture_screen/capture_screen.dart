import 'package:flutter/material.dart';
import 'package:teste_flutter/views/capture_screen/widgets/add_button.dart';
import 'package:teste_flutter/views/capture_screen/widgets/card_list.dart';
import 'package:teste_flutter/views/capture_screen/widgets/politicas_e_privacidade.dart';

import '../../controllers/main_controller.dart';

class CaptureScreen extends StatefulWidget {
  CaptureScreen({Key? key}) : super(key: key);

  @override
  State<CaptureScreen> createState() => _CaptureScreenState();
}

class _CaptureScreenState extends State<CaptureScreen> {

  final _formKey = GlobalKey<FormState>();
  final _newItemFieldFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(

        body: Stack(
            children: [
              Container(
                width: double.infinity,
                height: sizeScreen.height,
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
                child:
                SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        CardList(),
                        const SizedBox(height: 40,),
                        AddButton(focusNode: _newItemFieldFocus, formKey: _formKey),
                        const SizedBox(height: 40,),

                      ],
                    ),
                  ),
                ),
              ),),
              const Politics(withPositioned: true,)
            ],
          )

        ),
    );
  }

}
