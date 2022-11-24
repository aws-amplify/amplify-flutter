// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_api/src/graphql/factories/graphql_request_factory.dart';
import 'package:amplify_core/amplify_core.dart';

// ignore_for_file: public_member_api_docs

class ModelMutationsFactory extends ModelMutationsInterface {
  // Singleton methods/properties
  // usage: ModelQueriesFactory.instance;
  ModelMutationsFactory._();

  static final ModelMutationsFactory _instance = ModelMutationsFactory._();

  static ModelMutationsFactory get instance => _instance;

  @override
  GraphQLRequest<M> create<ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>>(M model) {
    final input =
        GraphQLRequestFactory.instance.buildInputVariableForMutations(model);
    // Does not use buildVariablesForMutationRequest because creations don't have conditions.
    final variables = {'input': input};

    return GraphQLRequestFactory.instance.buildRequest<ModelIdentifier, M>(
      model: model,
      variables: variables,
      modelType: model.modelType,
      requestType: GraphQLRequestType.mutation,
      requestOperation: GraphQLRequestOperation.create,
    );
  }

  @override
  GraphQLRequest<M> delete<ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>>(
    M model, {
    QueryPredicate<ModelIdentifier, M>? where,
  }) {
    return deleteById(
      model.modelType,
      model.modelIdentifier,
      where: where,
    );
  }

  @override
  GraphQLRequest<M> deleteById<
      ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>,
      P extends PartialModel<ModelIdentifier, M>>(
    ModelType<ModelIdentifier, M, P> modelType,
    ModelIdentifier id, {
    QueryPredicate<ModelIdentifier, M>? where,
  }) {
    final condition = GraphQLRequestFactory.instance
        .queryPredicateToGraphQLFilter(where, modelType);
    final input = {
      idFieldName: id
    }; // Simpler input than other mutations so don't use helper.
    final variables = GraphQLRequestFactory.instance
        .buildVariablesForMutationRequest(input: input, condition: condition);

    return GraphQLRequestFactory.instance.buildRequest<ModelIdentifier, M>(
      variables: variables,
      modelType: modelType,
      requestType: GraphQLRequestType.mutation,
      requestOperation: GraphQLRequestOperation.delete,
    );
  }

  @override
  GraphQLRequest<M> update<ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>>(
    M model, {
    QueryPredicate<ModelIdentifier, M>? where,
  }) {
    final condition =
        GraphQLRequestFactory.instance.queryPredicateToGraphQLFilter(
      where,
      model.modelType,
    );
    final input =
        GraphQLRequestFactory.instance.buildInputVariableForMutations(model);

    final variables = GraphQLRequestFactory.instance
        .buildVariablesForMutationRequest(input: input, condition: condition);

    return GraphQLRequestFactory.instance.buildRequest<ModelIdentifier, M>(
      model: model,
      variables: variables,
      modelType: model.modelType,
      requestType: GraphQLRequestType.mutation,
      requestOperation: GraphQLRequestOperation.update,
    );
  }
}
