// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ExpenseService.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ExpenseService extends ExpenseService {
  _$ExpenseService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ExpenseService;

  @override
  Future<Response<List<Item>>> getExpenses() {
    final $url = '/data';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<Item>, Item>($request);
  }

  @override
  Future<Response<Map<dynamic, dynamic>>> addExpense(Item body) {
    final $url = '/add';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Map<dynamic, dynamic>, Map<dynamic, dynamic>>($request);
  }
}
