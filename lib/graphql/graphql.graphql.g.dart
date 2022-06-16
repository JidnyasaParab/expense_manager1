// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateItem$Mutation$Item _$CreateItem$Mutation$ItemFromJson(
        Map<String, dynamic> json) =>
    CreateItem$Mutation$Item()
      ..id = json['id'] as String
      ..isExpense = json['isExpense'] as bool?
      ..label = json['label'] as String?
      ..cost = json['cost'] as int?;

Map<String, dynamic> _$CreateItem$Mutation$ItemToJson(
        CreateItem$Mutation$Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isExpense': instance.isExpense,
      'label': instance.label,
      'cost': instance.cost,
    };

CreateItem$Mutation _$CreateItem$MutationFromJson(Map<String, dynamic> json) =>
    CreateItem$Mutation()
      ..createItem = json['createItem'] == null
          ? null
          : CreateItem$Mutation$Item.fromJson(
              json['createItem'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateItem$MutationToJson(
        CreateItem$Mutation instance) =>
    <String, dynamic>{
      'createItem': instance.createItem?.toJson(),
    };

ItemInput _$ItemInputFromJson(Map<String, dynamic> json) => ItemInput(
      isExpense: json['isExpense'] as bool?,
      label: json['label'] as String?,
      cost: json['cost'] as int?,
    );

Map<String, dynamic> _$ItemInputToJson(ItemInput instance) => <String, dynamic>{
      'isExpense': instance.isExpense,
      'label': instance.label,
      'cost': instance.cost,
    };

DeleteItem$Mutation _$DeleteItem$MutationFromJson(Map<String, dynamic> json) =>
    DeleteItem$Mutation()..deleteItem = json['deleteItem'] as bool?;

Map<String, dynamic> _$DeleteItem$MutationToJson(
        DeleteItem$Mutation instance) =>
    <String, dynamic>{
      'deleteItem': instance.deleteItem,
    };

GetItems$Query$Item _$GetItems$Query$ItemFromJson(Map<String, dynamic> json) =>
    GetItems$Query$Item()
      ..id = json['id'] as String
      ..isExpense = json['isExpense'] as bool?
      ..label = json['label'] as String?
      ..cost = json['cost'] as int?;

Map<String, dynamic> _$GetItems$Query$ItemToJson(
        GetItems$Query$Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isExpense': instance.isExpense,
      'label': instance.label,
      'cost': instance.cost,
    };

GetItems$Query _$GetItems$QueryFromJson(Map<String, dynamic> json) =>
    GetItems$Query()
      ..items = (json['items'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : GetItems$Query$Item.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetItems$QueryToJson(GetItems$Query instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e?.toJson()).toList(),
    };

UpdateItem$Mutation$Item _$UpdateItem$Mutation$ItemFromJson(
        Map<String, dynamic> json) =>
    UpdateItem$Mutation$Item()
      ..id = json['id'] as String
      ..isExpense = json['isExpense'] as bool?
      ..label = json['label'] as String?
      ..cost = json['cost'] as int?;

Map<String, dynamic> _$UpdateItem$Mutation$ItemToJson(
        UpdateItem$Mutation$Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isExpense': instance.isExpense,
      'label': instance.label,
      'cost': instance.cost,
    };

UpdateItem$Mutation _$UpdateItem$MutationFromJson(Map<String, dynamic> json) =>
    UpdateItem$Mutation()
      ..updateItem = json['updateItem'] == null
          ? null
          : UpdateItem$Mutation$Item.fromJson(
              json['updateItem'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdateItem$MutationToJson(
        UpdateItem$Mutation instance) =>
    <String, dynamic>{
      'updateItem': instance.updateItem?.toJson(),
    };

CreateItemArguments _$CreateItemArgumentsFromJson(Map<String, dynamic> json) =>
    CreateItemArguments(
      input: ItemInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateItemArgumentsToJson(
        CreateItemArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

DeleteItemArguments _$DeleteItemArgumentsFromJson(Map<String, dynamic> json) =>
    DeleteItemArguments(
      input: json['input'] as String,
    );

Map<String, dynamic> _$DeleteItemArgumentsToJson(
        DeleteItemArguments instance) =>
    <String, dynamic>{
      'input': instance.input,
    };

UpdateItemArguments _$UpdateItemArgumentsFromJson(Map<String, dynamic> json) =>
    UpdateItemArguments(
      input: ItemInput.fromJson(json['input'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$UpdateItemArgumentsToJson(
        UpdateItemArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
      'id': instance.id,
    };
