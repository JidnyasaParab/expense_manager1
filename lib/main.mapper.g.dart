// This file has been generated by the dart_json_mapper v2.2.3
// https://github.com/k-paxian/dart-json-mapper
// @dart = 2.12
import 'graphql/graphql.graphql.dart' as x1 show CreateItem$Mutation$Item, CreateItem$Mutation, ItemInput, DeleteItem$Mutation, GetItems$Query$Item, GetItems$Query, UpdateItem$Mutation$Item, UpdateItem$Mutation, CreateItemArguments, DeleteItemArguments, UpdateItemArguments;
import 'model/item.dart' as x0 show Item;
import 'package:dart_json_mapper/dart_json_mapper.dart' show JsonMapper, JsonMapperAdapter, typeOf;
// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.


import 'dart:core';
import 'package:dart_json_mapper/src/model/annotations.dart' as prefix0;
import 'package:expense_manager/model/item.dart' as prefix1;
import 'package:mobx/src/api/annotations.dart' as prefix2;
import 'package:mobx/src/core.dart' as prefix3;

// ignore_for_file: camel_case_types
// ignore_for_file: implementation_imports
// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{const prefix0.JsonSerializable(): r.ReflectorData(<m.TypeMirror>[r.NonGenericClassMirrorImpl(r'Item', r'.Item', 7, 0, const prefix0.JsonSerializable(), const <int>[3], const <int>[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], const <int>[], -1, {}, {}, {r'': (bool b) => ({isExpense, cost, label}) => b ? prefix1.Item(cost: cost, isExpense: isExpense, label: label) : null}, -1, 0, const <int>[], const [const prefix0.JsonSerializable()], null)], <m.DeclarationMirror>[r.VariableMirrorImpl(r'isExpense', 32773, -1, const prefix0.JsonSerializable(), -1, 1, 1, const <int>[], const [prefix2.observable]), r.VariableMirrorImpl(r'label', 32773, -1, const prefix0.JsonSerializable(), -1, 2, 2, const <int>[], const [prefix2.observable]), r.VariableMirrorImpl(r'cost', 32773, -1, const prefix0.JsonSerializable(), -1, 3, 3, const <int>[], const [prefix2.observable]), r.MethodMirrorImpl(r'', 0, 0, -1, 0, 0, const <int>[], const <int>[0, 1, 2], const prefix0.JsonSerializable(), const []), r.MethodMirrorImpl(r'==', 131074, -1, -1, 1, 1, const <int>[], const <int>[3], const prefix0.JsonSerializable(), const []), r.MethodMirrorImpl(r'toString', 131074, -1, -1, 2, 2, const <int>[], const <int>[], const prefix0.JsonSerializable(), const []), r.MethodMirrorImpl(r'noSuchMethod', 65538, -1, -1, -1, -1, const <int>[], const <int>[4], const prefix0.JsonSerializable(), const []), r.MethodMirrorImpl(r'hashCode', 131075, -1, -1, 3, 3, const <int>[], const <int>[], const prefix0.JsonSerializable(), const []), r.MethodMirrorImpl(r'runtimeType', 131075, -1, -1, 4, 4, const <int>[], const <int>[], const prefix0.JsonSerializable(), const []), r.MethodMirrorImpl(r'context', 131075, -1, -1, 5, 5, const <int>[], const <int>[], const prefix0.JsonSerializable(), const []), r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 0, 10), r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 0, 11), r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 1, 12), r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 1, 13), r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 2, 14), r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 2, 15)], <m.ParameterMirror>[r.ParameterMirrorImpl(r'isExpense', 24582, 3, const prefix0.JsonSerializable(), -1, -1, -1, const <int>[], const [], null, #isExpense), r.ParameterMirrorImpl(r'cost', 24582, 3, const prefix0.JsonSerializable(), -1, -1, -1, const <int>[], const [], null, #cost), r.ParameterMirrorImpl(r'label', 24582, 3, const prefix0.JsonSerializable(), -1, -1, -1, const <int>[], const [], null, #label), r.ParameterMirrorImpl(r'other', 32774, 4, const prefix0.JsonSerializable(), -1, 6, 6, const <int>[], const [], null, null), r.ParameterMirrorImpl(r'invocation', 32774, 6, const prefix0.JsonSerializable(), -1, 7, 7, const <int>[], const [], null, null), r.ParameterMirrorImpl(r'_isExpense', 32870, 11, const prefix0.JsonSerializable(), -1, 1, 1, const <int>[], const [], null, null), r.ParameterMirrorImpl(r'_label', 32870, 13, const prefix0.JsonSerializable(), -1, 2, 2, const <int>[], const [], null, null), r.ParameterMirrorImpl(r'_cost', 32870, 15, const prefix0.JsonSerializable(), -1, 3, 3, const <int>[], const [], null, null)], <Type>[prefix1.Item, bool, String, int, Type, prefix3.ReactiveContext, Object, Invocation], 1, {r'==': (dynamic instance) => (x) => instance == x, r'toString': (dynamic instance) => instance.toString, r'noSuchMethod': (dynamic instance) => instance.noSuchMethod, r'hashCode': (dynamic instance) => instance.hashCode, r'runtimeType': (dynamic instance) => instance.runtimeType, r'context': (dynamic instance) => instance.context, r'isExpense': (dynamic instance) => instance.isExpense, r'label': (dynamic instance) => instance.label, r'cost': (dynamic instance) => instance.cost}, {r'isExpense=': (dynamic instance, value) => instance.isExpense = value, r'label=': (dynamic instance, value) => instance.label = value, r'cost=': (dynamic instance, value) => instance.cost = value}, null, [])};


final _memberSymbolMap = null;

void _initializeReflectable(JsonMapperAdapter adapter) {
  if (!adapter.isGenerated) {
    return;
  }
  r.data = adapter.reflectableData!;
  r.memberSymbolMap = adapter.memberSymbolMap;
}

final mainGeneratedAdapter = JsonMapperAdapter(
  title: 'expense_manager',
  url: 'package:expense_manager/main.dart',
  reflectableData: _data,
  memberSymbolMap: _memberSymbolMap,
  valueDecorators: {
    typeOf<List<x0.Item>>(): (value) => value.cast<x0.Item>(),
    typeOf<Set<x0.Item>>(): (value) => value.cast<x0.Item>(),
    typeOf<List<x1.CreateItem$Mutation$Item>>(): (value) => value.cast<x1.CreateItem$Mutation$Item>(),
    typeOf<Set<x1.CreateItem$Mutation$Item>>(): (value) => value.cast<x1.CreateItem$Mutation$Item>(),
    typeOf<List<x1.CreateItem$Mutation>>(): (value) => value.cast<x1.CreateItem$Mutation>(),
    typeOf<Set<x1.CreateItem$Mutation>>(): (value) => value.cast<x1.CreateItem$Mutation>(),
    typeOf<List<x1.ItemInput>>(): (value) => value.cast<x1.ItemInput>(),
    typeOf<Set<x1.ItemInput>>(): (value) => value.cast<x1.ItemInput>(),
    typeOf<List<x1.DeleteItem$Mutation>>(): (value) => value.cast<x1.DeleteItem$Mutation>(),
    typeOf<Set<x1.DeleteItem$Mutation>>(): (value) => value.cast<x1.DeleteItem$Mutation>(),
    typeOf<List<x1.GetItems$Query$Item>>(): (value) => value.cast<x1.GetItems$Query$Item>(),
    typeOf<Set<x1.GetItems$Query$Item>>(): (value) => value.cast<x1.GetItems$Query$Item>(),
    typeOf<List<x1.GetItems$Query>>(): (value) => value.cast<x1.GetItems$Query>(),
    typeOf<Set<x1.GetItems$Query>>(): (value) => value.cast<x1.GetItems$Query>(),
    typeOf<List<x1.UpdateItem$Mutation$Item>>(): (value) => value.cast<x1.UpdateItem$Mutation$Item>(),
    typeOf<Set<x1.UpdateItem$Mutation$Item>>(): (value) => value.cast<x1.UpdateItem$Mutation$Item>(),
    typeOf<List<x1.UpdateItem$Mutation>>(): (value) => value.cast<x1.UpdateItem$Mutation>(),
    typeOf<Set<x1.UpdateItem$Mutation>>(): (value) => value.cast<x1.UpdateItem$Mutation>(),
    typeOf<List<x1.CreateItemArguments>>(): (value) => value.cast<x1.CreateItemArguments>(),
    typeOf<Set<x1.CreateItemArguments>>(): (value) => value.cast<x1.CreateItemArguments>(),
    typeOf<List<x1.DeleteItemArguments>>(): (value) => value.cast<x1.DeleteItemArguments>(),
    typeOf<Set<x1.DeleteItemArguments>>(): (value) => value.cast<x1.DeleteItemArguments>(),
    typeOf<List<x1.UpdateItemArguments>>(): (value) => value.cast<x1.UpdateItemArguments>(),
    typeOf<Set<x1.UpdateItemArguments>>(): (value) => value.cast<x1.UpdateItemArguments>()
},
  enumValues: {

});

Future<JsonMapper> initializeJsonMapperAsync({Iterable<JsonMapperAdapter> adapters = const []}) => Future(() => initializeJsonMapper(adapters: adapters));

JsonMapper initializeJsonMapper({Iterable<JsonMapperAdapter> adapters = const []}) {
  JsonMapper.enumerateAdapters([...adapters, mainGeneratedAdapter], (JsonMapperAdapter adapter) {
    _initializeReflectable(adapter);
    JsonMapper().useAdapter(adapter);
  });
  return JsonMapper();
}