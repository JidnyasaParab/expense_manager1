// import 'package:get/get.dart' hide Response;
// import '../model/Converter.dart';
import 'package:expense_manager/model/item.dart';
// import 'package:expense_manager/model/ExpenseService.dart';
import 'package:flutter/material.dart';
// import 'package:chopper/chopper.dart' hide Get;
import 'package:expense_manager/store/item_list.dart';
import 'package:expense_manager/graphql/graphql.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';

Future<AlertDialog?> alertItem(BuildContext context, bool is_new_item,
    {GetItems$Query$Item? item}) {
  final item_list = Modular.get<ItemList>();

  return showDialog<AlertDialog>(
    context: context,
    builder: (BuildContext context) {
      bool? _isExpense = item?.isExpense ?? true;

      TextEditingController _descriptionController =
          TextEditingController(text: item?.label ?? "");

      TextEditingController _amountController =
          TextEditingController(text: item?.cost.toString() ?? "");
      final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

      void _sendData() {
        Navigator.of(context).pop();
        // final chopper = Modular.get<ChopperClient>();
        // ExpenseService service = chopper.getService<ExpenseService>();
        // Item data = Item(
        //     isExpense: _isExpense ?? false,
        //     label: _descriptionController.text,
        //     cost: int.parse(_amountController.text));
        // // Item data = Item()
        // Future<Response<Map>> res = service.addExpense(data);

        // _addTodoItem(_textFieldController.text);
        // res.then((value) {
        //   item_list.addItem(data);
        //   // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.toString())));
        //   print(value.toString());
        // }).onError((error, stackTrace) {
        //   // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.toString())));
        //   print(stackTrace);
        // });
      }

      void _editData() {
        _formKey.currentState!.save();
        // int index = item_list.record.indexOf(item);
        // item_list.record[index].isExpense = _isExpense!;
        // item_list.record[index].label = _descriptionController.text;
        // item_list.record[index].cost = int.parse(_amountController.text);

        Navigator.pop(context);
      }

      return AlertDialog(
        content: StatefulBuilder(
          builder: (BuildContext context, StateSetter setExpense) {
            void setType(bool? value) {
              setExpense(() {
                _isExpense = value;
              });
              // type = value;
            }

            if (!is_new_item) {
              return Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Description",
                      ),
                      initialValue: item!.label,
                      onSaved: (value) {
                        final log = Logger();
                        log.d(value);
                        // item_list.updateLabel(item, value.toString());
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Cost",
                      ),
                      initialValue: item.cost.toString(),
                      onSaved: (value) {
                        final log = Logger();
                        log.d(value);
                        // item_list.updateCost(item, int.parse(value.toString()));
                      },
                    )
                  ],
                ),
              );
            }
            return Container(
              // width: 250,
              height: 200,
              child: Column(
                children: [
                  Row(
                    children: [Text('Type:')],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: false,
                          groupValue: _isExpense,
                          onChanged: setType),
                      // Radio(value: true, groupValue: type, onChanged: setType),
                      Text("Income"),
                      Radio(
                          value: true,
                          groupValue: _isExpense,
                          onChanged: setType),
                      // Radio(value: true, groupValue: type, onChanged: setType),
                      Text("Expense"),
                    ],
                  ),
                  // Text("Description:"),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Description",
                          ),
                          controller: _descriptionController,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(hintText: "Amount"),
                          controller: _amountController,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
        actions: [
          TextButton(
            child: Text(is_new_item ? 'ADD' : "SAVE"),
            onPressed: () {
              if (is_new_item) {
                return _sendData();
              }
              return _editData();
            },
          ),
          TextButton(
            child: const Text('CANCEL'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      );
    },
  );
}
