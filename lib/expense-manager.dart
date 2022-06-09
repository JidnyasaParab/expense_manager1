import 'package:flutter/material.dart';
import "dart:async";
import 'package:chopper/chopper.dart' hide Get;
import 'package:expense_manager/widgets/ExpenseCard.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'model/item.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:expense_manager/store/item_list.dart';
import 'package:get/get.dart' hide Response;
import 'package:logger/logger.dart';

import 'package:expense_manager/model/ExpenseService.dart';

class ExpenseManager extends StatefulWidget {
  @override
  State<ExpenseManager> createState() => _ExpenseManagerState();
}

class _ExpenseManagerState extends State<ExpenseManager> {
  late Future<Response<List<Item>>> data;
  late ItemList item_list;

  @override
  void initState() {
    // final chopper = Get.find<ChopperClient>();
    // item_list = Get.find<ItemList>();

    final chopper = Modular.get<ChopperClient>();
    item_list = Modular.get<ItemList>();

    ExpenseService service = chopper.getService<ExpenseService>();

    service.getExpenses().then((value) {
      final log = Logger();
      log.d(value.body.runtimeType);
      value.body!.forEach((e) {
        item_list.addItem(e);
      });
    });

    super.initState();
    //item_list.record.
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Observer(
        builder: (_) {
          if (item_list.record.isEmpty) {
            return Center(child: Text("No records to show!!"));
          }
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: item_list.record
                  .map(
                    (e) => ExpenseCard(
                      // isExpense: e.isExpense,
                      // label: e.label,
                      // cost: e.cost,
                      item: e,
                    ),
                  )
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
