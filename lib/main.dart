import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:flutter/material.dart';
import 'package:expense_manager/widgets/home.dart';
import 'package:mobx/mobx.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'main.mapper.g.dart' show initializeJsonMapper;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:expense_manager/store/item_list.dart';
import 'package:expense_manager/model/ExpenseService.dart';
import 'package:chopper/chopper.dart';
import 'package:expense_manager/model/Converter.dart';
import 'package:dart_json_mapper_mobx/dart_json_mapper_mobx.dart'
    show mobXAdapter;

import 'model/item.dart';

void main() {
  initializeJsonMapper(adapters: [
    mobXAdapter,
    JsonMapperAdapter(
      valueDecorators: {
        typeOf<ObservableList<Item>>(): (value) => value.cast<Item>()
      },
    )
  ]);
  // return runApp( MyApp());
  return runApp(ModularApp(module: AppModule(), child: MyApp()));
}

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => ChopperClient(
              baseUrl: "https://081f-203-194-100-218.in.ngrok.io",
              services: [
                // Create and pass an instance of the generated service to the client
                ExpenseService.create()
              ],
              converter: EntryConverter(),
              errorConverter: JsonConverter(),
            )),
        Bind.singleton((i) => ItemList()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => Home()),
      ];
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // Entry obj= Entry.fromJson({"isExpense":true,"label":"Movie", "cost":900});

  // @override
  // Widget build(BuildContext context) {
  //   return const GetMaterialApp(
  //     title: 'Trial',
  //     home: Home(),
  //   );
  // }

  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ExpenseManager',
      theme: ThemeData(primarySwatch: Colors.blue),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    ); //added by extension
  }
}
