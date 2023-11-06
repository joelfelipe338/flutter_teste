import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../controllers/main_controller.dart';

class CardItem extends StatefulWidget {
  final String item;
  final int index;
  const CardItem({Key? key, required this.item, required this.index}) : super(key: key);

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {

  MainController mainController = GetIt.I.get<MainController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Expanded(child: Text(widget.item,textAlign: TextAlign.center,style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
            _editButton(widget.index, widget.item),
            _deleteButton(widget.index)
          ],
        ),
      ),
    );
  }

  Widget _editButton(int index, String item){
    return InkWell(
      onTap: (){
        mainController.activeEdit(item, index);
      },
      child: const SizedBox(
          width: 50,
          height: 50,
          child: Icon(Icons.edit, color: Colors.black,size: 20,)
      ),
    );
  }

  Widget _deleteButton(int index){
    return InkWell(
      onTap: (){
        showDialog(context: context, builder: (context){
          return AlertDialog(
            content: const Text("Confirmar exclusão do item?"),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text("Não")),
              TextButton(onPressed: () {
                mainController.removeItem(index).then((value) => Navigator.pop(context));
              }, child: const Text("Sim")),
            ],
          );
        });
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle
        ),
        child: const Icon(Icons.close, color: Colors.white,size: 20,),
      ),
    );
  }

}
