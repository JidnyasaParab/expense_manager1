import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:graphql/client.dart';
import '../model/item.dart';
import '../store/item_list.dart';
import 'package:expense_manager/graphql/graphql.dart';
import 'alert.dart';

class ExpenseCard extends StatefulWidget {
  // final bool isExpense;
  // final String label;
  // final int cost;
  final GetItems$Query$Item item;

  const ExpenseCard({Key? key, required this.item}) : super(key: key);
  // const ExpenseCard(
  //     {Key? key,
  //       required this.isExpense,
  //       required this.label,
  //       required this.cost})
  //     : super(key: key);

  @override
  State<ExpenseCard> createState() => _ExpenseCardState();
}

class _ExpenseCardState extends State<ExpenseCard> {
  late String type;
  late Color typeColor;
  bool isVisible = false;
  ItemList item_list = Modular.get<ItemList>();

  @override
  Widget build(BuildContext context) {
    if (widget.item.isExpense!) {
      type = "Expense";
      typeColor = Colors.red;
    } else {
      type = "Income";
      typeColor = Colors.green;
    }
    return Observer(builder: (_) {
      return Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() => isVisible = !isVisible);
            },
            child: Container(
              // height: 70,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        type,
                        style: TextStyle(
                            color: typeColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        widget.item.label.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                      Spacer(),
                      Text(
                        widget.item.cost.toString(),
                        style: TextStyle(color: typeColor, fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Visibility(
            visible: isVisible,
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: () => alertItem(context, false, item: widget.item),
                  icon: Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () {
                    final client = Modular.get<GraphQLClient>();
                    client
                        .mutate(
                      MutationOptions(
                        document: DeleteItemMutation(
                          variables: DeleteItemArguments(
                            input: widget.item.id.toString(),
                          ),
                        ).document,
                        variables: {
                          "input": widget.item.id,
                        },
                      ),
                    )
                        .then((value) {
                      if (DeleteItem$Mutation.fromJson(value.data!)
                          .deleteItem!) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Expense deleted successfully!!"),
                          ),
                        );
                        item_list.record.remove(widget.item);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Expense could not be deleted!!"),
                          ),
                        );
                      }
                    }).onError((error, stackTrace) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(error.toString()),
                      ));
                    });
                  },
                  icon: Icon(Icons.delete),
                ),
              ],
            ),
          )
        ],
      );
    });
  }
}
