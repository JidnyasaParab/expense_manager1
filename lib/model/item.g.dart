// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Item on _Item, Store {
  late final _$isExpenseAtom = Atom(name: '_Item.isExpense', context: context);

  @override
  bool get isExpense {
    _$isExpenseAtom.reportRead();
    return super.isExpense;
  }

  @override
  set isExpense(bool value) {
    _$isExpenseAtom.reportWrite(value, super.isExpense, () {
      super.isExpense = value;
    });
  }

  late final _$labelAtom = Atom(name: '_Item.label', context: context);

  @override
  String get label {
    _$labelAtom.reportRead();
    return super.label;
  }

  @override
  set label(String value) {
    _$labelAtom.reportWrite(value, super.label, () {
      super.label = value;
    });
  }

  late final _$costAtom = Atom(name: '_Item.cost', context: context);

  @override
  int get cost {
    _$costAtom.reportRead();
    return super.cost;
  }

  @override
  set cost(int value) {
    _$costAtom.reportWrite(value, super.cost, () {
      super.cost = value;
    });
  }

  @override
  String toString() {
    return '''
isExpense: ${isExpense},
label: ${label},
cost: ${cost}
    ''';
  }
}
