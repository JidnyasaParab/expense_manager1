import 'package:flutter/material.dart';
import 'package:expense_manager/expense-manager.dart';

import 'alert.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final chopper = Get.put<ChopperClient>(ChopperClient(
  //   baseUrl: "https://9c19-203-194-99-147.in.ngrok.io",
  //   services: [
  //     // Create and pass an instance of the generated service to the client
  //     ExpenseService.create()
  //   ],
  //   converter: EntryConverter(),
  //   errorConverter: JsonConverter(),
  // ));
  // final item_list = Get.put<ItemList>(ItemList());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trial'),
      ),
      body: ExpenseManager(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => alertItem(context, true),
        child: Text("+"),
      ),
    );
  }
}
