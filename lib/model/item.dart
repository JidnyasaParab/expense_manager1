import 'package:dart_json_mapper/dart_json_mapper.dart';

import 'package:mobx/mobx.dart';

part 'item.g.dart';

@JsonSerializable()
class Item extends _Item with _$Item {
  Item({required isExpense, required cost, required label})
      : super(isExpense: isExpense, label: label, cost: cost);
}

abstract class _Item with Store {
  @observable
  late bool isExpense;

  @observable
  late String label;

  @observable
  late int cost;

  _Item({required this.isExpense, required this.cost, required this.label});
}
