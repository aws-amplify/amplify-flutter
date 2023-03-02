// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
import 'package:amplify_api_dart/src/graphql/utils.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';

// ignore_for_file: public_member_api_docs

/// `"id"`, the name of the id field when a primary key not specified in schema
/// with `@primaryKey` annotation.
const _defaultIdFieldName = 'id';
// other string constants
const _commaSpace = ', ';
const _openParen = '(';
const _closeParen = ')';

/// Contains expressions for mapping request variables to expected places in the
/// request.
///
/// Some examples include ids or indexes for simple queries, filters, and input
/// variables/conditions for mutations.
class DocumentInputs {
  const DocumentInputs(this.upper, this.lower);

  // Upper document input: ($id: ID!)
  final String upper;
  // Lower document input: (id: $id)
  final String lower;
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

  String _getSelectionSetFromModelSchema(
    ModelSchema schema,
    GraphQLRequestOperation operation, {
    bool ignoreParents = false,
  }) {
    // Schema has been validated & schema.fields is non-nullable.
    // Get a list of field names to include in the request body.
    final fields = schema.fields!.entries
        .where(
      (entry) => entry.value.association == null,
    ) // ignore related model fields
        .map((entry) {
      if (entry.value.type.fieldType == ModelFieldTypeEnum.embedded ||
          entry.value.type.fieldType == ModelFieldTypeEnum.embeddedCollection) {
        final embeddedSchema =
            getModelSchemaByModelName(entry.value.type.ofCustomTypeName!, null);
        final embeddedSelectionSet = _getSelectionSetFromModelSchema(
          embeddedSchema,
          GraphQLRequestOperation.get,
        );
        return '${entry.key} { $embeddedSelectionSet }';
      }
      return entry.key;
    }).toList(); // e.g. ["id", "name", "createdAt"]

    // If belongsTo, also add selection set of parent.
    final allBelongsTo = getBelongsToFieldsFromModelSchema(schema);
    for (final belongsTo in allBelongsTo) {
      final belongsToModelName = belongsTo.type.ofModelName;
      if (belongsToModelName != null && !ignoreParents) {
        final parentSchema =
            getModelSchemaByModelName(belongsToModelName, null);
        final parentSelectionSet = _getSelectionSetFromModelSchema(
          parentSchema,
          GraphQLRequestOperation.get,
          ignoreParents: true,
        ); // always format like a get, stop traversing parents
        fields.add('${belongsTo.name} { $parentSelectionSet }');

        // Include the ID key(s) itself in selection set. This is ignored while
        // deserializing response because model will use ID nested in `parentSelectionSet`.
        // However, including the ID in selection set allows subscriptions that
        // filter by these ID to be triggered by these mutations.
        var belongsToKeys = belongsTo.association?.targetNames;
        if (belongsToKeys == null &&
            belongsTo.association?.targetName != null) {
          belongsToKeys = [belongsTo.association!.targetName as String];
        }
        if (belongsToKeys != null) {
          fields.addAll(belongsToKeys);
        }
      }
    }

    final fieldSelection = fields.join(' '); // e.g. "id name createdAt"

    if (operation == GraphQLRequestOperation.list) {
      return '$items { $fieldSelection } nextToken';
    }

    return fieldSelection;
  }

  String _capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  String _lowerCaseFirstCharacter(String s) =>
      s[0].toLowerCase() + s.substring(1);

  DocumentInputs _buildDocumentInputs(
    ModelSchema schema,
    GraphQLRequestOperation operation,
    ModelIdentifier? modelIdentifier,
    Map<String, dynamic> variables,
  ) {
    var upperOutput = '';
    var lowerOutput = '';
    final modelName = schema.name;

    // build inputs based on request operation
    switch (operation) {
      case GraphQLRequestOperation.get:
        final indexes = schema.indexes;
        final modelIndex =
            indexes?.firstWhereOrNull((index) => index.name == null);
        if (modelIndex != null) {
          // custom index(es), e.g.
          // upperOutput: no change (empty string)
          // lowerOutput: (customId: 'abc-123, name: 'lorem')

          // Do not reference variables because scalar types not available in
          // codegen. Instead, just write the value to the document.
          final bLowerOutput = StringBuffer(_openParen);
          for (final field in modelIndex.fields) {
            var value = modelIdentifier!.serializeAsMap()[field];
            if (value is String) {
              value = '"$value"';
            }
            bLowerOutput.write('$field: $value');
            if (field != modelIndex.fields.last) {
              bLowerOutput.write(_commaSpace);
            }
          }
          bLowerOutput.write(_closeParen);
          lowerOutput = bLowerOutput.toString();
        } else {
          // simple, single identifier
          upperOutput = r'($id: ID!)';
          lowerOutput = r'(id: $id)';
        }
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
        final operationValue = _capitalize(operation.name);

        upperOutput =
            '(\$input: $operationValue${modelName}Input!, \$condition:  Model${modelName}ConditionInput)';
        lowerOutput = r'(input: $input, condition: $condition)';
        break;
      case GraphQLRequestOperation.onCreate:
      case GraphQLRequestOperation.onUpdate:
      case GraphQLRequestOperation.onDelete:
        // Only add filter variable when present to support older backends that do not support filtering.
        if (variables.containsKey('filter')) {
          upperOutput = '(\$filter: ModelSubscription${modelName}FilterInput)';
          lowerOutput = r'(filter: $filter)';
        }
        break;
      default:
        throw const ApiException(
          'GraphQL Request Operation is currently unsupported',
          recoverySuggestion: 'please use a supported GraphQL operation',
        );
    }

    return DocumentInputs(upperOutput, lowerOutput);
  }

  /// Example:
  ///   query getBlog($id: ID!, $content: String) { getBlog(id: $id, content: $content) { id name createdAt } }
  GraphQLRequest<T> buildRequest<T extends Model>({
    required ModelType modelType,
    Model? model,
    ModelIdentifier? modelIdentifier,
    required GraphQLRequestType requestType,
    required GraphQLRequestOperation requestOperation,
    required Map<String, dynamic> variables,
    String? apiName,
    APIAuthorizationType? authorizationMode,
    Map<String, String>? headers,
    int depth = 0,
  }) {
    // retrieve schema from ModelType and validate required properties
    final schema =
        getModelSchemaByModelName(modelType.modelName(), requestOperation);

    // e.g. "Blog" or "Blogs"
    final name = _getName(schema, requestOperation);
    // e.g. "query" or "mutation"
    final requestTypeVal = requestType.name;
    // e.g. "get" or "list"
    final requestOperationVal = requestOperation.name;
    // e.g. "{upper: "($id: ID!)", lower: "(id: $id)"}"
    final documentInputs = _buildDocumentInputs(
      schema,
      requestOperation,
      modelIdentifier,
      variables,
    );
    // e.g. "id name createdAt" - fields to retrieve
    final fields = _getSelectionSetFromModelSchema(schema, requestOperation);
    // e.g. "getBlog"
    final requestName = '$requestOperationVal$name';
    // e.g. query getBlog($id: ID!, $content: String) { getBlog(id: $id, content: $content) { id name createdAt } }
    final document =
        '''$requestTypeVal $requestName${documentInputs.upper} { $requestName${documentInputs.lower} { $fields } }''';
    // e.g "listBlogs"
    final decodePath = requestName;

    return GraphQLRequest<T>(
      document: document,
      variables: variables,
      modelType: modelType,
      decodePath: decodePath,
      apiName: apiName,
      authorizationMode: authorizationMode,
      headers: headers,
    );
  }

  Map<String, dynamic> buildVariablesForListRequest({
    int? limit,
    String? nextToken,
    Map<String, dynamic>? filter,
  }) {
    return <String, dynamic>{
      'filter': filter,
      'limit': limit,
      'nextToken': nextToken
    };
  }

  Map<String, dynamic> buildVariablesForMutationRequest({
    required Map<String, dynamic> input,
    Map<String, dynamic>? condition,
  }) {
    return <String, dynamic>{
      'input': input,
      'condition': condition,
    };
  }

  Map<String, dynamic> buildVariablesForSubscriptionRequest({
    required ModelType modelType,
    QueryPredicate? where,
  }) {
    if (where == null) {
      return {};
    }
    final filter = GraphQLRequestFactory.instance
        .queryPredicateToGraphQLFilter(where, modelType);
    return <String, dynamic>{
      'filter': filter,
    };
  }

  /// Translates a `QueryPredicate` to a map representing a GraphQL filter
  /// which AppSync will accept. Example:
  /// `queryPredicateToGraphQLFilter(Blog.NAME.eq('foo'));` // =>
  /// `{'name': {'eq': 'foo'}}`. In the case of a mutation, it will apply to
  /// the "condition" field rather than "filter."
  Map<String, dynamic>? queryPredicateToGraphQLFilter(
    QueryPredicate? queryPredicate,
    ModelType modelType,
  ) {
    if (queryPredicate == null) {
      return null;
    }
    final schema = getModelSchemaByModelName(modelType.modelName(), null);

    // e.g. { 'name': { 'eq': 'foo }}
    if (queryPredicate is QueryPredicateOperation) {
      final association = schema.fields?[queryPredicate.field]?.association;
      final associatedTargetName =
          association?.targetNames?.first ?? association?.targetName;
      var fieldName = queryPredicate.field;
      if (queryPredicate.field ==
          '${_lowerCaseFirstCharacter(schema.name)}.$_defaultIdFieldName') {
        // very old schemas where fieldName is "blog.id"
        fieldName = _defaultIdFieldName;
      } else if (associatedTargetName != null) {
        // most schemas from more recent CLI codegen versions

        // when querying for the ID of another model, use the targetName from the schema
        fieldName = associatedTargetName;
      }

      return <String, dynamic>{
        fieldName: _queryFieldOperatorToPartialGraphQLFilter(
          queryPredicate.queryFieldOperator,
        )
      };
    }

    // and, or, not
    if (queryPredicate is QueryPredicateGroup) {
      // .toShortString() is the same as expected graphql filter strings for all these,
      // so no translation helper required.
      final typeExpression = queryPredicate.type.name;

      // not
      if (queryPredicate.type == QueryPredicateGroupType.not) {
        if (queryPredicate.predicates.length == 1) {
          return <String, dynamic>{
            typeExpression: queryPredicateToGraphQLFilter(
              queryPredicate.predicates[0],
              modelType,
            )
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
            .map(
              (predicate) =>
                  queryPredicateToGraphQLFilter(predicate, modelType)!,
            )
            .toList()
      };
    }

    throw ApiException(
      'Unable to translate the QueryPredicate $queryPredicate to a GraphQL filter.',
    );
  }

  /// Calls `toJson` on the model and removes key/value pairs that refer to
  /// children when that field is null. The structure of provisioned AppSync `input` type,
  /// such as `CreateBlogInput` does not include nested types, so they will get
  /// an error from AppSync if they are included in mutations.
  ///
  /// When the model has a parent via a belongsTo, the id from the parent is added
  /// as a field similar to "blogID" where the value is `post.blog.id`.
  Map<String, dynamic> buildInputVariableForMutations(
    Model model, {
    required GraphQLRequestOperation operation,
  }) {
    final schema =
        getModelSchemaByModelName(model.getInstanceType().modelName(), null);
    final modelJson = model.toJson();

    // Get the primary key field name from parent schema(s) so it can be taken from
    // JSON. For schemas with `@primaryKey` defined, it will be the first key in
    // the index where name is null. If no such definition in schema, use
    // default primary key "id."
    final allBelongsTo = getBelongsToFieldsFromModelSchema(schema);
    for (final belongsTo in allBelongsTo) {
      final belongsToModelName = belongsTo.name;
      final parentSchema = getModelSchemaByModelName(
        belongsTo.type.ofModelName!,
        operation,
      );
      final primaryKeyIndex = parentSchema.indexes?.firstWhereOrNull(
        (modelIndex) => modelIndex.name == null,
      );

      // Traverse parent schema to get expected JSON strings and remove from JSON.
      // A parent with complex identifier may have multiple keys.
      var belongsToKeys = belongsTo.association?.targetNames;
      final legacyTargetName =
          belongsTo.association?.targetName; // pre-CPK codegen
      if (belongsToKeys == null && legacyTargetName == null) {
        // no way to resolve key to write to JSON
        continue;
      }
      belongsToKeys = belongsToKeys ?? [legacyTargetName as String];
      var i = 0; // needed to track corresponding index field name
      for (final belongsToKey in belongsToKeys) {
        final parentIdFieldName =
            primaryKeyIndex?.fields[i] ?? _defaultIdFieldName;
        final belongsToValue = (modelJson[belongsToModelName]
            as Map?)?[parentIdFieldName] as String?;

        // Assign the parent ID(s) if the model has a parent.
        if (belongsToValue != null) {
          modelJson[belongsToKey] = belongsToValue;
        }
        i++;
      }
      modelJson.remove(belongsToModelName);
    }

    final ownerFieldNames = (schema.authRules ?? [])
        .map((authRule) => authRule.ownerField)
        .whereNotNull()
        .toSet();
    // Remove some fields from input.
    final fieldsToRemove = schema.fields!.entries
        .where(
          (entry) =>
              // relational fields
              entry.value.association != null ||
              // read-only
              entry.value.isReadOnly ||
              // null values for owner fields on create operations
              (operation == GraphQLRequestOperation.create &&
                  ownerFieldNames.contains(entry.value.name) &&
                  modelJson[entry.value.name] == null),
        )
        .map((entry) => entry.key)
        .toSet();
    modelJson.removeWhere((key, dynamic value) => fieldsToRemove.contains(key));

    return modelJson;
  }
}

/// e.g. `.eq('foo')` => `{ 'eq': 'foo' }`
Map<String, dynamic> _queryFieldOperatorToPartialGraphQLFilter(
  QueryFieldOperator<dynamic> queryFieldOperator,
) {
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
    'Unable to translate the QueryFieldOperator ${queryFieldOperator.type} to a GraphQL filter.',
  );
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
      '$operatorType does not have a defined GraphQL filter string.',
    );
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
    return value.name;
  }
  return value;
}
