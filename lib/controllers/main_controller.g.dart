// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainController on MainControllerBase, Store {
  late final _$listItensAtom =
      Atom(name: 'MainControllerBase.listItens', context: context);

  @override
  List<String> get listItens {
    _$listItensAtom.reportRead();
    return super.listItens;
  }

  @override
  set listItens(List<String> value) {
    _$listItensAtom.reportWrite(value, super.listItens, () {
      super.listItens = value;
    });
  }

  late final _$inputControllerAtom =
      Atom(name: 'MainControllerBase.inputController', context: context);

  @override
  TextEditingController get inputController {
    _$inputControllerAtom.reportRead();
    return super.inputController;
  }

  @override
  set inputController(TextEditingController value) {
    _$inputControllerAtom.reportWrite(value, super.inputController, () {
      super.inputController = value;
    });
  }

  late final _$onSubmittedInputAsyncAction =
      AsyncAction('MainControllerBase.onSubmittedInput', context: context);

  @override
  Future<void> onSubmittedInput(String value) {
    return _$onSubmittedInputAsyncAction
        .run(() => super.onSubmittedInput(value));
  }

  late final _$getListAsyncAction =
      AsyncAction('MainControllerBase.getList', context: context);

  @override
  Future<void> getList() {
    return _$getListAsyncAction.run(() => super.getList());
  }

  late final _$addItemAsyncAction =
      AsyncAction('MainControllerBase.addItem', context: context);

  @override
  Future<void> addItem(String value) {
    return _$addItemAsyncAction.run(() => super.addItem(value));
  }

  late final _$updateItemAsyncAction =
      AsyncAction('MainControllerBase.updateItem', context: context);

  @override
  Future<void> updateItem(int index, String value) {
    return _$updateItemAsyncAction.run(() => super.updateItem(index, value));
  }

  late final _$removeItemAsyncAction =
      AsyncAction('MainControllerBase.removeItem', context: context);

  @override
  Future<void> removeItem(int index) {
    return _$removeItemAsyncAction.run(() => super.removeItem(index));
  }

  late final _$MainControllerBaseActionController =
      ActionController(name: 'MainControllerBase', context: context);

  @override
  void activeEdit(String value, int index) {
    final _$actionInfo = _$MainControllerBaseActionController.startAction(
        name: 'MainControllerBase.activeEdit');
    try {
      return super.activeEdit(value, index);
    } finally {
      _$MainControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangeInput(String value) {
    final _$actionInfo = _$MainControllerBaseActionController.startAction(
        name: 'MainControllerBase.onChangeInput');
    try {
      return super.onChangeInput(value);
    } finally {
      _$MainControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listItens: ${listItens},
inputController: ${inputController}
    ''';
  }
}
