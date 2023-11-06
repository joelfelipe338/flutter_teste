import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../controllers/main_controller.dart';
import 'card_item.dart';

class CardList extends StatefulWidget {
  CardList({Key? key}) : super(key: key);

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  MainController mainController = GetIt.I.get<MainController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mainController.getList();
  }

  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;
    return Container(
        width: sizeScreen.width * .8,
        height: sizeScreen.height * .4 ,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Observer(
          builder: (_){
            return mainController.listItens.isNotEmpty ? ListView.builder(
                itemCount: mainController.listItens.length,
                itemBuilder: (context, index){
                  return CardItem(item: mainController.listItens[index], index: index,);
                }) : const Center(child: Text("Adicione algum item", style: TextStyle(color: Colors.black),));
          },
        )
    );
  }
}
