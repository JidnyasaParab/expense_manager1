// import 'package:mobx/';
import 'package:mobx/mobx.dart';
// import 'package:mobx_codegen/mobx_codegen.dart';
import 'package:expense_manager/graphql/graphql.dart';
import '../model/item.dart';

part 'item_list.g.dart';

class ItemList = _ItemList with _$ItemList;

abstract class _ItemList with Store {
  @observable
  ObservableList<GetItems$Query$Item> record =
      ObservableList<GetItems$Query$Item>();

  // @computed
  // int get latest_id => record.length + 1;

  @action
  void addItem(GetItems$Query$Item obj) {
    this.record.add(obj);
  }

  @action
  void updateIsExpense(GetItems$Query$Item obj, bool is_expense) {
    int index = this.record.indexOf(obj);
    this.record[index].isExpense = is_expense;
  }

  @action
  void updateLabel(GetItems$Query$Item obj, String label) {
    int index = this.record.indexOf(obj);
    GetItems$Query$Item cur = this.record[index];
    // this.record[index] = Item(isExpense: cur.isExpense, label: label, cost: cur.cost );
    this.record[index].label = label;
  }

  @action
  void updateCost(GetItems$Query$Item obj, int cost) {
    int index = this.record.indexOf(obj);
    this.record[index].cost = cost;
  }
}
