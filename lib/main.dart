import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:expense_manager/graphql/graphql.dart';
import 'package:flutter/material.dart';
import 'package:expense_manager/widgets/home.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobx/mobx.dart';
import 'main.mapper.g.dart' show initializeJsonMapper;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:expense_manager/store/item_list.dart';
import 'package:dart_json_mapper_mobx/dart_json_mapper_mobx.dart'
    show mobXAdapter;
// import 'package:artemis/artemis.dart';
import 'package:graphql/client.dart';
// part 'main.mapper.g.dart';

void main() {
  initializeJsonMapper(adapters: [
    mobXAdapter,
    JsonMapperAdapter(
      valueDecorators: {
        typeOf<ObservableList<GetItems$Query$Item>>(): (value) =>
            value.cast<GetItems$Query$Item>()
      },
    )
  ]);
  // return runApp( MyApp());
  final client = GraphQLClient(
    link: HttpLink("http://192.168.0.114:3000/graphql"),
    cache: GraphQLCache(),
  );
  return runApp(
    ModularApp(
      module: AppModule(client),
      child: MyApp(client: client),
    ),
  );
}

// Future<Client> initClient() async {
//   final link = HttpLink("http://192.168.0.114:3000/graphql");

//   final client = Client(
//     link: link,
//   );

//   return client;
// }

class AppModule extends Module {
  final GraphQLClient client;

  AppModule(this.client);

  @override
  List<Bind> get binds => [
        // Bind.singleton((i) => ChopperClient(
        //       baseUrl: "https://081f-203-194-100-218.in.ngrok.io",
        //       services: [
        //         // Create and pass an instance of the generated service to the client
        //         ExpenseService.create()
        //       ],
        //       converter: EntryConverter(),
        //       errorConverter: JsonConverter(),
        //     )),
        // Bind.singleton((i) => ArtemisClient("http://192.168.0.114:3000/graphql"))
        Bind.singleton((i) => ItemList()),

        Bind.singleton(
          (i) => client,
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => Home()),
      ];
}

class MyApp extends StatelessWidget {
  final GraphQLClient client;

  late ValueNotifier<GraphQLClient> value;

  MyApp({Key? key, required this.client})
      : value = ValueNotifier(client),
        super(key: key);
  // Entry obj= Entry.fromJson({"isExpense":true,"label":"Movie", "cost":900});

  // @override
  // Widget build(BuildContext context) {
  //   return const GetMaterialApp(
  //     title: 'Trial',
  //     home: Home(),
  //   );
  // }

  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: value,
      child: MaterialApp.router(
        title: 'ExpenseManager',
        theme: ThemeData(primarySwatch: Colors.blue),
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
        debugShowCheckedModeBanner: false,
      ),
    ); //added by extension
  }
}
