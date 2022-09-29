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

// ignore_for_file: public_member_api_docs

import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
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

  String _getName(
      SchemaTypeDefinition schema, GraphQLRequestOperation operation) {
    // schema has been validated & schema.pluralName is non-nullable
    return operation == GraphQLRequestOperation.list &&
            schema is ModelTypeDefinition
        ? schema.pluralName
        : schema.name;
  }

  String _getSelectionSetFromModelSchema(
      StructureTypeDefinition schema, GraphQLRequestOperation operation,
      {bool ignoreParents = false}) {
    // Schema has been validated & schema.fields is non-nullable.
    // Get a list of field names to include in the request body.
    List<String> fields = schema.fields.entries
        .where((entry) =>
            entry.value.association == null) // ignore related model fields
        .map((entry) {
      final type = entry.value.type.asLegacyType;
      if (type.fieldType == ModelFieldTypeEnum.embedded ||
          type.fieldType == ModelFieldTypeEnum.embeddedCollection) {
        final embeddedSchema =
            getModelSchemaByModelName(type.ofCustomTypeName!, null);
        final embeddedSelectionSet = _getSelectionSetFromModelSchema(
            embeddedSchema, GraphQLRequestOperation.get);
        return '${entry.key} { $embeddedSelectionSet }';
      }
      return entry.key;
    }).toList(); // e.g. ["id", "name", "createdAt"]

    // If belongsTo, also add selection set of parent.
    final belongsToAssociation = getBelongsToFieldFromModelSchema(schema);
    String? belongsToModelName =
        belongsToAssociation?.type.asLegacyType.ofModelName;
    if (belongsToModelName != null && !ignoreParents) {
      final parentSchema = getModelSchemaByModelName(belongsToModelName, null);
      String parentSelectionSet = _getSelectionSetFromModelSchema(
          parentSchema, GraphQLRequestOperation.get,
          ignoreParents:
              true); // always format like a get, stop traversing parents
      fields.add('${belongsToAssociation!.name} { $parentSelectionSet }');
    }

    String fieldSelection = fields.join(' '); // e.g. "id name createdAt"

    if (operation == GraphQLRequestOperation.list) {
      return '$items { $fieldSelection } nextToken';
    }

    return fieldSelection;
  }

  String _capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  String _lowerCaseFirstCharacter(String s) =>
      s[0].toLowerCase() + s.substring(1);

  DocumentInputs _buildDocumentInputs(
      SchemaTypeDefinition schema, GraphQLRequestOperation operation) {
    String upperOutput = '';
    String lowerOutput = '';
    String modelName = schema.name;

    // build inputs based on request operation
    switch (operation) {
      case GraphQLRequestOperation.get:
        upperOutput = r'($id: ID!)';
        lowerOutput = r'(id: $id)';
        break;
      case GraphQLRequestOperation.list:
        upperOutput =
            '(\$filter: Model${modelName}FilterInput, \$limit: Int, \$nextToken: String)';
        lowerOutput =
            r'(filter: $filter, limit: $limit, nextToken: $nextToken)';
        break;
      case GraphQLRequestOperation.create:
      case GraphQLRequestOperation.update:
      case GraphQLRequestOperation.delete:
        String operationValue = _capitalize(describeEnum(operation));

        upperOutput =
            '(\$input: $operationValue${modelName}Input!, \$condition:  Model${modelName}ConditionInput)';
        lowerOutput = r'(input: $input, condition: $condition)';
        break;
      case GraphQLRequestOperation.onCreate:
      case GraphQLRequestOperation.onUpdate:
      case GraphQLRequestOperation.onDelete:
        // upperOutput and lowerOutput already '', done
        break;
      default:
        throw const ApiException(
          'GraphQL Request Operation is currently unsupported',
          recoverySuggestion: 'please use a supported GraphQL operation',
        );
    }

    return DocumentInputs(upperOutput, lowerOutput);
  }

  GraphQLDocument _buildDocument({
    required ModelType modelType,
    required GraphQLRequestType requestType,
    required GraphQLRequestOperation requestOperation,
  }) {
    // retrieve schema from ModelType and validate required properties
    StructureTypeDefinition schema = getModelSchemaByModelName(
      modelType.modelName,
      requestOperation,
    );

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
    String requestName = '$requestOperationVal$name';
    // e.g. query getBlog($id: ID!, $content: String) { getBlog(id: $id, content: $content) { id name createdAt } }
    String document =
        '''$requestTypeVal $requestName${documentInputs.upper} { $requestName${documentInputs.lower} { $fields } }''';
    // e.g "listBlogs"
    String decodePath = requestName;

    return GraphQLDocument(document: document, decodePath: decodePath);
  }

  /// Example:
  ///   query getBlog($id: ID!, $content: String) { getBlog(id: $id, content: $content) { id name createdAt } }
  GraphQLRequest<M> buildRequest<ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>>({
    required ModelType<ModelIdentifier, M, PartialModel<ModelIdentifier, M>>
        modelType,
    M? model,
    required GraphQLRequestType requestType,
    required GraphQLRequestOperation requestOperation,
    required Map<String, dynamic> variables,
    int depth = 0,
  }) {
    final document = _buildDocument(
      modelType: modelType,
      requestType: requestType,
      requestOperation: requestOperation,
    );
    return _ModelGraphQLRequest(
      document: document.document,
      variables: variables,
      modelType: modelType,
      decodePath: document.decodePath,
    );
  }

  GraphQLRequest<PaginatedResult<ModelIdentifier, M, P, M>> buildListRequest<
      ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>,
      P extends PartialModel<ModelIdentifier, M>>({
    required ModelType<ModelIdentifier, M, P> modelType,
    M? model,
    required GraphQLRequestType requestType,
    required GraphQLRequestOperation requestOperation,
    required Map<String, dynamic> variables,
  }) {
    final document = _buildDocument(
      modelType: modelType,
      requestType: requestType,
      requestOperation: requestOperation,
    );
    return _ListGraphQLRequest<ModelIdentifier, M, P>(
      document: document.document,
      variables: variables,
      modelType: modelType,
      decodePath: document.decodePath,
    );
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
  Map<String, dynamic>? queryPredicateToGraphQLFilter<
      ModelIdentifier extends Object, M extends Model<ModelIdentifier, M>>(
    QueryPredicate? queryPredicate,
    ModelType<ModelIdentifier, M, dynamic> modelType,
  ) {
    if (queryPredicate == null) {
      return null;
    }
    StructureTypeDefinition schema =
        getModelSchemaByModelName(modelType.modelName, null);

    // e.g. { 'name': { 'eq': 'foo }}
    if (queryPredicate is QueryPredicateOperation) {
      final associatedTargetName = schema
          .fields[queryPredicate.field]?.association?.targetNames?.singleOrNull;
      String fieldName = queryPredicate.field;
      if (queryPredicate.field ==
          '${_lowerCaseFirstCharacter(schema.name)}.$idFieldName') {
        // check for the IDs where fieldName set to e.g. "blog.id" and convert to "id"
        fieldName = idFieldName;
      } else if (associatedTargetName != null) {
        // when querying for the ID of another model, use the targetName from the schema
        fieldName = associatedTargetName;
      }

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
        // technically allows multiple conditions so explicitly disallow multiple.
        throw const ApiException(
          'Unable to translate not() with multiple conditions.',
        );
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
    StructureTypeDefinition schema =
        getModelSchemaByModelName(model.modelType.modelName, null);
    final modelJson = model.toJson();

    // If the model has a parent in the schema, get the ID of parent and field name.
    String? belongsToModelName; // e.g. "blog"
    String? belongsToKey; // e.g. "blogID"
    String? belongsToValue; // the ID value to use from `post.blog.id`
    final belongsToAssociation = getBelongsToFieldFromModelSchema(schema);
    if (belongsToAssociation != null) {
      belongsToModelName = belongsToAssociation.name;
      belongsToKey =
          belongsToAssociation.association?.targetNames?.singleOrNull;
      belongsToValue =
          (modelJson[belongsToModelName] as Map?)?[idFieldName] as String?;
    }

    // Remove any relational fields or readonly.
    Set<String> fieldsToRemove = schema.fields.entries
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

/// Convert Temporal*, DateTime and enum values to string if needed.
/// Otherwise return unchanged.
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
  if (value is Enum) {
    return describeEnum(value);
  }
  return value;
}

// TODO(dnys1): Replace with gql AST
class GraphQLDocument {
  const GraphQLDocument({
    required this.document,
    required this.decodePath,
  });

  final String document;
  final String decodePath;
}

class _ModelGraphQLRequest<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> extends GraphQLRequest<M> {
  _ModelGraphQLRequest({
    super.apiName,
    super.decodePath,
    required super.document,
    required this.modelType,
    super.headers,
    super.variables,
  });

  final ModelType<ModelIdentifier, M, PartialModel<ModelIdentifier, M>>
      modelType;

  @override
  M decode(Map<String, Object?> json) => modelType.fromJson(json);
}

class _ListGraphQLRequest<
        ModelIdentifier extends Object,
        M extends Model<ModelIdentifier, M>,
        P extends PartialModel<ModelIdentifier, M>>
    extends GraphQLRequest<PaginatedResult<ModelIdentifier, M, P, M>> {
  _ListGraphQLRequest({
    super.apiName,
    super.decodePath,
    required super.document,
    required this.modelType,
    super.headers,
    super.variables,
  });

  /// The GraphQL parameter for locating the next pagination token.
  static const _nextToken = 'nextToken';

  final ModelType<ModelIdentifier, M, PartialModel<ModelIdentifier, M>>
      modelType;

  @override
  PaginatedResult<ModelIdentifier, M, P, M> decode(Map<String, Object?> json) {
    final itemsJson = json['items'] as List?;

    if (itemsJson == null || itemsJson.isEmpty) {
      return const PaginatedResult.empty();
    }

    final items = itemsJson
        .cast<Map?>()
        .map((el) => el == null ? null : modelType.fromJson<M>(el.cast()))
        .toList();

    final nextToken = json[_nextToken] as String?;

    return PaginatedResult(
      items: items,
      requestForNextResult: nextToken == null
          ? null
          : _ListGraphQLRequest<ModelIdentifier, M, P>(
              apiName: apiName,
              document: document,
              variables: {...variables, _nextToken: nextToken},
              headers: headers,
              decodePath: decodePath,
              modelType: modelType,
            ),
      limit: variables['limit'] as int?,
      filter: variables['filter'] as Map<String, Object?>?,
      nextToken: nextToken,
    );
  }
}
