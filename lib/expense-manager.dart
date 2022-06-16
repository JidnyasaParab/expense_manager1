import 'package:artemis/artemis.dart';
import 'package:flutter/material.dart';
import "dart:async";
// import 'package:chopper/chopper.dart' hide Get;
import 'package:expense_manager/widgets/ExpenseCard.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'model/item.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:expense_manager/store/item_list.dart';
import 'package:get/get.dart' hide Response;
import 'package:logger/logger.dart';
import 'package:expense_manager/graphql/graphql.dart';
// import 'package:expense_manager/graphql/queries/getExpenses.graphql';

// import 'package:expense_manager/model/ExpenseService.dart';

class ExpenseManager extends StatefulWidget {
  @override
  State<ExpenseManager> createState() => _ExpenseManagerState();
}

class _ExpenseManagerState extends State<ExpenseManager> {
  // late Future<Response<List<Item>>> data;
  late ItemList item_list;

  @override
  void initState() {
    final client = Modular.get<GraphQLClient>();
    item_list = Modular.get<ItemList>();
    final getExpense = GetItemsQuery();

    client
        .query(QueryOptions(document: GetItemsQuery().document))
        .then((value) {
      final log = Logger();
      log.d(value.data);
      final res =
          GetItems$Query.fromJson(Map<String, dynamic>.from(value.data!));
      res.items.forEach((element) {
        item_list.addItem(element!);
      });
      // log.d();
    });
    // artemis.execute(getExpense).then((value) {
    //   final log = Logger();
    //   log.d(value.data!.items);
    //   value.data!.items.forEach((element) {
    //     if (element != null) {
    //       item_list.addItem(element);
    //     }
    //   });
    // });
    // ExpenseService service = chopper.getService<ExpenseService>();

    // service.getExpenses().then((value) {
    //   final log = Logger();
    //   log.d(value.body.runtimeType);
    //   value.body!.forEach((e) {
    //     item_list.addItem(e);
    //   });
    // });

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
