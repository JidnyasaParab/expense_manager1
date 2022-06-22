// import 'package:get/get.dart' hide Response;
// import '../model/Converter.dart';
import 'package:expense_manager/model/item.dart';
// import 'package:expense_manager/model/ExpenseService.dart';
import 'package:flutter/material.dart';
// import 'package:chopper/chopper.dart' hide Get;
import 'package:expense_manager/store/item_list.dart';
import 'package:expense_manager/graphql/graphql.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:logger/logger.dart';

import '../utils/logger.dart';

Future<AlertDialog?> alertItem(BuildContext context, bool is_new_item,
    {GetItems$Query$Item? item}) {
  //final item_list = Modular.get<ItemList>();

  var queryRequest = Request(
    operation: Operation(
      document: GetItemsQuery().document,
    ),
  );

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
        final client = Modular.get<GraphQLClient>();

        client
            .mutate(
          MutationOptions(
              document: CreateItemMutation(
                variables: CreateItemArguments(
                  input: ItemInput(
                    isExpense: _isExpense ?? false,
                    label: _descriptionController.text,
                    cost: int.parse(
                      _amountController.text.toString(),
                    ),
                  ),
                ),
              ).document,
              variables: {
                "input": ItemInput(
                  isExpense: _isExpense ?? false,
                  label: _descriptionController.text,
                  cost: int.parse(
                    _amountController.text.toString(),
                  ),
                ).toJson(),
              }
              // variables: {
              //   "isExpense": _isExpense ?? false,
              //   "label": _descriptionController.text,
              //   "cost": int.parse(
              //     _amountController.text.toString(),
              //   ),
              // }),
              ),
        )
            .then((value) {
          if (value.data != null) {
            final res = GetItems$Query$Item.fromJson(value.data!['createItem']);
            // final log = new Logger();

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Expense added successfully!!"),
              ),
            );

            final data = client.readQuery(queryRequest);

            // final data = client.readQuery(queryRequest);
            // final log = new Logger();
            // log.d(data);

            if (data != null && data['items'] != null) {
              data["items"].add(res.toJson());
              client.writeQuery(queryRequest, data: data);
              Navigator.of(context).pop();
              return;
            }

            client.writeQuery(queryRequest, data: {
              'items': [res.toJson()]
            });

            // client.watchQuery((WatchQueryOptions(fetchResults: true,
            // document: query.document,variables: )));
            //item_list.addItem(res);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Some problems occurred!!"),
              ),
            );
          }
          Navigator.of(context).pop();
        });

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
        // _formKey.currentState!.save();
        final client = Modular.get<GraphQLClient>();
        var id = item!.id;

        // log.d(id);

        // String a = item_list.record[index].id;
        // client.watchMutation(
        //   WatchQueryOptions(
        //     document: UpdateItemMutation(
        //             variables: UpdateItemArguments(
        //                 input: ItemInput(
        //                     isExpense: _isExpense ?? false,
        //                     label: _descriptionController.text,
        //                     cost: int.parse(
        //                       _amountController.text,
        //                     )),
        //                 id: id))
        //         .document,
        //     variables: {
        //       "input": ItemInput(
        //         isExpense: _isExpense ?? false,
        //         label: _descriptionController.text,
        //         cost: int.parse(
        //           _amountController.text,
        //         ),
        //       ),
        //       "id": id
        //     },
        //   ),
        // );

        client
            .mutate(
          MutationOptions(
              document: UpdateItemMutation(
                      variables: UpdateItemArguments(
                          input: ItemInput(
                              isExpense: _isExpense ?? false,
                              label: _descriptionController.text,
                              cost: int.parse(
                                _amountController.text,
                              )),
                          id: id))
                  .document,
              variables: {
                "input": ItemInput(
                  isExpense: _isExpense ?? false,
                  label: _descriptionController.text,
                  cost: int.parse(
                    _amountController.text,
                  ),
                ),
                "id": id
              }),
        )
            .then((value) {
          if (value.data != null) {
            final res = GetItems$Query$Item.fromJson(value.data!['updateItem']);

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Expense updated successfully!!"),
              ),
            );
            log.d(id);
            final data = client.readQuery(queryRequest)!;
            final items = data["items"] as List;
            log.d(items);
            final index =
                items.indexWhere((element) => element['id'] == res.id);

            items[index] = res.toJson();
            //
            client.writeQuery(queryRequest, data: data);
            // Navigator.of(context).pop();

            // item_list.updateLabel(res, res.label!);
            // item_list.updateCost(res, res.cost!);
            // item_list.record;
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Some problems occurred!!"),
              ),
            );
          }
          Navigator.of(context).pop();
        });
        // int index = item_list.record.indexOf(item);
        // item_list.record[index].isExpense = _isExpense!;
        // item_list.record[index].label = _descriptionController.text;
        // item_list.record[index].cost = int.parse(_amountController.text);
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
                      controller: _descriptionController,
                      onSaved: (value) {
                        // item_list.updateLabel(item, value.toString());
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Cost",
                      ),
                      controller: _amountController,
                      onSaved: (value) {
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
