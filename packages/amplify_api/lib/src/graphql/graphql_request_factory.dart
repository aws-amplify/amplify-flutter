/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

import 'utils.dart';

/// `"id"`, the name of the id field in every compatible model/schema.
/// Eventually needs to be dynamic to accommodate custom primary keys.
const idFieldName = 'id';

class DocumentInputs {
  // Upper document input: ($id: ID!)
  final String upper;
  // Lower document input: (id: $id)
  final String lower;
  const DocumentInputs(this.upper, this.lower);
}

class GraphQLRequestFactory {
  GraphQLRequestFactory._();

  static final GraphQLRequestFactory _instance = GraphQLRequestFactory._();

  static GraphQLRequestFactory get instance => _instance;

  String _getName(ModelSchema schema, GraphQLRequestOperation operation) {
    // schema has been validated & schema.pluralName is non-nullable
    return operation == GraphQLRequestOperation.list
        ? schema.pluralName!
        : schema.name;
  }

  String _getModelType(ModelFieldTypeEnum val) {
    switch (val) {
      case ModelFieldTypeEnum.string:
        return "String";
      case ModelFieldTypeEnum.model:
        return "ID";
      case ModelFieldTypeEnum.int:
        return "Int";
      case ModelFieldTypeEnum.double:
        return "Float";
      case ModelFieldTypeEnum.dateTime:
        return "AWSDateTime";
      case ModelFieldTypeEnum.time:
        return "AWSTime";
      case ModelFieldTypeEnum.timestamp:
        return "AWSTimestamp";
      // TODO: Expand type support: enumeration, collection
      default:
        return "Error: unsupported type!";
    }
  }

  String _getSelectionSetFromModelSchema(
      ModelSchema schema, GraphQLRequestOperation operation,
      {bool ignoreParents = false}) {
    // Schema has been validated & schema.fields is non-nullable.
    // Get a list of field names to include in the request body.
    List<String> _fields = schema.fields!.entries
        .where((entry) =>
            entry.value.association == null) // ignore related model fields
        .map((entry) {
      if (entry.value.type.fieldType == ModelFieldTypeEnum.embedded ||
          entry.value.type.fieldType == ModelFieldTypeEnum.embeddedCollection) {
        final embeddedSchema =
            getModelSchemaByModelName(entry.value.type.ofCustomTypeName!, null);
        final embeddedSelectionSet = _getSelectionSetFromModelSchema(
            embeddedSchema, GraphQLRequestOperation.get);
        return '${entry.key} { $embeddedSelectionSet }';
      }
      return entry.key;
    }).toList(); // e.g. ["id", "name", "createdAt"]

    // If belongsTo, also add selection set of parent.
    final belongsToAssociation = getBelongsToFieldFromModelSchema(schema);
    String? belongsToModelName = belongsToAssociation?.type.ofModelName;
    if (belongsToModelName != null && !ignoreParents) {
      final parentSchema = getModelSchemaByModelName(belongsToModelName, null);
      String parentSelectionSet = _getSelectionSetFromModelSchema(
          parentSchema, GraphQLRequestOperation.get,
          ignoreParents:
              true); // always format like a get, stop traversing parents
      _fields.add('${belongsToAssociation!.name} { $parentSelectionSet }');
    }

    String fields = _fields.join(' '); // e.g. "id name createdAt"

    if (operation == GraphQLRequestOperation.list) {
      return '$items { $fields } nextToken';
    }

    return fields;
  }

  String _capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  DocumentInputs _buildDocumentInputs(
      ModelSchema schema, GraphQLRequestOperation operation) {
    String upperOutput = '';
    String lowerOutput = '';
    List<String> upperList = [];
    List<String> lowerList = [];

    String modelName = schema.name;

    // build inputs based on request operation
    switch (operation) {
      case GraphQLRequestOperation.get:
        upperOutput = r"($id: ID!)";
        lowerOutput = r"(id: $id)";
        break;
      case GraphQLRequestOperation.list:
        upperOutput =
            "(\$filter: Model${modelName}FilterInput, \$limit: Int, \$nextToken: String)";
        lowerOutput =
            r"(filter: $filter, limit: $limit, nextToken: $nextToken)";
        break;
      case GraphQLRequestOperation.create:
      case GraphQLRequestOperation.update:
      case GraphQLRequestOperation.delete:
        String operationValue = _capitalize(describeEnum(operation));

        upperOutput =
            "(\$input: ${operationValue}${modelName}Input!, \$condition:  Model${modelName}ConditionInput)";
        lowerOutput = r"(input: $input, condition: $condition)";
        break;
      case GraphQLRequestOperation.onCreate:
      case GraphQLRequestOperation.onUpdate:
      case GraphQLRequestOperation.onDelete:
        // upperOutput and lowerOutput already '', done
        break;
      default:
        throw ApiException('GraphQL Request Operation is currently unsupported',
            recoverySuggestion: 'please use a supported GraphQL operation');
    }

    return DocumentInputs(upperOutput, lowerOutput);
  }

/**
   *  Example: 
   *    query getBlog($id: ID!, $content: String) { getBlog(id: $id, content: $content) { id name createdAt } }
  */
  GraphQLRequest<T> buildRequest<T extends Model>(
      {required ModelType modelType,
      Model? model,
      required GraphQLRequestType requestType,
      required GraphQLRequestOperation requestOperation,
      required Map<String, dynamic> variables,
      int depth = 0}) {
    // retrieve schema from ModelType and validate required properties
    ModelSchema schema =
        getModelSchemaByModelName(modelType.modelName(), requestOperation);

    // e.g. "Blog" or "Blogs"
    String name = _getName(schema, requestOperation);
    // e.g. "query" or "mutation"
    String requestTypeVal = describeEnum(requestType);
    // e.g. "get" or "list"
    String requestOperationVal = describeEnum(requestOperation);
    // e.g. "{upper: "($id: ID!)", lower: "(id: $id)"}"
    DocumentInputs documentInputs =
        _buildDocumentInputs(schema, requestOperation);
    // e.g. "id name createdAt" - fields to retrieve
    String fields = _getSelectionSetFromModelSchema(schema, requestOperation);
    // e.g. "getBlog"
    String requestName = "$requestOperationVal$name";
    // e.g. query getBlog($id: ID!, $content: String) { getBlog(id: $id, content: $content) { id name createdAt } }
    String document =
        '''$requestTypeVal $requestName${documentInputs.upper} { $requestName${documentInputs.lower} { $fields } }''';
    // e.g "listBlogs"
    String decodePath = requestName;

    return GraphQLRequest<T>(
        document: document,
        variables: variables,
        modelType: modelType,
        decodePath: decodePath);
  }

  Map<String, dynamic> buildVariablesForListRequest(
      {int? limit, String? nextToken, Map<String, dynamic>? filter}) {
    return <String, dynamic>{
      'filter': filter,
      'limit': limit,
      'nextToken': nextToken
    };
  }

  Map<String, dynamic> buildVariablesForMutationRequest(
      {required Map<String, dynamic> input, Map<String, dynamic>? condition}) {
    return <String, dynamic>{
      'input': input,
      'condition': condition,
    };
  }

  /// Translates a `QueryPredicate` to a map representing a GraphQL filter
  /// which AppSync will accept. Example:
  /// `queryPredicateToGraphQLFilter(Blog.NAME.eq('foo'));` // =>
  /// `{'name': {'eq': 'foo'}}`. In the case of a mutation, it will apply to
  /// the "condition" field rather than "filter."
  Map<String, dynamic>? queryPredicateToGraphQLFilter(
      QueryPredicate? queryPredicate, ModelType modelType) {
    if (queryPredicate == null) {
      return null;
    }
    ModelSchema schema = getModelSchemaByModelName(modelType.modelName(), null);

    // e.g. { 'name': { 'eq': 'foo }}
    if (queryPredicate is QueryPredicateOperation) {
      // check for the IDs where fieldName set to e.g. "blog.id" and convert to "id"
      final isId = queryPredicate.field == '${schema.name.toLowerCase()}.id';
      final fieldName = isId ? idFieldName : queryPredicate.field;

      return <String, dynamic>{
        fieldName: _queryFieldOperatorToPartialGraphQLFilter(
            queryPredicate.queryFieldOperator)
      };
    }

    // and, or, not
    if (queryPredicate is QueryPredicateGroup) {
      // .toShortString() is the same as expected graphql filter strings for all these,
      // so no translation helper required.
      final typeExpression = describeEnum(queryPredicate.type);

      // not
      if (queryPredicate.type == QueryPredicateGroupType.not) {
        if (queryPredicate.predicates.length == 1) {
          return <String, dynamic>{
            typeExpression: queryPredicateToGraphQLFilter(
                queryPredicate.predicates[0], modelType)
          };
        }
        // Public not() API only allows 1 condition but QueryPredicateGroup
        // technically allows multiple conditions so explictly disallow multiple.
        throw ApiException(
            'Unable to translate not() with multiple conditions.');
      }

      // and, or
      return <String, List<Map<String, dynamic>>>{
        typeExpression: queryPredicate.predicates
            .map((predicate) =>
                queryPredicateToGraphQLFilter(predicate, modelType)!)
            .toList()
      };
    }

    throw ApiException(
        'Unable to translate the QueryPredicate $queryPredicate to a GraphQL filter.');
  }

  /// Calls `toJson` on the model and removes key/value pairs that refer to
  /// children when that field is null. The structure of provisioned AppSync `input` type,
  /// such as `CreateBlogInput` does not include nested types, so they will get
  /// an error from AppSync if they are included in mutations.
  ///
  /// When the model has a parent via a belongsTo, the id from the parent is added
  /// as a field similar to "blogID" where the value is `post.blog.id`.
  Map<String, dynamic> buildInputVariableForMutations(Model model) {
    ModelSchema schema =
        getModelSchemaByModelName(model.getInstanceType().modelName(), null);
    final modelJson = model.toJson();

    // If the model has a parent in the schema, get the ID of parent and field name.
    String? belongsToModelName; // e.g. "blog"
    String? belongsToKey; // e.g. "blogID"
    String? belongsToValue; // the ID value to use from `post.blog.id`
    final belongsToAssociation = getBelongsToFieldFromModelSchema(schema);
    if (belongsToAssociation != null) {
      belongsToModelName = belongsToAssociation.name;
      belongsToKey = belongsToAssociation.association?.targetName;
      belongsToValue = modelJson[belongsToModelName]?[idFieldName];
    }

    // Remove any relational fields or readonly.
    Set<String> fieldsToRemove = schema.fields!.entries
        .where((entry) =>
            entry.value.association != null || entry.value.isReadOnly)
        .map((entry) => entry.key)
        .toSet();
    modelJson.removeWhere((key, dynamic value) => fieldsToRemove.contains(key));
    // Assign the parent ID if the model has a parent.
    if (belongsToKey != null && belongsToModelName != null) {
      modelJson.remove(belongsToModelName);
      if (belongsToValue != null) {
        modelJson[belongsToKey] = belongsToValue;
      }
    }

    return modelJson;
  }
}

/// e.g. `.eq('foo')` => `{ 'eq': 'foo' }`
Map<String, dynamic> _queryFieldOperatorToPartialGraphQLFilter(
    QueryFieldOperator queryFieldOperator) {
  final filterExpression = _getGraphQLFilterExpression(queryFieldOperator.type);
  if (queryFieldOperator is QueryFieldOperatorSingleValue) {
    return <String, dynamic>{
      filterExpression: _getSerializedValue(queryFieldOperator.value)
    };
  }
  if (queryFieldOperator is BetweenQueryOperator) {
    return <String, dynamic>{
      filterExpression: <dynamic>[
        _getSerializedValue(queryFieldOperator.start),
        _getSerializedValue(queryFieldOperator.end)
      ]
    };
  }

  throw ApiException(
      'Unable to translate the QueryFieldOperator ${queryFieldOperator.type} to a GraphQL filter.');
}

String _getGraphQLFilterExpression(QueryFieldOperatorType operatorType) {
  final dictionary = {
    QueryFieldOperatorType.equal: 'eq',
    QueryFieldOperatorType.not_equal: 'ne',
    QueryFieldOperatorType.less_or_equal: 'le',
    QueryFieldOperatorType.less_than: 'lt',
    QueryFieldOperatorType.greater_than: 'gt',
    QueryFieldOperatorType.greater_or_equal: 'ge',
    QueryFieldOperatorType.between: 'between',
    QueryFieldOperatorType.contains: 'contains',
    QueryFieldOperatorType.begins_with: 'beginsWith'
  };
  final result = dictionary[operatorType];
  if (result == null) {
    throw ApiException(
        '$operatorType does not have a defined GraphQL filter string.');
  }
  return result;
}

/// Convert Temporal* and DateTime values to string if needed; otherwise return unchanged.
dynamic _getSerializedValue(dynamic value) {
  if (value is TemporalDateTime ||
      value is TemporalDate ||
      value is TemporalTime ||
      value is TemporalTimestamp) {
    return value.toString();
  }
  if (value is DateTime) {
    return _getSerializedValue(TemporalDateTime(value));
  }
  return value;
}
