// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateItem$Mutation$Item extends JsonSerializable with EquatableMixin {
  CreateItem$Mutation$Item();

  factory CreateItem$Mutation$Item.fromJson(Map<String, dynamic> json) =>
      _$CreateItem$Mutation$ItemFromJson(json);

  late String id;

  bool? isExpense;

  String? label;

  int? cost;

  @override
  List<Object?> get props => [id, isExpense, label, cost];
  @override
  Map<String, dynamic> toJson() => _$CreateItem$Mutation$ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateItem$Mutation extends JsonSerializable with EquatableMixin {
  CreateItem$Mutation();

  factory CreateItem$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateItem$MutationFromJson(json);

  CreateItem$Mutation$Item? createItem;

  @override
  List<Object?> get props => [createItem];
  @override
  Map<String, dynamic> toJson() => _$CreateItem$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ItemInput extends JsonSerializable with EquatableMixin {
  ItemInput({this.isExpense, this.label, this.cost});

  factory ItemInput.fromJson(Map<String, dynamic> json) =>
      _$ItemInputFromJson(json);

  bool? isExpense;

  String? label;

  int? cost;

  @override
  List<Object?> get props => [isExpense, label, cost];
  @override
  Map<String, dynamic> toJson() => _$ItemInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteItem$Mutation extends JsonSerializable with EquatableMixin {
  DeleteItem$Mutation();

  factory DeleteItem$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeleteItem$MutationFromJson(json);

  bool? deleteItem;

  @override
  List<Object?> get props => [deleteItem];
  @override
  Map<String, dynamic> toJson() => _$DeleteItem$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetItems$Query$Item extends JsonSerializable with EquatableMixin {
  GetItems$Query$Item();

  factory GetItems$Query$Item.fromJson(Map<String, dynamic> json) =>
      _$GetItems$Query$ItemFromJson(json);

  late String id;

  bool? isExpense;

  String? label;

  int? cost;

  @override
  List<Object?> get props => [id, isExpense, label, cost];
  @override
  Map<String, dynamic> toJson() => _$GetItems$Query$ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetItems$Query extends JsonSerializable with EquatableMixin {
  GetItems$Query();

  factory GetItems$Query.fromJson(Map<String, dynamic> json) =>
      _$GetItems$QueryFromJson(json);

  late List<GetItems$Query$Item?> items;

  @override
  List<Object?> get props => [items];
  @override
  Map<String, dynamic> toJson() => _$GetItems$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateItem$Mutation$Item extends JsonSerializable with EquatableMixin {
  UpdateItem$Mutation$Item();

  factory UpdateItem$Mutation$Item.fromJson(Map<String, dynamic> json) =>
      _$UpdateItem$Mutation$ItemFromJson(json);

  late String id;

  bool? isExpense;

  String? label;

  int? cost;

  @override
  List<Object?> get props => [id, isExpense, label, cost];
  @override
  Map<String, dynamic> toJson() => _$UpdateItem$Mutation$ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateItem$Mutation extends JsonSerializable with EquatableMixin {
  UpdateItem$Mutation();

  factory UpdateItem$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateItem$MutationFromJson(json);

  UpdateItem$Mutation$Item? updateItem;

  @override
  List<Object?> get props => [updateItem];
  @override
  Map<String, dynamic> toJson() => _$UpdateItem$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateItemArguments extends JsonSerializable with EquatableMixin {
  CreateItemArguments({required this.input});

  @override
  factory CreateItemArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateItemArgumentsFromJson(json);

  late ItemInput input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$CreateItemArgumentsToJson(this);
}

final CREATE_ITEM_MUTATION_DOCUMENT_OPERATION_NAME = 'createItem';
final CREATE_ITEM_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createItem'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'ItemInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createItem'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'initData'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'isExpense'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'label'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'cost'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class CreateItemMutation
    extends GraphQLQuery<CreateItem$Mutation, CreateItemArguments> {
  CreateItemMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_ITEM_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_ITEM_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateItemArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateItem$Mutation parse(Map<String, dynamic> json) =>
      CreateItem$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeleteItemArguments extends JsonSerializable with EquatableMixin {
  DeleteItemArguments({required this.input});

  @override
  factory DeleteItemArguments.fromJson(Map<String, dynamic> json) =>
      _$DeleteItemArgumentsFromJson(json);

  late String input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$DeleteItemArgumentsToJson(this);
}

final DELETE_ITEM_MUTATION_DOCUMENT_OPERATION_NAME = 'deleteItem';
final DELETE_ITEM_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteItem'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'deleteItem'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: null)
      ]))
]);

class DeleteItemMutation
    extends GraphQLQuery<DeleteItem$Mutation, DeleteItemArguments> {
  DeleteItemMutation({required this.variables});

  @override
  final DocumentNode document = DELETE_ITEM_MUTATION_DOCUMENT;

  @override
  final String operationName = DELETE_ITEM_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final DeleteItemArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeleteItem$Mutation parse(Map<String, dynamic> json) =>
      DeleteItem$Mutation.fromJson(json);
}

final GET_ITEMS_QUERY_DOCUMENT_OPERATION_NAME = 'getItems';
final GET_ITEMS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getItems'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'items'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'isExpense'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'label'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'cost'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetItemsQuery extends GraphQLQuery<GetItems$Query, JsonSerializable> {
  GetItemsQuery();

  @override
  final DocumentNode document = GET_ITEMS_QUERY_DOCUMENT;

  @override
  final String operationName = GET_ITEMS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  GetItems$Query parse(Map<String, dynamic> json) =>
      GetItems$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateItemArguments extends JsonSerializable with EquatableMixin {
  UpdateItemArguments({required this.input, required this.id});

  @override
  factory UpdateItemArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateItemArgumentsFromJson(json);

  late ItemInput input;

  late String id;

  @override
  List<Object?> get props => [input, id];
  @override
  Map<String, dynamic> toJson() => _$UpdateItemArgumentsToJson(this);
}

final UPDATE_ITEM_MUTATION_DOCUMENT_OPERATION_NAME = 'updateItem';
final UPDATE_ITEM_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateItem'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'ItemInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateItem'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'newData'),
                  value: VariableNode(name: NameNode(value: 'input'))),
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'isExpense'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'label'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'cost'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class UpdateItemMutation
    extends GraphQLQuery<UpdateItem$Mutation, UpdateItemArguments> {
  UpdateItemMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_ITEM_MUTATION_DOCUMENT;

  @override
  final String operationName = UPDATE_ITEM_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpdateItemArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateItem$Mutation parse(Map<String, dynamic> json) =>
      UpdateItem$Mutation.fromJson(json);
}
