import "dart:async";
import 'package:chopper/chopper.dart';

import 'item.dart';

// This is necessary for the generator to work.
part "ExpenseService.chopper.dart";

@ChopperApi(baseUrl: "/")
abstract class ExpenseService extends ChopperService {

  @Get(path:"data")
  Future<Response<List<Item>>> getExpenses();

  @Post(path:"add")
  Future<Response<Map>> addExpense(@Body() Item body);

  // A helper method that helps instantiating the service. You can omit this method and use the generated class directly instead.
  static ExpenseService create([ChopperClient? client]) =>
      _$ExpenseService(client);
}