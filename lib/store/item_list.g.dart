// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ItemList on _ItemList, Store {
  late final _$recordAtom = Atom(name: '_ItemList.record', context: context);

  @override
  ObservableList<GetItems$Query$Item> get record {
    _$recordAtom.reportRead();
    return super.record;
  }

  @override
  set record(ObservableList<GetItems$Query$Item> value) {
    _$recordAtom.reportWrite(value, super.record, () {
      super.record = value;
    });
  }

  late final _$_ItemListActionController =
      ActionController(name: '_ItemList', context: context);

  @override
  void addItem(GetItems$Query$Item obj) {
    final _$actionInfo =
        _$_ItemListActionController.startAction(name: '_ItemList.addItem');
    try {
      return super.addItem(obj);
    } finally {
      _$_ItemListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateIsExpense(GetItems$Query$Item obj, bool is_expense) {
    final _$actionInfo = _$_ItemListActionController.startAction(
        name: '_ItemList.updateIsExpense');
    try {
      return super.updateIsExpense(obj, is_expense);
    } finally {
      _$_ItemListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateLabel(GetItems$Query$Item obj, String label) {
    final _$actionInfo =
        _$_ItemListActionController.startAction(name: '_ItemList.updateLabel');
    try {
      return super.updateLabel(obj, label);
    } finally {
      _$_ItemListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateCost(GetItems$Query$Item obj, int cost) {
    final _$actionInfo =
        _$_ItemListActionController.startAction(name: '_ItemList.updateCost');
    try {
      return super.updateCost(obj, cost);
    } finally {
      _$_ItemListActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
record: ${record}
    ''';
  }
}
