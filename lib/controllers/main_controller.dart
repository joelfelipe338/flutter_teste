import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'main_controller.g.dart';

const LIST_NAME = "list_itens";

class MainController = MainControllerBase with _$MainController;

abstract class MainControllerBase with Store {

  int? editingIndex;

  @observable
  List<String> listItens = [];

  @observable
  TextEditingController inputController = TextEditingController();

  @action
  void activeEdit(String value,int index) {
    inputController.text = value;
    editingIndex = index;
  }

  @action
  void onChangeInput(String value) {
    if(editingIndex != null){
      listItens[editingIndex!] = value;
    }
  }

  @action
  void onSubmittedInput(String value) {
    if(editingIndex != null){
      editingIndex = null;
      inputController.clear();
    }else{
      addItem(value);
      inputController.clear();
    }
  }

  @action
  Future<void> getList() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> list =  prefs.getStringList(LIST_NAME) ?? [];
    if(editingIndex != null) editingIndex = null;
    listItens = list;
  }

  @action
  Future<void> addItem(String value) async{
    listItens.add(value);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList(LIST_NAME, listItens);
  }

  @action
  Future<void> updateItem(int index, String value) async{
    listItens[index] = value;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList(LIST_NAME, listItens);
  }

  @action
  Future<void> removeItem(int index) async {
    listItens.removeAt(index);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList(LIST_NAME, listItens);
  }
}
