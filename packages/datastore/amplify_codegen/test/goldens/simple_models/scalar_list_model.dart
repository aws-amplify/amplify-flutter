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

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: non_constant_identifier_names

library models.scalar_list_model;

import 'package:amplify_core/amplify_core.dart';

class ScalarListModelType
    extends ModelType<String, ScalarListModel, PartialScalarListModel> {
  const ScalarListModelType();

  @override
  T fromJson<T extends PartialModel<String, ScalarListModel>>(
      Map<String, Object?> json) {
    if (T == ScalarListModel || T == Model<String, ScalarListModel>) {
      return ScalarListModel.fromJson(json) as T;
    }
    if (T == RemoteScalarListModel ||
        T == RemoteModel<String, ScalarListModel>) {
      return _RemoteScalarListModel.fromJson(json) as T;
    }
    return _PartialScalarListModel.fromJson(json) as T;
  }

  @override
  String get modelName => 'ScalarListModel';
}

class ScalarListModelQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const ScalarListModelQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, ScalarListModel>? _root;

  /// Query field for the [ScalarListModel.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel, String>(
        const QueryField<String, ScalarListModel, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.listOfString] field.
  QueryField<ModelIdentifier, M, List<String?>?> get $listOfString =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<String?>?>(
        const QueryField<String, ScalarListModel, List<String?>?>(
            fieldName: 'listOfString'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.listOfRequiredString] field.
  QueryField<ModelIdentifier, M, List<String>?> get $listOfRequiredString =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<String>?>(
        const QueryField<String, ScalarListModel, List<String>?>(
            fieldName: 'listOfRequiredString'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfString] field.
  QueryField<ModelIdentifier, M, List<String?>> get $requiredListOfString =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<String?>>(
        const QueryField<String, ScalarListModel, List<String?>>(
            fieldName: 'requiredListOfString'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfRequiredString] field.
  QueryField<ModelIdentifier, M, List<String>>
      get $requiredListOfRequiredString => NestedQueryField<ModelIdentifier, M,
              String, ScalarListModel, List<String>>(
            const QueryField<String, ScalarListModel, List<String>>(
                fieldName: 'requiredListOfRequiredString'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.listOfInteger] field.
  QueryField<ModelIdentifier, M, List<int?>?> get $listOfInteger =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<int?>?>(
        const QueryField<String, ScalarListModel, List<int?>?>(
            fieldName: 'listOfInteger'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.listOfRequiredInteger] field.
  QueryField<ModelIdentifier, M, List<int>?> get $listOfRequiredInteger =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel, List<int>?>(
        const QueryField<String, ScalarListModel, List<int>?>(
            fieldName: 'listOfRequiredInteger'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfInteger] field.
  QueryField<ModelIdentifier, M, List<int?>> get $requiredListOfInteger =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel, List<int?>>(
        const QueryField<String, ScalarListModel, List<int?>>(
            fieldName: 'requiredListOfInteger'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfRequiredInteger] field.
  QueryField<ModelIdentifier, M, List<int>>
      get $requiredListOfRequiredInteger => NestedQueryField<ModelIdentifier, M,
              String, ScalarListModel, List<int>>(
            const QueryField<String, ScalarListModel, List<int>>(
                fieldName: 'requiredListOfRequiredInteger'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.listOfFloat] field.
  QueryField<ModelIdentifier, M, List<double?>?> get $listOfFloat =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<double?>?>(
        const QueryField<String, ScalarListModel, List<double?>?>(
            fieldName: 'listOfFloat'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.listOfRequiredFloat] field.
  QueryField<ModelIdentifier, M, List<double>?> get $listOfRequiredFloat =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<double>?>(
        const QueryField<String, ScalarListModel, List<double>?>(
            fieldName: 'listOfRequiredFloat'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfFloat] field.
  QueryField<ModelIdentifier, M, List<double?>> get $requiredListOfFloat =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<double?>>(
        const QueryField<String, ScalarListModel, List<double?>>(
            fieldName: 'requiredListOfFloat'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfRequiredFloat] field.
  QueryField<ModelIdentifier, M, List<double>>
      get $requiredListOfRequiredFloat => NestedQueryField<ModelIdentifier, M,
              String, ScalarListModel, List<double>>(
            const QueryField<String, ScalarListModel, List<double>>(
                fieldName: 'requiredListOfRequiredFloat'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.listOfBoolean] field.
  QueryField<ModelIdentifier, M, List<bool?>?> get $listOfBoolean =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<bool?>?>(
        const QueryField<String, ScalarListModel, List<bool?>?>(
            fieldName: 'listOfBoolean'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.listOfRequiredBoolean] field.
  QueryField<ModelIdentifier, M, List<bool>?> get $listOfRequiredBoolean =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<bool>?>(
        const QueryField<String, ScalarListModel, List<bool>?>(
            fieldName: 'listOfRequiredBoolean'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfBoolean] field.
  QueryField<ModelIdentifier, M, List<bool?>> get $requiredListOfBoolean =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<bool?>>(
        const QueryField<String, ScalarListModel, List<bool?>>(
            fieldName: 'requiredListOfBoolean'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfRequiredBoolean] field.
  QueryField<ModelIdentifier, M, List<bool>>
      get $requiredListOfRequiredBoolean => NestedQueryField<ModelIdentifier, M,
              String, ScalarListModel, List<bool>>(
            const QueryField<String, ScalarListModel, List<bool>>(
                fieldName: 'requiredListOfRequiredBoolean'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.listOfAwsDate] field.
  QueryField<ModelIdentifier, M, List<TemporalDate?>?> get $listOfAwsDate =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<TemporalDate?>?>(
        const QueryField<String, ScalarListModel, List<TemporalDate?>?>(
            fieldName: 'listOfAWSDate'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.listOfRequiredAwsDate] field.
  QueryField<ModelIdentifier, M, List<TemporalDate>?>
      get $listOfRequiredAwsDate => NestedQueryField<ModelIdentifier, M, String,
              ScalarListModel, List<TemporalDate>?>(
            const QueryField<String, ScalarListModel, List<TemporalDate>?>(
                fieldName: 'listOfRequiredAWSDate'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.requiredListOfAwsDate] field.
  QueryField<ModelIdentifier, M, List<TemporalDate?>>
      get $requiredListOfAwsDate => NestedQueryField<ModelIdentifier, M, String,
              ScalarListModel, List<TemporalDate?>>(
            const QueryField<String, ScalarListModel, List<TemporalDate?>>(
                fieldName: 'requiredListOfAWSDate'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.requiredListOfRequiredAwsDate] field.
  QueryField<ModelIdentifier, M, List<TemporalDate>>
      get $requiredListOfRequiredAwsDate => NestedQueryField<ModelIdentifier, M,
              String, ScalarListModel, List<TemporalDate>>(
            const QueryField<String, ScalarListModel, List<TemporalDate>>(
                fieldName: 'requiredListOfRequiredAWSDate'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.listOfAwsDateTime] field.
  QueryField<ModelIdentifier, M, List<TemporalDateTime?>?>
      get $listOfAwsDateTime => NestedQueryField<ModelIdentifier, M, String,
              ScalarListModel, List<TemporalDateTime?>?>(
            const QueryField<String, ScalarListModel, List<TemporalDateTime?>?>(
                fieldName: 'listOfAWSDateTime'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.listOfRequiredAwsDateTime] field.
  QueryField<ModelIdentifier, M, List<TemporalDateTime>?>
      get $listOfRequiredAwsDateTime => NestedQueryField<ModelIdentifier, M,
              String, ScalarListModel, List<TemporalDateTime>?>(
            const QueryField<String, ScalarListModel, List<TemporalDateTime>?>(
                fieldName: 'listOfRequiredAWSDateTime'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.requiredListOfAwsDateTime] field.
  QueryField<ModelIdentifier, M, List<TemporalDateTime?>>
      get $requiredListOfAwsDateTime => NestedQueryField<ModelIdentifier, M,
              String, ScalarListModel, List<TemporalDateTime?>>(
            const QueryField<String, ScalarListModel, List<TemporalDateTime?>>(
                fieldName: 'requiredListOfAWSDateTime'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.requiredListOfRequiredAwsDateTime] field.
  QueryField<ModelIdentifier, M, List<TemporalDateTime>>
      get $requiredListOfRequiredAwsDateTime => NestedQueryField<
              ModelIdentifier,
              M,
              String,
              ScalarListModel,
              List<TemporalDateTime>>(
            const QueryField<String, ScalarListModel, List<TemporalDateTime>>(
                fieldName: 'requiredListOfRequiredAWSDateTime'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.listOfAwsTime] field.
  QueryField<ModelIdentifier, M, List<TemporalTime?>?> get $listOfAwsTime =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<TemporalTime?>?>(
        const QueryField<String, ScalarListModel, List<TemporalTime?>?>(
            fieldName: 'listOfAWSTime'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.listOfRequiredAwsTime] field.
  QueryField<ModelIdentifier, M, List<TemporalTime>?>
      get $listOfRequiredAwsTime => NestedQueryField<ModelIdentifier, M, String,
              ScalarListModel, List<TemporalTime>?>(
            const QueryField<String, ScalarListModel, List<TemporalTime>?>(
                fieldName: 'listOfRequiredAWSTime'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.requiredListOfAwsTime] field.
  QueryField<ModelIdentifier, M, List<TemporalTime?>>
      get $requiredListOfAwsTime => NestedQueryField<ModelIdentifier, M, String,
              ScalarListModel, List<TemporalTime?>>(
            const QueryField<String, ScalarListModel, List<TemporalTime?>>(
                fieldName: 'requiredListOfAWSTime'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.requiredListOfRequiredAwsTime] field.
  QueryField<ModelIdentifier, M, List<TemporalTime>>
      get $requiredListOfRequiredAwsTime => NestedQueryField<ModelIdentifier, M,
              String, ScalarListModel, List<TemporalTime>>(
            const QueryField<String, ScalarListModel, List<TemporalTime>>(
                fieldName: 'requiredListOfRequiredAWSTime'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.listOfAwsTimestamp] field.
  QueryField<ModelIdentifier, M,
      List<TemporalTimestamp?>?> get $listOfAwsTimestamp => NestedQueryField<
          ModelIdentifier,
          M,
          String,
          ScalarListModel,
          List<TemporalTimestamp?>?>(
        const QueryField<String, ScalarListModel, List<TemporalTimestamp?>?>(
            fieldName: 'listOfAWSTimestamp'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.listOfRequiredAwsTimestamp] field.
  QueryField<ModelIdentifier, M, List<TemporalTimestamp>?>
      get $listOfRequiredAwsTimestamp => NestedQueryField<ModelIdentifier, M,
              String, ScalarListModel, List<TemporalTimestamp>?>(
            const QueryField<String, ScalarListModel, List<TemporalTimestamp>?>(
                fieldName: 'listOfRequiredAWSTimestamp'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.requiredListOfAwsTimestamp] field.
  QueryField<ModelIdentifier, M, List<TemporalTimestamp?>>
      get $requiredListOfAwsTimestamp => NestedQueryField<ModelIdentifier, M,
              String, ScalarListModel, List<TemporalTimestamp?>>(
            const QueryField<String, ScalarListModel, List<TemporalTimestamp?>>(
                fieldName: 'requiredListOfAWSTimestamp'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.requiredListOfRequiredAwsTimestamp] field.
  QueryField<ModelIdentifier, M, List<TemporalTimestamp>>
      get $requiredListOfRequiredAwsTimestamp => NestedQueryField<
              ModelIdentifier,
              M,
              String,
              ScalarListModel,
              List<TemporalTimestamp>>(
            const QueryField<String, ScalarListModel, List<TemporalTimestamp>>(
                fieldName: 'requiredListOfRequiredAWSTimestamp'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.listOfAwsEmail] field.
  QueryField<ModelIdentifier, M, List<String?>?> get $listOfAwsEmail =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<String?>?>(
        const QueryField<String, ScalarListModel, List<String?>?>(
            fieldName: 'listOfAWSEmail'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.listOfRequiredAwsEmail] field.
  QueryField<ModelIdentifier, M, List<String>?> get $listOfRequiredAwsEmail =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<String>?>(
        const QueryField<String, ScalarListModel, List<String>?>(
            fieldName: 'listOfRequiredAWSEmail'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfAwsEmail] field.
  QueryField<ModelIdentifier, M, List<String?>> get $requiredListOfAwsEmail =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<String?>>(
        const QueryField<String, ScalarListModel, List<String?>>(
            fieldName: 'requiredListOfAWSEmail'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfRequiredAwsEmail] field.
  QueryField<ModelIdentifier, M, List<String>>
      get $requiredListOfRequiredAwsEmail => NestedQueryField<ModelIdentifier,
              M, String, ScalarListModel, List<String>>(
            const QueryField<String, ScalarListModel, List<String>>(
                fieldName: 'requiredListOfRequiredAWSEmail'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.listOfAwsjson] field.
  QueryField<ModelIdentifier, M, List<Object?>?> get $listOfAwsjson =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<Object?>?>(
        const QueryField<String, ScalarListModel, List<Object?>?>(
            fieldName: 'listOfAWSJSON'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.listOfRequiredAwsjson] field.
  QueryField<ModelIdentifier, M, List<Object>?> get $listOfRequiredAwsjson =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<Object>?>(
        const QueryField<String, ScalarListModel, List<Object>?>(
            fieldName: 'listOfRequiredAWSJSON'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfAwsjson] field.
  QueryField<ModelIdentifier, M, List<Object?>> get $requiredListOfAwsjson =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<Object?>>(
        const QueryField<String, ScalarListModel, List<Object?>>(
            fieldName: 'requiredListOfAWSJSON'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfRequiredAwsjson] field.
  QueryField<ModelIdentifier, M, List<Object>>
      get $requiredListOfRequiredAwsjson => NestedQueryField<ModelIdentifier, M,
              String, ScalarListModel, List<Object>>(
            const QueryField<String, ScalarListModel, List<Object>>(
                fieldName: 'requiredListOfRequiredAWSJSON'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.listOfAwsPhone] field.
  QueryField<ModelIdentifier, M, List<String?>?> get $listOfAwsPhone =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<String?>?>(
        const QueryField<String, ScalarListModel, List<String?>?>(
            fieldName: 'listOfAWSPhone'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.listOfRequiredAwsPhone] field.
  QueryField<ModelIdentifier, M, List<String>?> get $listOfRequiredAwsPhone =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<String>?>(
        const QueryField<String, ScalarListModel, List<String>?>(
            fieldName: 'listOfRequiredAWSPhone'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfAwsPhone] field.
  QueryField<ModelIdentifier, M, List<String?>> get $requiredListOfAwsPhone =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<String?>>(
        const QueryField<String, ScalarListModel, List<String?>>(
            fieldName: 'requiredListOfAWSPhone'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfRequiredAwsPhone] field.
  QueryField<ModelIdentifier, M, List<String>>
      get $requiredListOfRequiredAwsPhone => NestedQueryField<ModelIdentifier,
              M, String, ScalarListModel, List<String>>(
            const QueryField<String, ScalarListModel, List<String>>(
                fieldName: 'requiredListOfRequiredAWSPhone'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.listOfAwsUrl] field.
  QueryField<ModelIdentifier, M, List<Uri?>?> get $listOfAwsUrl =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<Uri?>?>(
        const QueryField<String, ScalarListModel, List<Uri?>?>(
            fieldName: 'listOfAWSUrl'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.listOfRequiredAwsUrl] field.
  QueryField<ModelIdentifier, M, List<Uri>?> get $listOfRequiredAwsUrl =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel, List<Uri>?>(
        const QueryField<String, ScalarListModel, List<Uri>?>(
            fieldName: 'listOfRequiredAWSUrl'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfAwsUrl] field.
  QueryField<ModelIdentifier, M, List<Uri?>> get $requiredListOfAwsUrl =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel, List<Uri?>>(
        const QueryField<String, ScalarListModel, List<Uri?>>(
            fieldName: 'requiredListOfAWSUrl'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.requiredListOfRequiredAwsUrl] field.
  QueryField<ModelIdentifier, M, List<Uri>> get $requiredListOfRequiredAwsUrl =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel, List<Uri>>(
        const QueryField<String, ScalarListModel, List<Uri>>(
            fieldName: 'requiredListOfRequiredAWSUrl'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.listOfAwsIpAddress] field.
  QueryField<ModelIdentifier, M, List<String?>?> get $listOfAwsIpAddress =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          List<String?>?>(
        const QueryField<String, ScalarListModel, List<String?>?>(
            fieldName: 'listOfAWSIpAddress'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.listOfRequiredAwsIpAddress] field.
  QueryField<ModelIdentifier, M, List<String>?>
      get $listOfRequiredAwsIpAddress => NestedQueryField<ModelIdentifier, M,
              String, ScalarListModel, List<String>?>(
            const QueryField<String, ScalarListModel, List<String>?>(
                fieldName: 'listOfRequiredAWSIpAddress'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.requiredListOfAwsIpAddress] field.
  QueryField<ModelIdentifier, M, List<String?>>
      get $requiredListOfAwsIpAddress => NestedQueryField<ModelIdentifier, M,
              String, ScalarListModel, List<String?>>(
            const QueryField<String, ScalarListModel, List<String?>>(
                fieldName: 'requiredListOfAWSIpAddress'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.requiredListOfRequiredAwsIpAddress] field.
  QueryField<ModelIdentifier, M, List<String>>
      get $requiredListOfRequiredAwsIpAddress => NestedQueryField<
              ModelIdentifier, M, String, ScalarListModel, List<String>>(
            const QueryField<String, ScalarListModel, List<String>>(
                fieldName: 'requiredListOfRequiredAWSIpAddress'),
            root: _root,
          );

  /// Query field for the [ScalarListModel.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime?> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          TemporalDateTime?>(
        const QueryField<String, ScalarListModel, TemporalDateTime?>(
            fieldName: 'createdAt'),
        root: _root,
      );

  /// Query field for the [ScalarListModel.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime?> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel,
          TemporalDateTime?>(
        const QueryField<String, ScalarListModel, TemporalDateTime?>(
            fieldName: 'updatedAt'),
        root: _root,
      );

  /// Query field for the [ScalarListModel] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, ScalarListModel, String>(
        const QueryField<String, ScalarListModel, String>(
            fieldName: 'modelIdentifier'),
        root: _root,
      );
}

abstract class PartialScalarListModel
    extends PartialModel<String, ScalarListModel>
    with AWSEquatable<PartialScalarListModel> {
  const PartialScalarListModel._();

  String get id;
  List<String?>? get listOfString;
  List<String>? get listOfRequiredString;
  List<String?>? get requiredListOfString;
  List<String>? get requiredListOfRequiredString;
  List<int?>? get listOfInteger;
  List<int>? get listOfRequiredInteger;
  List<int?>? get requiredListOfInteger;
  List<int>? get requiredListOfRequiredInteger;
  List<double?>? get listOfFloat;
  List<double>? get listOfRequiredFloat;
  List<double?>? get requiredListOfFloat;
  List<double>? get requiredListOfRequiredFloat;
  List<bool?>? get listOfBoolean;
  List<bool>? get listOfRequiredBoolean;
  List<bool?>? get requiredListOfBoolean;
  List<bool>? get requiredListOfRequiredBoolean;
  List<TemporalDate?>? get listOfAwsDate;
  List<TemporalDate>? get listOfRequiredAwsDate;
  List<TemporalDate?>? get requiredListOfAwsDate;
  List<TemporalDate>? get requiredListOfRequiredAwsDate;
  List<TemporalDateTime?>? get listOfAwsDateTime;
  List<TemporalDateTime>? get listOfRequiredAwsDateTime;
  List<TemporalDateTime?>? get requiredListOfAwsDateTime;
  List<TemporalDateTime>? get requiredListOfRequiredAwsDateTime;
  List<TemporalTime?>? get listOfAwsTime;
  List<TemporalTime>? get listOfRequiredAwsTime;
  List<TemporalTime?>? get requiredListOfAwsTime;
  List<TemporalTime>? get requiredListOfRequiredAwsTime;
  List<TemporalTimestamp?>? get listOfAwsTimestamp;
  List<TemporalTimestamp>? get listOfRequiredAwsTimestamp;
  List<TemporalTimestamp?>? get requiredListOfAwsTimestamp;
  List<TemporalTimestamp>? get requiredListOfRequiredAwsTimestamp;
  List<String?>? get listOfAwsEmail;
  List<String>? get listOfRequiredAwsEmail;
  List<String?>? get requiredListOfAwsEmail;
  List<String>? get requiredListOfRequiredAwsEmail;
  List<Object?>? get listOfAwsjson;
  List<Object>? get listOfRequiredAwsjson;
  List<Object?>? get requiredListOfAwsjson;
  List<Object>? get requiredListOfRequiredAwsjson;
  List<String?>? get listOfAwsPhone;
  List<String>? get listOfRequiredAwsPhone;
  List<String?>? get requiredListOfAwsPhone;
  List<String>? get requiredListOfRequiredAwsPhone;
  List<Uri?>? get listOfAwsUrl;
  List<Uri>? get listOfRequiredAwsUrl;
  List<Uri?>? get requiredListOfAwsUrl;
  List<Uri>? get requiredListOfRequiredAwsUrl;
  List<String?>? get listOfAwsIpAddress;
  List<String>? get listOfRequiredAwsIpAddress;
  List<String?>? get requiredListOfAwsIpAddress;
  List<String>? get requiredListOfRequiredAwsIpAddress;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  ScalarListModelType get modelType => ScalarListModel.classType;
  @override
  List<Object?> get props => [
        id,
        listOfString,
        listOfRequiredString,
        requiredListOfString,
        requiredListOfRequiredString,
        listOfInteger,
        listOfRequiredInteger,
        requiredListOfInteger,
        requiredListOfRequiredInteger,
        listOfFloat,
        listOfRequiredFloat,
        requiredListOfFloat,
        requiredListOfRequiredFloat,
        listOfBoolean,
        listOfRequiredBoolean,
        requiredListOfBoolean,
        requiredListOfRequiredBoolean,
        listOfAwsDate,
        listOfRequiredAwsDate,
        requiredListOfAwsDate,
        requiredListOfRequiredAwsDate,
        listOfAwsDateTime,
        listOfRequiredAwsDateTime,
        requiredListOfAwsDateTime,
        requiredListOfRequiredAwsDateTime,
        listOfAwsTime,
        listOfRequiredAwsTime,
        requiredListOfAwsTime,
        requiredListOfRequiredAwsTime,
        listOfAwsTimestamp,
        listOfRequiredAwsTimestamp,
        requiredListOfAwsTimestamp,
        requiredListOfRequiredAwsTimestamp,
        listOfAwsEmail,
        listOfRequiredAwsEmail,
        requiredListOfAwsEmail,
        requiredListOfRequiredAwsEmail,
        listOfAwsjson,
        listOfRequiredAwsjson,
        requiredListOfAwsjson,
        requiredListOfRequiredAwsjson,
        listOfAwsPhone,
        listOfRequiredAwsPhone,
        requiredListOfAwsPhone,
        requiredListOfRequiredAwsPhone,
        listOfAwsUrl,
        listOfRequiredAwsUrl,
        requiredListOfAwsUrl,
        requiredListOfRequiredAwsUrl,
        listOfAwsIpAddress,
        listOfRequiredAwsIpAddress,
        requiredListOfAwsIpAddress,
        requiredListOfRequiredAwsIpAddress,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'listOfString': listOfString,
        'listOfRequiredString': listOfRequiredString,
        'requiredListOfString': requiredListOfString,
        'requiredListOfRequiredString': requiredListOfRequiredString,
        'listOfInteger': listOfInteger,
        'listOfRequiredInteger': listOfRequiredInteger,
        'requiredListOfInteger': requiredListOfInteger,
        'requiredListOfRequiredInteger': requiredListOfRequiredInteger,
        'listOfFloat': listOfFloat,
        'listOfRequiredFloat': listOfRequiredFloat,
        'requiredListOfFloat': requiredListOfFloat,
        'requiredListOfRequiredFloat': requiredListOfRequiredFloat,
        'listOfBoolean': listOfBoolean,
        'listOfRequiredBoolean': listOfRequiredBoolean,
        'requiredListOfBoolean': requiredListOfBoolean,
        'requiredListOfRequiredBoolean': requiredListOfRequiredBoolean,
        'listOfAWSDate': listOfAwsDate?.map((el) => el?.format()).toList(),
        'listOfRequiredAWSDate':
            listOfRequiredAwsDate?.map((el) => el.format()).toList(),
        'requiredListOfAWSDate':
            requiredListOfAwsDate?.map((el) => el?.format()).toList(),
        'requiredListOfRequiredAWSDate':
            requiredListOfRequiredAwsDate?.map((el) => el.format()).toList(),
        'listOfAWSDateTime':
            listOfAwsDateTime?.map((el) => el?.format()).toList(),
        'listOfRequiredAWSDateTime':
            listOfRequiredAwsDateTime?.map((el) => el.format()).toList(),
        'requiredListOfAWSDateTime':
            requiredListOfAwsDateTime?.map((el) => el?.format()).toList(),
        'requiredListOfRequiredAWSDateTime': requiredListOfRequiredAwsDateTime
            ?.map((el) => el.format())
            .toList(),
        'listOfAWSTime': listOfAwsTime?.map((el) => el?.format()).toList(),
        'listOfRequiredAWSTime':
            listOfRequiredAwsTime?.map((el) => el.format()).toList(),
        'requiredListOfAWSTime':
            requiredListOfAwsTime?.map((el) => el?.format()).toList(),
        'requiredListOfRequiredAWSTime':
            requiredListOfRequiredAwsTime?.map((el) => el.format()).toList(),
        'listOfAWSTimestamp':
            listOfAwsTimestamp?.map((el) => el?.toSeconds()).toList(),
        'listOfRequiredAWSTimestamp':
            listOfRequiredAwsTimestamp?.map((el) => el.toSeconds()).toList(),
        'requiredListOfAWSTimestamp':
            requiredListOfAwsTimestamp?.map((el) => el?.toSeconds()).toList(),
        'requiredListOfRequiredAWSTimestamp': requiredListOfRequiredAwsTimestamp
            ?.map((el) => el.toSeconds())
            .toList(),
        'listOfAWSEmail': listOfAwsEmail,
        'listOfRequiredAWSEmail': listOfRequiredAwsEmail,
        'requiredListOfAWSEmail': requiredListOfAwsEmail,
        'requiredListOfRequiredAWSEmail': requiredListOfRequiredAwsEmail,
        'listOfAWSJSON': listOfAwsjson,
        'listOfRequiredAWSJSON': listOfRequiredAwsjson,
        'requiredListOfAWSJSON': requiredListOfAwsjson,
        'requiredListOfRequiredAWSJSON': requiredListOfRequiredAwsjson,
        'listOfAWSPhone': listOfAwsPhone,
        'listOfRequiredAWSPhone': listOfRequiredAwsPhone,
        'requiredListOfAWSPhone': requiredListOfAwsPhone,
        'requiredListOfRequiredAWSPhone': requiredListOfRequiredAwsPhone,
        'listOfAWSUrl': listOfAwsUrl?.map((el) => el?.toString()).toList(),
        'listOfRequiredAWSUrl':
            listOfRequiredAwsUrl?.map((el) => el.toString()).toList(),
        'requiredListOfAWSUrl':
            requiredListOfAwsUrl?.map((el) => el?.toString()).toList(),
        'requiredListOfRequiredAWSUrl':
            requiredListOfRequiredAwsUrl?.map((el) => el.toString()).toList(),
        'listOfAWSIpAddress': listOfAwsIpAddress,
        'listOfRequiredAWSIpAddress': listOfRequiredAwsIpAddress,
        'requiredListOfAWSIpAddress': requiredListOfAwsIpAddress,
        'requiredListOfRequiredAWSIpAddress':
            requiredListOfRequiredAwsIpAddress,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'ScalarListModel';
  @override
  T valueFor<T extends Object?>(QueryField<String, ScalarListModel, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'listOfString':
        value = listOfString;
        break;
      case r'listOfRequiredString':
        value = listOfRequiredString;
        break;
      case r'requiredListOfString':
        value = requiredListOfString;
        break;
      case r'requiredListOfRequiredString':
        value = requiredListOfRequiredString;
        break;
      case r'listOfInteger':
        value = listOfInteger;
        break;
      case r'listOfRequiredInteger':
        value = listOfRequiredInteger;
        break;
      case r'requiredListOfInteger':
        value = requiredListOfInteger;
        break;
      case r'requiredListOfRequiredInteger':
        value = requiredListOfRequiredInteger;
        break;
      case r'listOfFloat':
        value = listOfFloat;
        break;
      case r'listOfRequiredFloat':
        value = listOfRequiredFloat;
        break;
      case r'requiredListOfFloat':
        value = requiredListOfFloat;
        break;
      case r'requiredListOfRequiredFloat':
        value = requiredListOfRequiredFloat;
        break;
      case r'listOfBoolean':
        value = listOfBoolean;
        break;
      case r'listOfRequiredBoolean':
        value = listOfRequiredBoolean;
        break;
      case r'requiredListOfBoolean':
        value = requiredListOfBoolean;
        break;
      case r'requiredListOfRequiredBoolean':
        value = requiredListOfRequiredBoolean;
        break;
      case r'listOfAWSDate':
        value = listOfAwsDate;
        break;
      case r'listOfRequiredAWSDate':
        value = listOfRequiredAwsDate;
        break;
      case r'requiredListOfAWSDate':
        value = requiredListOfAwsDate;
        break;
      case r'requiredListOfRequiredAWSDate':
        value = requiredListOfRequiredAwsDate;
        break;
      case r'listOfAWSDateTime':
        value = listOfAwsDateTime;
        break;
      case r'listOfRequiredAWSDateTime':
        value = listOfRequiredAwsDateTime;
        break;
      case r'requiredListOfAWSDateTime':
        value = requiredListOfAwsDateTime;
        break;
      case r'requiredListOfRequiredAWSDateTime':
        value = requiredListOfRequiredAwsDateTime;
        break;
      case r'listOfAWSTime':
        value = listOfAwsTime;
        break;
      case r'listOfRequiredAWSTime':
        value = listOfRequiredAwsTime;
        break;
      case r'requiredListOfAWSTime':
        value = requiredListOfAwsTime;
        break;
      case r'requiredListOfRequiredAWSTime':
        value = requiredListOfRequiredAwsTime;
        break;
      case r'listOfAWSTimestamp':
        value = listOfAwsTimestamp;
        break;
      case r'listOfRequiredAWSTimestamp':
        value = listOfRequiredAwsTimestamp;
        break;
      case r'requiredListOfAWSTimestamp':
        value = requiredListOfAwsTimestamp;
        break;
      case r'requiredListOfRequiredAWSTimestamp':
        value = requiredListOfRequiredAwsTimestamp;
        break;
      case r'listOfAWSEmail':
        value = listOfAwsEmail;
        break;
      case r'listOfRequiredAWSEmail':
        value = listOfRequiredAwsEmail;
        break;
      case r'requiredListOfAWSEmail':
        value = requiredListOfAwsEmail;
        break;
      case r'requiredListOfRequiredAWSEmail':
        value = requiredListOfRequiredAwsEmail;
        break;
      case r'listOfAWSJSON':
        value = listOfAwsjson;
        break;
      case r'listOfRequiredAWSJSON':
        value = listOfRequiredAwsjson;
        break;
      case r'requiredListOfAWSJSON':
        value = requiredListOfAwsjson;
        break;
      case r'requiredListOfRequiredAWSJSON':
        value = requiredListOfRequiredAwsjson;
        break;
      case r'listOfAWSPhone':
        value = listOfAwsPhone;
        break;
      case r'listOfRequiredAWSPhone':
        value = listOfRequiredAwsPhone;
        break;
      case r'requiredListOfAWSPhone':
        value = requiredListOfAwsPhone;
        break;
      case r'requiredListOfRequiredAWSPhone':
        value = requiredListOfRequiredAwsPhone;
        break;
      case r'listOfAWSUrl':
        value = listOfAwsUrl;
        break;
      case r'listOfRequiredAWSUrl':
        value = listOfRequiredAwsUrl;
        break;
      case r'requiredListOfAWSUrl':
        value = requiredListOfAwsUrl;
        break;
      case r'requiredListOfRequiredAWSUrl':
        value = requiredListOfRequiredAwsUrl;
        break;
      case r'listOfAWSIpAddress':
        value = listOfAwsIpAddress;
        break;
      case r'listOfRequiredAWSIpAddress':
        value = listOfRequiredAwsIpAddress;
        break;
      case r'requiredListOfAWSIpAddress':
        value = requiredListOfAwsIpAddress;
        break;
      case r'requiredListOfRequiredAWSIpAddress':
        value = requiredListOfRequiredAwsIpAddress;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _PartialScalarListModel extends PartialScalarListModel {
  const _PartialScalarListModel({
    required this.id,
    this.listOfString,
    this.listOfRequiredString,
    this.requiredListOfString,
    this.requiredListOfRequiredString,
    this.listOfInteger,
    this.listOfRequiredInteger,
    this.requiredListOfInteger,
    this.requiredListOfRequiredInteger,
    this.listOfFloat,
    this.listOfRequiredFloat,
    this.requiredListOfFloat,
    this.requiredListOfRequiredFloat,
    this.listOfBoolean,
    this.listOfRequiredBoolean,
    this.requiredListOfBoolean,
    this.requiredListOfRequiredBoolean,
    this.listOfAwsDate,
    this.listOfRequiredAwsDate,
    this.requiredListOfAwsDate,
    this.requiredListOfRequiredAwsDate,
    this.listOfAwsDateTime,
    this.listOfRequiredAwsDateTime,
    this.requiredListOfAwsDateTime,
    this.requiredListOfRequiredAwsDateTime,
    this.listOfAwsTime,
    this.listOfRequiredAwsTime,
    this.requiredListOfAwsTime,
    this.requiredListOfRequiredAwsTime,
    this.listOfAwsTimestamp,
    this.listOfRequiredAwsTimestamp,
    this.requiredListOfAwsTimestamp,
    this.requiredListOfRequiredAwsTimestamp,
    this.listOfAwsEmail,
    this.listOfRequiredAwsEmail,
    this.requiredListOfAwsEmail,
    this.requiredListOfRequiredAwsEmail,
    this.listOfAwsjson,
    this.listOfRequiredAwsjson,
    this.requiredListOfAwsjson,
    this.requiredListOfRequiredAwsjson,
    this.listOfAwsPhone,
    this.listOfRequiredAwsPhone,
    this.requiredListOfAwsPhone,
    this.requiredListOfRequiredAwsPhone,
    this.listOfAwsUrl,
    this.listOfRequiredAwsUrl,
    this.requiredListOfAwsUrl,
    this.requiredListOfRequiredAwsUrl,
    this.listOfAwsIpAddress,
    this.listOfRequiredAwsIpAddress,
    this.requiredListOfAwsIpAddress,
    this.requiredListOfRequiredAwsIpAddress,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialScalarListModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'id',
          ))
        : (json['id'] as String);
    final listOfString = json['listOfString'] == null
        ? null
        : (json['listOfString'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredString = json['listOfRequiredString'] == null
        ? null
        : (json['listOfRequiredString'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredString',
                )))
            .toList();
    final requiredListOfString = json['requiredListOfString'] == null
        ? null
        : (json['requiredListOfString'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredString =
        json['requiredListOfRequiredString'] == null
            ? null
            : (json['requiredListOfRequiredString'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredString',
                    )))
                .toList();
    final listOfInteger = json['listOfInteger'] == null
        ? null
        : (json['listOfInteger'] as List<Object?>).cast<int?>().toList();
    final listOfRequiredInteger = json['listOfRequiredInteger'] == null
        ? null
        : (json['listOfRequiredInteger'] as List<Object?>)
            .cast<int?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredInteger',
                )))
            .toList();
    final requiredListOfInteger = json['requiredListOfInteger'] == null
        ? null
        : (json['requiredListOfInteger'] as List<Object?>)
            .cast<int?>()
            .toList();
    final requiredListOfRequiredInteger =
        json['requiredListOfRequiredInteger'] == null
            ? null
            : (json['requiredListOfRequiredInteger'] as List<Object?>)
                .cast<int?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredInteger',
                    )))
                .toList();
    final listOfFloat = json['listOfFloat'] == null
        ? null
        : (json['listOfFloat'] as List<Object?>).cast<double?>().toList();
    final listOfRequiredFloat = json['listOfRequiredFloat'] == null
        ? null
        : (json['listOfRequiredFloat'] as List<Object?>)
            .cast<double?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredFloat',
                )))
            .toList();
    final requiredListOfFloat = json['requiredListOfFloat'] == null
        ? null
        : (json['requiredListOfFloat'] as List<Object?>)
            .cast<double?>()
            .toList();
    final requiredListOfRequiredFloat =
        json['requiredListOfRequiredFloat'] == null
            ? null
            : (json['requiredListOfRequiredFloat'] as List<Object?>)
                .cast<double?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredFloat',
                    )))
                .toList();
    final listOfBoolean = json['listOfBoolean'] == null
        ? null
        : (json['listOfBoolean'] as List<Object?>).cast<bool?>().toList();
    final listOfRequiredBoolean = json['listOfRequiredBoolean'] == null
        ? null
        : (json['listOfRequiredBoolean'] as List<Object?>)
            .cast<bool?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredBoolean',
                )))
            .toList();
    final requiredListOfBoolean = json['requiredListOfBoolean'] == null
        ? null
        : (json['requiredListOfBoolean'] as List<Object?>)
            .cast<bool?>()
            .toList();
    final requiredListOfRequiredBoolean =
        json['requiredListOfRequiredBoolean'] == null
            ? null
            : (json['requiredListOfRequiredBoolean'] as List<Object?>)
                .cast<bool?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredBoolean',
                    )))
                .toList();
    final listOfAwsDate = json['listOfAWSDate'] == null
        ? null
        : (json['listOfAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDate.fromString(el))
            .toList();
    final listOfRequiredAwsDate = json['listOfRequiredAWSDate'] == null
        ? null
        : (json['listOfRequiredAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListModel',
                    'listOfRequiredAwsDate',
                  ))
                : TemporalDate.fromString(el))
            .toList();
    final requiredListOfAwsDate = json['requiredListOfAWSDate'] == null
        ? null
        : (json['requiredListOfAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDate.fromString(el))
            .toList();
    final requiredListOfRequiredAwsDate =
        json['requiredListOfRequiredAWSDate'] == null
            ? null
            : (json['requiredListOfRequiredAWSDate'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'requiredListOfRequiredAwsDate',
                      ))
                    : TemporalDate.fromString(el))
                .toList();
    final listOfAwsDateTime = json['listOfAWSDateTime'] == null
        ? null
        : (json['listOfAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDateTime.fromString(el))
            .toList();
    final listOfRequiredAwsDateTime = json['listOfRequiredAWSDateTime'] == null
        ? null
        : (json['listOfRequiredAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListModel',
                    'listOfRequiredAwsDateTime',
                  ))
                : TemporalDateTime.fromString(el))
            .toList();
    final requiredListOfAwsDateTime = json['requiredListOfAWSDateTime'] == null
        ? null
        : (json['requiredListOfAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDateTime.fromString(el))
            .toList();
    final requiredListOfRequiredAwsDateTime =
        json['requiredListOfRequiredAWSDateTime'] == null
            ? null
            : (json['requiredListOfRequiredAWSDateTime'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'requiredListOfRequiredAwsDateTime',
                      ))
                    : TemporalDateTime.fromString(el))
                .toList();
    final listOfAwsTime = json['listOfAWSTime'] == null
        ? null
        : (json['listOfAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalTime.fromString(el))
            .toList();
    final listOfRequiredAwsTime = json['listOfRequiredAWSTime'] == null
        ? null
        : (json['listOfRequiredAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListModel',
                    'listOfRequiredAwsTime',
                  ))
                : TemporalTime.fromString(el))
            .toList();
    final requiredListOfAwsTime = json['requiredListOfAWSTime'] == null
        ? null
        : (json['requiredListOfAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalTime.fromString(el))
            .toList();
    final requiredListOfRequiredAwsTime =
        json['requiredListOfRequiredAWSTime'] == null
            ? null
            : (json['requiredListOfRequiredAWSTime'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'requiredListOfRequiredAwsTime',
                      ))
                    : TemporalTime.fromString(el))
                .toList();
    final listOfAwsTimestamp = json['listOfAWSTimestamp'] == null
        ? null
        : (json['listOfAWSTimestamp'] as List<Object?>)
            .cast<int?>()
            .map((el) => el == null ? null : TemporalTimestamp.fromSeconds(el))
            .toList();
    final listOfRequiredAwsTimestamp =
        json['listOfRequiredAWSTimestamp'] == null
            ? null
            : (json['listOfRequiredAWSTimestamp'] as List<Object?>)
                .cast<int?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'listOfRequiredAwsTimestamp',
                      ))
                    : TemporalTimestamp.fromSeconds(el))
                .toList();
    final requiredListOfAwsTimestamp = json['requiredListOfAWSTimestamp'] ==
            null
        ? null
        : (json['requiredListOfAWSTimestamp'] as List<Object?>)
            .cast<int?>()
            .map((el) => el == null ? null : TemporalTimestamp.fromSeconds(el))
            .toList();
    final requiredListOfRequiredAwsTimestamp =
        json['requiredListOfRequiredAWSTimestamp'] == null
            ? null
            : (json['requiredListOfRequiredAWSTimestamp'] as List<Object?>)
                .cast<int?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'requiredListOfRequiredAwsTimestamp',
                      ))
                    : TemporalTimestamp.fromSeconds(el))
                .toList();
    final listOfAwsEmail = json['listOfAWSEmail'] == null
        ? null
        : (json['listOfAWSEmail'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredAwsEmail = json['listOfRequiredAWSEmail'] == null
        ? null
        : (json['listOfRequiredAWSEmail'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredAwsEmail',
                )))
            .toList();
    final requiredListOfAwsEmail = json['requiredListOfAWSEmail'] == null
        ? null
        : (json['requiredListOfAWSEmail'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredAwsEmail =
        json['requiredListOfRequiredAWSEmail'] == null
            ? null
            : (json['requiredListOfRequiredAWSEmail'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredAwsEmail',
                    )))
                .toList();
    final listOfAwsjson = json['listOfAWSJSON'] == null
        ? null
        : (json['listOfAWSJSON'] as List<Object?>).cast<Object?>().toList();
    final listOfRequiredAwsjson = json['listOfRequiredAWSJSON'] == null
        ? null
        : (json['listOfRequiredAWSJSON'] as List<Object?>)
            .cast<Object?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredAwsjson',
                )))
            .toList();
    final requiredListOfAwsjson = json['requiredListOfAWSJSON'] == null
        ? null
        : (json['requiredListOfAWSJSON'] as List<Object?>)
            .cast<Object?>()
            .toList();
    final requiredListOfRequiredAwsjson =
        json['requiredListOfRequiredAWSJSON'] == null
            ? null
            : (json['requiredListOfRequiredAWSJSON'] as List<Object?>)
                .cast<Object?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredAwsjson',
                    )))
                .toList();
    final listOfAwsPhone = json['listOfAWSPhone'] == null
        ? null
        : (json['listOfAWSPhone'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredAwsPhone = json['listOfRequiredAWSPhone'] == null
        ? null
        : (json['listOfRequiredAWSPhone'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredAwsPhone',
                )))
            .toList();
    final requiredListOfAwsPhone = json['requiredListOfAWSPhone'] == null
        ? null
        : (json['requiredListOfAWSPhone'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredAwsPhone =
        json['requiredListOfRequiredAWSPhone'] == null
            ? null
            : (json['requiredListOfRequiredAWSPhone'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredAwsPhone',
                    )))
                .toList();
    final listOfAwsUrl = json['listOfAWSUrl'] == null
        ? null
        : (json['listOfAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : Uri.parse(el))
            .toList();
    final listOfRequiredAwsUrl = json['listOfRequiredAWSUrl'] == null
        ? null
        : (json['listOfRequiredAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListModel',
                    'listOfRequiredAwsUrl',
                  ))
                : Uri.parse(el))
            .toList();
    final requiredListOfAwsUrl = json['requiredListOfAWSUrl'] == null
        ? null
        : (json['requiredListOfAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : Uri.parse(el))
            .toList();
    final requiredListOfRequiredAwsUrl =
        json['requiredListOfRequiredAWSUrl'] == null
            ? null
            : (json['requiredListOfRequiredAWSUrl'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'requiredListOfRequiredAwsUrl',
                      ))
                    : Uri.parse(el))
                .toList();
    final listOfAwsIpAddress = json['listOfAWSIpAddress'] == null
        ? null
        : (json['listOfAWSIpAddress'] as List<Object?>)
            .cast<String?>()
            .toList();
    final listOfRequiredAwsIpAddress =
        json['listOfRequiredAWSIpAddress'] == null
            ? null
            : (json['listOfRequiredAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'listOfRequiredAwsIpAddress',
                    )))
                .toList();
    final requiredListOfAwsIpAddress =
        json['requiredListOfAWSIpAddress'] == null
            ? null
            : (json['requiredListOfAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .toList();
    final requiredListOfRequiredAwsIpAddress =
        json['requiredListOfRequiredAWSIpAddress'] == null
            ? null
            : (json['requiredListOfRequiredAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredAwsIpAddress',
                    )))
                .toList();
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialScalarListModel(
      id: id,
      listOfString: listOfString,
      listOfRequiredString: listOfRequiredString,
      requiredListOfString: requiredListOfString,
      requiredListOfRequiredString: requiredListOfRequiredString,
      listOfInteger: listOfInteger,
      listOfRequiredInteger: listOfRequiredInteger,
      requiredListOfInteger: requiredListOfInteger,
      requiredListOfRequiredInteger: requiredListOfRequiredInteger,
      listOfFloat: listOfFloat,
      listOfRequiredFloat: listOfRequiredFloat,
      requiredListOfFloat: requiredListOfFloat,
      requiredListOfRequiredFloat: requiredListOfRequiredFloat,
      listOfBoolean: listOfBoolean,
      listOfRequiredBoolean: listOfRequiredBoolean,
      requiredListOfBoolean: requiredListOfBoolean,
      requiredListOfRequiredBoolean: requiredListOfRequiredBoolean,
      listOfAwsDate: listOfAwsDate,
      listOfRequiredAwsDate: listOfRequiredAwsDate,
      requiredListOfAwsDate: requiredListOfAwsDate,
      requiredListOfRequiredAwsDate: requiredListOfRequiredAwsDate,
      listOfAwsDateTime: listOfAwsDateTime,
      listOfRequiredAwsDateTime: listOfRequiredAwsDateTime,
      requiredListOfAwsDateTime: requiredListOfAwsDateTime,
      requiredListOfRequiredAwsDateTime: requiredListOfRequiredAwsDateTime,
      listOfAwsTime: listOfAwsTime,
      listOfRequiredAwsTime: listOfRequiredAwsTime,
      requiredListOfAwsTime: requiredListOfAwsTime,
      requiredListOfRequiredAwsTime: requiredListOfRequiredAwsTime,
      listOfAwsTimestamp: listOfAwsTimestamp,
      listOfRequiredAwsTimestamp: listOfRequiredAwsTimestamp,
      requiredListOfAwsTimestamp: requiredListOfAwsTimestamp,
      requiredListOfRequiredAwsTimestamp: requiredListOfRequiredAwsTimestamp,
      listOfAwsEmail: listOfAwsEmail,
      listOfRequiredAwsEmail: listOfRequiredAwsEmail,
      requiredListOfAwsEmail: requiredListOfAwsEmail,
      requiredListOfRequiredAwsEmail: requiredListOfRequiredAwsEmail,
      listOfAwsjson: listOfAwsjson,
      listOfRequiredAwsjson: listOfRequiredAwsjson,
      requiredListOfAwsjson: requiredListOfAwsjson,
      requiredListOfRequiredAwsjson: requiredListOfRequiredAwsjson,
      listOfAwsPhone: listOfAwsPhone,
      listOfRequiredAwsPhone: listOfRequiredAwsPhone,
      requiredListOfAwsPhone: requiredListOfAwsPhone,
      requiredListOfRequiredAwsPhone: requiredListOfRequiredAwsPhone,
      listOfAwsUrl: listOfAwsUrl,
      listOfRequiredAwsUrl: listOfRequiredAwsUrl,
      requiredListOfAwsUrl: requiredListOfAwsUrl,
      requiredListOfRequiredAwsUrl: requiredListOfRequiredAwsUrl,
      listOfAwsIpAddress: listOfAwsIpAddress,
      listOfRequiredAwsIpAddress: listOfRequiredAwsIpAddress,
      requiredListOfAwsIpAddress: requiredListOfAwsIpAddress,
      requiredListOfRequiredAwsIpAddress: requiredListOfRequiredAwsIpAddress,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final List<String?>? listOfString;

  @override
  final List<String>? listOfRequiredString;

  @override
  final List<String?>? requiredListOfString;

  @override
  final List<String>? requiredListOfRequiredString;

  @override
  final List<int?>? listOfInteger;

  @override
  final List<int>? listOfRequiredInteger;

  @override
  final List<int?>? requiredListOfInteger;

  @override
  final List<int>? requiredListOfRequiredInteger;

  @override
  final List<double?>? listOfFloat;

  @override
  final List<double>? listOfRequiredFloat;

  @override
  final List<double?>? requiredListOfFloat;

  @override
  final List<double>? requiredListOfRequiredFloat;

  @override
  final List<bool?>? listOfBoolean;

  @override
  final List<bool>? listOfRequiredBoolean;

  @override
  final List<bool?>? requiredListOfBoolean;

  @override
  final List<bool>? requiredListOfRequiredBoolean;

  @override
  final List<TemporalDate?>? listOfAwsDate;

  @override
  final List<TemporalDate>? listOfRequiredAwsDate;

  @override
  final List<TemporalDate?>? requiredListOfAwsDate;

  @override
  final List<TemporalDate>? requiredListOfRequiredAwsDate;

  @override
  final List<TemporalDateTime?>? listOfAwsDateTime;

  @override
  final List<TemporalDateTime>? listOfRequiredAwsDateTime;

  @override
  final List<TemporalDateTime?>? requiredListOfAwsDateTime;

  @override
  final List<TemporalDateTime>? requiredListOfRequiredAwsDateTime;

  @override
  final List<TemporalTime?>? listOfAwsTime;

  @override
  final List<TemporalTime>? listOfRequiredAwsTime;

  @override
  final List<TemporalTime?>? requiredListOfAwsTime;

  @override
  final List<TemporalTime>? requiredListOfRequiredAwsTime;

  @override
  final List<TemporalTimestamp?>? listOfAwsTimestamp;

  @override
  final List<TemporalTimestamp>? listOfRequiredAwsTimestamp;

  @override
  final List<TemporalTimestamp?>? requiredListOfAwsTimestamp;

  @override
  final List<TemporalTimestamp>? requiredListOfRequiredAwsTimestamp;

  @override
  final List<String?>? listOfAwsEmail;

  @override
  final List<String>? listOfRequiredAwsEmail;

  @override
  final List<String?>? requiredListOfAwsEmail;

  @override
  final List<String>? requiredListOfRequiredAwsEmail;

  @override
  final List<Object?>? listOfAwsjson;

  @override
  final List<Object>? listOfRequiredAwsjson;

  @override
  final List<Object?>? requiredListOfAwsjson;

  @override
  final List<Object>? requiredListOfRequiredAwsjson;

  @override
  final List<String?>? listOfAwsPhone;

  @override
  final List<String>? listOfRequiredAwsPhone;

  @override
  final List<String?>? requiredListOfAwsPhone;

  @override
  final List<String>? requiredListOfRequiredAwsPhone;

  @override
  final List<Uri?>? listOfAwsUrl;

  @override
  final List<Uri>? listOfRequiredAwsUrl;

  @override
  final List<Uri?>? requiredListOfAwsUrl;

  @override
  final List<Uri>? requiredListOfRequiredAwsUrl;

  @override
  final List<String?>? listOfAwsIpAddress;

  @override
  final List<String>? listOfRequiredAwsIpAddress;

  @override
  final List<String?>? requiredListOfAwsIpAddress;

  @override
  final List<String>? requiredListOfRequiredAwsIpAddress;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class ScalarListModel extends PartialScalarListModel
    implements Model<String, ScalarListModel> {
  factory ScalarListModel({
    String? id,
    List<String?>? listOfString,
    List<String>? listOfRequiredString,
    required List<String?> requiredListOfString,
    required List<String> requiredListOfRequiredString,
    List<int?>? listOfInteger,
    List<int>? listOfRequiredInteger,
    required List<int?> requiredListOfInteger,
    required List<int> requiredListOfRequiredInteger,
    List<double?>? listOfFloat,
    List<double>? listOfRequiredFloat,
    required List<double?> requiredListOfFloat,
    required List<double> requiredListOfRequiredFloat,
    List<bool?>? listOfBoolean,
    List<bool>? listOfRequiredBoolean,
    required List<bool?> requiredListOfBoolean,
    required List<bool> requiredListOfRequiredBoolean,
    List<TemporalDate?>? listOfAwsDate,
    List<TemporalDate>? listOfRequiredAwsDate,
    required List<TemporalDate?> requiredListOfAwsDate,
    required List<TemporalDate> requiredListOfRequiredAwsDate,
    List<TemporalDateTime?>? listOfAwsDateTime,
    List<TemporalDateTime>? listOfRequiredAwsDateTime,
    required List<TemporalDateTime?> requiredListOfAwsDateTime,
    required List<TemporalDateTime> requiredListOfRequiredAwsDateTime,
    List<TemporalTime?>? listOfAwsTime,
    List<TemporalTime>? listOfRequiredAwsTime,
    required List<TemporalTime?> requiredListOfAwsTime,
    required List<TemporalTime> requiredListOfRequiredAwsTime,
    List<TemporalTimestamp?>? listOfAwsTimestamp,
    List<TemporalTimestamp>? listOfRequiredAwsTimestamp,
    required List<TemporalTimestamp?> requiredListOfAwsTimestamp,
    required List<TemporalTimestamp> requiredListOfRequiredAwsTimestamp,
    List<String?>? listOfAwsEmail,
    List<String>? listOfRequiredAwsEmail,
    required List<String?> requiredListOfAwsEmail,
    required List<String> requiredListOfRequiredAwsEmail,
    List<Object?>? listOfAwsjson,
    List<Object>? listOfRequiredAwsjson,
    required List<Object?> requiredListOfAwsjson,
    required List<Object> requiredListOfRequiredAwsjson,
    List<String?>? listOfAwsPhone,
    List<String>? listOfRequiredAwsPhone,
    required List<String?> requiredListOfAwsPhone,
    required List<String> requiredListOfRequiredAwsPhone,
    List<Uri?>? listOfAwsUrl,
    List<Uri>? listOfRequiredAwsUrl,
    required List<Uri?> requiredListOfAwsUrl,
    required List<Uri> requiredListOfRequiredAwsUrl,
    List<String?>? listOfAwsIpAddress,
    List<String>? listOfRequiredAwsIpAddress,
    required List<String?> requiredListOfAwsIpAddress,
    required List<String> requiredListOfRequiredAwsIpAddress,
  }) = _ScalarListModel;

  const ScalarListModel._() : super._();

  factory ScalarListModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'id',
          ))
        : (json['id'] as String);
    final listOfString = json['listOfString'] == null
        ? null
        : (json['listOfString'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredString = json['listOfRequiredString'] == null
        ? null
        : (json['listOfRequiredString'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredString',
                )))
            .toList();
    final requiredListOfString = json['requiredListOfString'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfString',
          ))
        : (json['requiredListOfString'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredString =
        json['requiredListOfRequiredString'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredString',
              ))
            : (json['requiredListOfRequiredString'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredString',
                    )))
                .toList();
    final listOfInteger = json['listOfInteger'] == null
        ? null
        : (json['listOfInteger'] as List<Object?>).cast<int?>().toList();
    final listOfRequiredInteger = json['listOfRequiredInteger'] == null
        ? null
        : (json['listOfRequiredInteger'] as List<Object?>)
            .cast<int?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredInteger',
                )))
            .toList();
    final requiredListOfInteger = json['requiredListOfInteger'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfInteger',
          ))
        : (json['requiredListOfInteger'] as List<Object?>)
            .cast<int?>()
            .toList();
    final requiredListOfRequiredInteger =
        json['requiredListOfRequiredInteger'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredInteger',
              ))
            : (json['requiredListOfRequiredInteger'] as List<Object?>)
                .cast<int?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredInteger',
                    )))
                .toList();
    final listOfFloat = json['listOfFloat'] == null
        ? null
        : (json['listOfFloat'] as List<Object?>).cast<double?>().toList();
    final listOfRequiredFloat = json['listOfRequiredFloat'] == null
        ? null
        : (json['listOfRequiredFloat'] as List<Object?>)
            .cast<double?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredFloat',
                )))
            .toList();
    final requiredListOfFloat = json['requiredListOfFloat'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfFloat',
          ))
        : (json['requiredListOfFloat'] as List<Object?>)
            .cast<double?>()
            .toList();
    final requiredListOfRequiredFloat =
        json['requiredListOfRequiredFloat'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredFloat',
              ))
            : (json['requiredListOfRequiredFloat'] as List<Object?>)
                .cast<double?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredFloat',
                    )))
                .toList();
    final listOfBoolean = json['listOfBoolean'] == null
        ? null
        : (json['listOfBoolean'] as List<Object?>).cast<bool?>().toList();
    final listOfRequiredBoolean = json['listOfRequiredBoolean'] == null
        ? null
        : (json['listOfRequiredBoolean'] as List<Object?>)
            .cast<bool?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredBoolean',
                )))
            .toList();
    final requiredListOfBoolean = json['requiredListOfBoolean'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfBoolean',
          ))
        : (json['requiredListOfBoolean'] as List<Object?>)
            .cast<bool?>()
            .toList();
    final requiredListOfRequiredBoolean =
        json['requiredListOfRequiredBoolean'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredBoolean',
              ))
            : (json['requiredListOfRequiredBoolean'] as List<Object?>)
                .cast<bool?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredBoolean',
                    )))
                .toList();
    final listOfAwsDate = json['listOfAWSDate'] == null
        ? null
        : (json['listOfAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDate.fromString(el))
            .toList();
    final listOfRequiredAwsDate = json['listOfRequiredAWSDate'] == null
        ? null
        : (json['listOfRequiredAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListModel',
                    'listOfRequiredAwsDate',
                  ))
                : TemporalDate.fromString(el))
            .toList();
    final requiredListOfAwsDate = json['requiredListOfAWSDate'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsDate',
          ))
        : (json['requiredListOfAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDate.fromString(el))
            .toList();
    final requiredListOfRequiredAwsDate =
        json['requiredListOfRequiredAWSDate'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsDate',
              ))
            : (json['requiredListOfRequiredAWSDate'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'requiredListOfRequiredAwsDate',
                      ))
                    : TemporalDate.fromString(el))
                .toList();
    final listOfAwsDateTime = json['listOfAWSDateTime'] == null
        ? null
        : (json['listOfAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDateTime.fromString(el))
            .toList();
    final listOfRequiredAwsDateTime = json['listOfRequiredAWSDateTime'] == null
        ? null
        : (json['listOfRequiredAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListModel',
                    'listOfRequiredAwsDateTime',
                  ))
                : TemporalDateTime.fromString(el))
            .toList();
    final requiredListOfAwsDateTime = json['requiredListOfAWSDateTime'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsDateTime',
          ))
        : (json['requiredListOfAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDateTime.fromString(el))
            .toList();
    final requiredListOfRequiredAwsDateTime =
        json['requiredListOfRequiredAWSDateTime'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsDateTime',
              ))
            : (json['requiredListOfRequiredAWSDateTime'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'requiredListOfRequiredAwsDateTime',
                      ))
                    : TemporalDateTime.fromString(el))
                .toList();
    final listOfAwsTime = json['listOfAWSTime'] == null
        ? null
        : (json['listOfAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalTime.fromString(el))
            .toList();
    final listOfRequiredAwsTime = json['listOfRequiredAWSTime'] == null
        ? null
        : (json['listOfRequiredAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListModel',
                    'listOfRequiredAwsTime',
                  ))
                : TemporalTime.fromString(el))
            .toList();
    final requiredListOfAwsTime = json['requiredListOfAWSTime'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsTime',
          ))
        : (json['requiredListOfAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalTime.fromString(el))
            .toList();
    final requiredListOfRequiredAwsTime =
        json['requiredListOfRequiredAWSTime'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsTime',
              ))
            : (json['requiredListOfRequiredAWSTime'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'requiredListOfRequiredAwsTime',
                      ))
                    : TemporalTime.fromString(el))
                .toList();
    final listOfAwsTimestamp = json['listOfAWSTimestamp'] == null
        ? null
        : (json['listOfAWSTimestamp'] as List<Object?>)
            .cast<int?>()
            .map((el) => el == null ? null : TemporalTimestamp.fromSeconds(el))
            .toList();
    final listOfRequiredAwsTimestamp =
        json['listOfRequiredAWSTimestamp'] == null
            ? null
            : (json['listOfRequiredAWSTimestamp'] as List<Object?>)
                .cast<int?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'listOfRequiredAwsTimestamp',
                      ))
                    : TemporalTimestamp.fromSeconds(el))
                .toList();
    final requiredListOfAwsTimestamp = json['requiredListOfAWSTimestamp'] ==
            null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsTimestamp',
          ))
        : (json['requiredListOfAWSTimestamp'] as List<Object?>)
            .cast<int?>()
            .map((el) => el == null ? null : TemporalTimestamp.fromSeconds(el))
            .toList();
    final requiredListOfRequiredAwsTimestamp =
        json['requiredListOfRequiredAWSTimestamp'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsTimestamp',
              ))
            : (json['requiredListOfRequiredAWSTimestamp'] as List<Object?>)
                .cast<int?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'requiredListOfRequiredAwsTimestamp',
                      ))
                    : TemporalTimestamp.fromSeconds(el))
                .toList();
    final listOfAwsEmail = json['listOfAWSEmail'] == null
        ? null
        : (json['listOfAWSEmail'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredAwsEmail = json['listOfRequiredAWSEmail'] == null
        ? null
        : (json['listOfRequiredAWSEmail'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredAwsEmail',
                )))
            .toList();
    final requiredListOfAwsEmail = json['requiredListOfAWSEmail'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsEmail',
          ))
        : (json['requiredListOfAWSEmail'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredAwsEmail =
        json['requiredListOfRequiredAWSEmail'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsEmail',
              ))
            : (json['requiredListOfRequiredAWSEmail'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredAwsEmail',
                    )))
                .toList();
    final listOfAwsjson = json['listOfAWSJSON'] == null
        ? null
        : (json['listOfAWSJSON'] as List<Object?>).cast<Object?>().toList();
    final listOfRequiredAwsjson = json['listOfRequiredAWSJSON'] == null
        ? null
        : (json['listOfRequiredAWSJSON'] as List<Object?>)
            .cast<Object?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredAwsjson',
                )))
            .toList();
    final requiredListOfAwsjson = json['requiredListOfAWSJSON'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsjson',
          ))
        : (json['requiredListOfAWSJSON'] as List<Object?>)
            .cast<Object?>()
            .toList();
    final requiredListOfRequiredAwsjson =
        json['requiredListOfRequiredAWSJSON'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsjson',
              ))
            : (json['requiredListOfRequiredAWSJSON'] as List<Object?>)
                .cast<Object?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredAwsjson',
                    )))
                .toList();
    final listOfAwsPhone = json['listOfAWSPhone'] == null
        ? null
        : (json['listOfAWSPhone'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredAwsPhone = json['listOfRequiredAWSPhone'] == null
        ? null
        : (json['listOfRequiredAWSPhone'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredAwsPhone',
                )))
            .toList();
    final requiredListOfAwsPhone = json['requiredListOfAWSPhone'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsPhone',
          ))
        : (json['requiredListOfAWSPhone'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredAwsPhone =
        json['requiredListOfRequiredAWSPhone'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsPhone',
              ))
            : (json['requiredListOfRequiredAWSPhone'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredAwsPhone',
                    )))
                .toList();
    final listOfAwsUrl = json['listOfAWSUrl'] == null
        ? null
        : (json['listOfAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : Uri.parse(el))
            .toList();
    final listOfRequiredAwsUrl = json['listOfRequiredAWSUrl'] == null
        ? null
        : (json['listOfRequiredAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListModel',
                    'listOfRequiredAwsUrl',
                  ))
                : Uri.parse(el))
            .toList();
    final requiredListOfAwsUrl = json['requiredListOfAWSUrl'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsUrl',
          ))
        : (json['requiredListOfAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : Uri.parse(el))
            .toList();
    final requiredListOfRequiredAwsUrl =
        json['requiredListOfRequiredAWSUrl'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsUrl',
              ))
            : (json['requiredListOfRequiredAWSUrl'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'requiredListOfRequiredAwsUrl',
                      ))
                    : Uri.parse(el))
                .toList();
    final listOfAwsIpAddress = json['listOfAWSIpAddress'] == null
        ? null
        : (json['listOfAWSIpAddress'] as List<Object?>)
            .cast<String?>()
            .toList();
    final listOfRequiredAwsIpAddress =
        json['listOfRequiredAWSIpAddress'] == null
            ? null
            : (json['listOfRequiredAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'listOfRequiredAwsIpAddress',
                    )))
                .toList();
    final requiredListOfAwsIpAddress =
        json['requiredListOfAWSIpAddress'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfAwsIpAddress',
              ))
            : (json['requiredListOfAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .toList();
    final requiredListOfRequiredAwsIpAddress =
        json['requiredListOfRequiredAWSIpAddress'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsIpAddress',
              ))
            : (json['requiredListOfRequiredAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredAwsIpAddress',
                    )))
                .toList();
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _ScalarListModel._(
      id: id,
      listOfString: listOfString,
      listOfRequiredString: listOfRequiredString,
      requiredListOfString: requiredListOfString,
      requiredListOfRequiredString: requiredListOfRequiredString,
      listOfInteger: listOfInteger,
      listOfRequiredInteger: listOfRequiredInteger,
      requiredListOfInteger: requiredListOfInteger,
      requiredListOfRequiredInteger: requiredListOfRequiredInteger,
      listOfFloat: listOfFloat,
      listOfRequiredFloat: listOfRequiredFloat,
      requiredListOfFloat: requiredListOfFloat,
      requiredListOfRequiredFloat: requiredListOfRequiredFloat,
      listOfBoolean: listOfBoolean,
      listOfRequiredBoolean: listOfRequiredBoolean,
      requiredListOfBoolean: requiredListOfBoolean,
      requiredListOfRequiredBoolean: requiredListOfRequiredBoolean,
      listOfAwsDate: listOfAwsDate,
      listOfRequiredAwsDate: listOfRequiredAwsDate,
      requiredListOfAwsDate: requiredListOfAwsDate,
      requiredListOfRequiredAwsDate: requiredListOfRequiredAwsDate,
      listOfAwsDateTime: listOfAwsDateTime,
      listOfRequiredAwsDateTime: listOfRequiredAwsDateTime,
      requiredListOfAwsDateTime: requiredListOfAwsDateTime,
      requiredListOfRequiredAwsDateTime: requiredListOfRequiredAwsDateTime,
      listOfAwsTime: listOfAwsTime,
      listOfRequiredAwsTime: listOfRequiredAwsTime,
      requiredListOfAwsTime: requiredListOfAwsTime,
      requiredListOfRequiredAwsTime: requiredListOfRequiredAwsTime,
      listOfAwsTimestamp: listOfAwsTimestamp,
      listOfRequiredAwsTimestamp: listOfRequiredAwsTimestamp,
      requiredListOfAwsTimestamp: requiredListOfAwsTimestamp,
      requiredListOfRequiredAwsTimestamp: requiredListOfRequiredAwsTimestamp,
      listOfAwsEmail: listOfAwsEmail,
      listOfRequiredAwsEmail: listOfRequiredAwsEmail,
      requiredListOfAwsEmail: requiredListOfAwsEmail,
      requiredListOfRequiredAwsEmail: requiredListOfRequiredAwsEmail,
      listOfAwsjson: listOfAwsjson,
      listOfRequiredAwsjson: listOfRequiredAwsjson,
      requiredListOfAwsjson: requiredListOfAwsjson,
      requiredListOfRequiredAwsjson: requiredListOfRequiredAwsjson,
      listOfAwsPhone: listOfAwsPhone,
      listOfRequiredAwsPhone: listOfRequiredAwsPhone,
      requiredListOfAwsPhone: requiredListOfAwsPhone,
      requiredListOfRequiredAwsPhone: requiredListOfRequiredAwsPhone,
      listOfAwsUrl: listOfAwsUrl,
      listOfRequiredAwsUrl: listOfRequiredAwsUrl,
      requiredListOfAwsUrl: requiredListOfAwsUrl,
      requiredListOfRequiredAwsUrl: requiredListOfRequiredAwsUrl,
      listOfAwsIpAddress: listOfAwsIpAddress,
      listOfRequiredAwsIpAddress: listOfRequiredAwsIpAddress,
      requiredListOfAwsIpAddress: requiredListOfAwsIpAddress,
      requiredListOfRequiredAwsIpAddress: requiredListOfRequiredAwsIpAddress,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const ScalarListModelType classType = ScalarListModelType();

  static const ScalarListModelQueryFields<String, ScalarListModel>
      _queryFields = ScalarListModelQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, ScalarListModel, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, ScalarListModel, String> get ID => $id;
  @override
  List<String?>? get listOfString;

  /// Query field for the [listOfString] field.
  QueryField<String, ScalarListModel, List<String?>?> get $listOfString =>
      _queryFields.$listOfString;

  /// Query field for the [listOfString] field.
  @Deprecated(r'Use $listOfString instead')
  QueryField<String, ScalarListModel, List<String?>?> get LIST_OF_STRING =>
      $listOfString;
  @override
  List<String>? get listOfRequiredString;

  /// Query field for the [listOfRequiredString] field.
  QueryField<String, ScalarListModel, List<String>?>
      get $listOfRequiredString => _queryFields.$listOfRequiredString;

  /// Query field for the [listOfRequiredString] field.
  @Deprecated(r'Use $listOfRequiredString instead')
  QueryField<String, ScalarListModel, List<String>?>
      get LIST_OF_REQUIRED_STRING => $listOfRequiredString;
  @override
  List<String?> get requiredListOfString;

  /// Query field for the [requiredListOfString] field.
  QueryField<String, ScalarListModel, List<String?>>
      get $requiredListOfString => _queryFields.$requiredListOfString;

  /// Query field for the [requiredListOfString] field.
  @Deprecated(r'Use $requiredListOfString instead')
  QueryField<String, ScalarListModel, List<String?>>
      get REQUIRED_LIST_OF_STRING => $requiredListOfString;
  @override
  List<String> get requiredListOfRequiredString;

  /// Query field for the [requiredListOfRequiredString] field.
  QueryField<String, ScalarListModel, List<String>>
      get $requiredListOfRequiredString =>
          _queryFields.$requiredListOfRequiredString;

  /// Query field for the [requiredListOfRequiredString] field.
  @Deprecated(r'Use $requiredListOfRequiredString instead')
  QueryField<String, ScalarListModel, List<String>>
      get REQUIRED_LIST_OF_REQUIRED_STRING => $requiredListOfRequiredString;
  @override
  List<int?>? get listOfInteger;

  /// Query field for the [listOfInteger] field.
  QueryField<String, ScalarListModel, List<int?>?> get $listOfInteger =>
      _queryFields.$listOfInteger;

  /// Query field for the [listOfInteger] field.
  @Deprecated(r'Use $listOfInteger instead')
  QueryField<String, ScalarListModel, List<int?>?> get LIST_OF_INTEGER =>
      $listOfInteger;
  @override
  List<int>? get listOfRequiredInteger;

  /// Query field for the [listOfRequiredInteger] field.
  QueryField<String, ScalarListModel, List<int>?> get $listOfRequiredInteger =>
      _queryFields.$listOfRequiredInteger;

  /// Query field for the [listOfRequiredInteger] field.
  @Deprecated(r'Use $listOfRequiredInteger instead')
  QueryField<String, ScalarListModel, List<int>?>
      get LIST_OF_REQUIRED_INTEGER => $listOfRequiredInteger;
  @override
  List<int?> get requiredListOfInteger;

  /// Query field for the [requiredListOfInteger] field.
  QueryField<String, ScalarListModel, List<int?>> get $requiredListOfInteger =>
      _queryFields.$requiredListOfInteger;

  /// Query field for the [requiredListOfInteger] field.
  @Deprecated(r'Use $requiredListOfInteger instead')
  QueryField<String, ScalarListModel, List<int?>>
      get REQUIRED_LIST_OF_INTEGER => $requiredListOfInteger;
  @override
  List<int> get requiredListOfRequiredInteger;

  /// Query field for the [requiredListOfRequiredInteger] field.
  QueryField<String, ScalarListModel, List<int>>
      get $requiredListOfRequiredInteger =>
          _queryFields.$requiredListOfRequiredInteger;

  /// Query field for the [requiredListOfRequiredInteger] field.
  @Deprecated(r'Use $requiredListOfRequiredInteger instead')
  QueryField<String, ScalarListModel, List<int>>
      get REQUIRED_LIST_OF_REQUIRED_INTEGER => $requiredListOfRequiredInteger;
  @override
  List<double?>? get listOfFloat;

  /// Query field for the [listOfFloat] field.
  QueryField<String, ScalarListModel, List<double?>?> get $listOfFloat =>
      _queryFields.$listOfFloat;

  /// Query field for the [listOfFloat] field.
  @Deprecated(r'Use $listOfFloat instead')
  QueryField<String, ScalarListModel, List<double?>?> get LIST_OF_FLOAT =>
      $listOfFloat;
  @override
  List<double>? get listOfRequiredFloat;

  /// Query field for the [listOfRequiredFloat] field.
  QueryField<String, ScalarListModel, List<double>?> get $listOfRequiredFloat =>
      _queryFields.$listOfRequiredFloat;

  /// Query field for the [listOfRequiredFloat] field.
  @Deprecated(r'Use $listOfRequiredFloat instead')
  QueryField<String, ScalarListModel, List<double>?>
      get LIST_OF_REQUIRED_FLOAT => $listOfRequiredFloat;
  @override
  List<double?> get requiredListOfFloat;

  /// Query field for the [requiredListOfFloat] field.
  QueryField<String, ScalarListModel, List<double?>> get $requiredListOfFloat =>
      _queryFields.$requiredListOfFloat;

  /// Query field for the [requiredListOfFloat] field.
  @Deprecated(r'Use $requiredListOfFloat instead')
  QueryField<String, ScalarListModel, List<double?>>
      get REQUIRED_LIST_OF_FLOAT => $requiredListOfFloat;
  @override
  List<double> get requiredListOfRequiredFloat;

  /// Query field for the [requiredListOfRequiredFloat] field.
  QueryField<String, ScalarListModel, List<double>>
      get $requiredListOfRequiredFloat =>
          _queryFields.$requiredListOfRequiredFloat;

  /// Query field for the [requiredListOfRequiredFloat] field.
  @Deprecated(r'Use $requiredListOfRequiredFloat instead')
  QueryField<String, ScalarListModel, List<double>>
      get REQUIRED_LIST_OF_REQUIRED_FLOAT => $requiredListOfRequiredFloat;
  @override
  List<bool?>? get listOfBoolean;

  /// Query field for the [listOfBoolean] field.
  QueryField<String, ScalarListModel, List<bool?>?> get $listOfBoolean =>
      _queryFields.$listOfBoolean;

  /// Query field for the [listOfBoolean] field.
  @Deprecated(r'Use $listOfBoolean instead')
  QueryField<String, ScalarListModel, List<bool?>?> get LIST_OF_BOOLEAN =>
      $listOfBoolean;
  @override
  List<bool>? get listOfRequiredBoolean;

  /// Query field for the [listOfRequiredBoolean] field.
  QueryField<String, ScalarListModel, List<bool>?> get $listOfRequiredBoolean =>
      _queryFields.$listOfRequiredBoolean;

  /// Query field for the [listOfRequiredBoolean] field.
  @Deprecated(r'Use $listOfRequiredBoolean instead')
  QueryField<String, ScalarListModel, List<bool>?>
      get LIST_OF_REQUIRED_BOOLEAN => $listOfRequiredBoolean;
  @override
  List<bool?> get requiredListOfBoolean;

  /// Query field for the [requiredListOfBoolean] field.
  QueryField<String, ScalarListModel, List<bool?>> get $requiredListOfBoolean =>
      _queryFields.$requiredListOfBoolean;

  /// Query field for the [requiredListOfBoolean] field.
  @Deprecated(r'Use $requiredListOfBoolean instead')
  QueryField<String, ScalarListModel, List<bool?>>
      get REQUIRED_LIST_OF_BOOLEAN => $requiredListOfBoolean;
  @override
  List<bool> get requiredListOfRequiredBoolean;

  /// Query field for the [requiredListOfRequiredBoolean] field.
  QueryField<String, ScalarListModel, List<bool>>
      get $requiredListOfRequiredBoolean =>
          _queryFields.$requiredListOfRequiredBoolean;

  /// Query field for the [requiredListOfRequiredBoolean] field.
  @Deprecated(r'Use $requiredListOfRequiredBoolean instead')
  QueryField<String, ScalarListModel, List<bool>>
      get REQUIRED_LIST_OF_REQUIRED_BOOLEAN => $requiredListOfRequiredBoolean;
  @override
  List<TemporalDate?>? get listOfAwsDate;

  /// Query field for the [listOfAwsDate] field.
  QueryField<String, ScalarListModel, List<TemporalDate?>?>
      get $listOfAwsDate => _queryFields.$listOfAwsDate;

  /// Query field for the [listOfAwsDate] field.
  @Deprecated(r'Use $listOfAwsDate instead')
  QueryField<String, ScalarListModel, List<TemporalDate?>?>
      get LIST_OF_AWS_DATE => $listOfAwsDate;
  @override
  List<TemporalDate>? get listOfRequiredAwsDate;

  /// Query field for the [listOfRequiredAwsDate] field.
  QueryField<String, ScalarListModel, List<TemporalDate>?>
      get $listOfRequiredAwsDate => _queryFields.$listOfRequiredAwsDate;

  /// Query field for the [listOfRequiredAwsDate] field.
  @Deprecated(r'Use $listOfRequiredAwsDate instead')
  QueryField<String, ScalarListModel, List<TemporalDate>?>
      get LIST_OF_REQUIRED_AWS_DATE => $listOfRequiredAwsDate;
  @override
  List<TemporalDate?> get requiredListOfAwsDate;

  /// Query field for the [requiredListOfAwsDate] field.
  QueryField<String, ScalarListModel, List<TemporalDate?>>
      get $requiredListOfAwsDate => _queryFields.$requiredListOfAwsDate;

  /// Query field for the [requiredListOfAwsDate] field.
  @Deprecated(r'Use $requiredListOfAwsDate instead')
  QueryField<String, ScalarListModel, List<TemporalDate?>>
      get REQUIRED_LIST_OF_AWS_DATE => $requiredListOfAwsDate;
  @override
  List<TemporalDate> get requiredListOfRequiredAwsDate;

  /// Query field for the [requiredListOfRequiredAwsDate] field.
  QueryField<String, ScalarListModel, List<TemporalDate>>
      get $requiredListOfRequiredAwsDate =>
          _queryFields.$requiredListOfRequiredAwsDate;

  /// Query field for the [requiredListOfRequiredAwsDate] field.
  @Deprecated(r'Use $requiredListOfRequiredAwsDate instead')
  QueryField<String, ScalarListModel, List<TemporalDate>>
      get REQUIRED_LIST_OF_REQUIRED_AWS_DATE => $requiredListOfRequiredAwsDate;
  @override
  List<TemporalDateTime?>? get listOfAwsDateTime;

  /// Query field for the [listOfAwsDateTime] field.
  QueryField<String, ScalarListModel, List<TemporalDateTime?>?>
      get $listOfAwsDateTime => _queryFields.$listOfAwsDateTime;

  /// Query field for the [listOfAwsDateTime] field.
  @Deprecated(r'Use $listOfAwsDateTime instead')
  QueryField<String, ScalarListModel, List<TemporalDateTime?>?>
      get LIST_OF_AWS_DATE_TIME => $listOfAwsDateTime;
  @override
  List<TemporalDateTime>? get listOfRequiredAwsDateTime;

  /// Query field for the [listOfRequiredAwsDateTime] field.
  QueryField<String, ScalarListModel, List<TemporalDateTime>?>
      get $listOfRequiredAwsDateTime => _queryFields.$listOfRequiredAwsDateTime;

  /// Query field for the [listOfRequiredAwsDateTime] field.
  @Deprecated(r'Use $listOfRequiredAwsDateTime instead')
  QueryField<String, ScalarListModel, List<TemporalDateTime>?>
      get LIST_OF_REQUIRED_AWS_DATE_TIME => $listOfRequiredAwsDateTime;
  @override
  List<TemporalDateTime?> get requiredListOfAwsDateTime;

  /// Query field for the [requiredListOfAwsDateTime] field.
  QueryField<String, ScalarListModel, List<TemporalDateTime?>>
      get $requiredListOfAwsDateTime => _queryFields.$requiredListOfAwsDateTime;

  /// Query field for the [requiredListOfAwsDateTime] field.
  @Deprecated(r'Use $requiredListOfAwsDateTime instead')
  QueryField<String, ScalarListModel, List<TemporalDateTime?>>
      get REQUIRED_LIST_OF_AWS_DATE_TIME => $requiredListOfAwsDateTime;
  @override
  List<TemporalDateTime> get requiredListOfRequiredAwsDateTime;

  /// Query field for the [requiredListOfRequiredAwsDateTime] field.
  QueryField<String, ScalarListModel, List<TemporalDateTime>>
      get $requiredListOfRequiredAwsDateTime =>
          _queryFields.$requiredListOfRequiredAwsDateTime;

  /// Query field for the [requiredListOfRequiredAwsDateTime] field.
  @Deprecated(r'Use $requiredListOfRequiredAwsDateTime instead')
  QueryField<String, ScalarListModel, List<TemporalDateTime>>
      get REQUIRED_LIST_OF_REQUIRED_AWS_DATE_TIME =>
          $requiredListOfRequiredAwsDateTime;
  @override
  List<TemporalTime?>? get listOfAwsTime;

  /// Query field for the [listOfAwsTime] field.
  QueryField<String, ScalarListModel, List<TemporalTime?>?>
      get $listOfAwsTime => _queryFields.$listOfAwsTime;

  /// Query field for the [listOfAwsTime] field.
  @Deprecated(r'Use $listOfAwsTime instead')
  QueryField<String, ScalarListModel, List<TemporalTime?>?>
      get LIST_OF_AWS_TIME => $listOfAwsTime;
  @override
  List<TemporalTime>? get listOfRequiredAwsTime;

  /// Query field for the [listOfRequiredAwsTime] field.
  QueryField<String, ScalarListModel, List<TemporalTime>?>
      get $listOfRequiredAwsTime => _queryFields.$listOfRequiredAwsTime;

  /// Query field for the [listOfRequiredAwsTime] field.
  @Deprecated(r'Use $listOfRequiredAwsTime instead')
  QueryField<String, ScalarListModel, List<TemporalTime>?>
      get LIST_OF_REQUIRED_AWS_TIME => $listOfRequiredAwsTime;
  @override
  List<TemporalTime?> get requiredListOfAwsTime;

  /// Query field for the [requiredListOfAwsTime] field.
  QueryField<String, ScalarListModel, List<TemporalTime?>>
      get $requiredListOfAwsTime => _queryFields.$requiredListOfAwsTime;

  /// Query field for the [requiredListOfAwsTime] field.
  @Deprecated(r'Use $requiredListOfAwsTime instead')
  QueryField<String, ScalarListModel, List<TemporalTime?>>
      get REQUIRED_LIST_OF_AWS_TIME => $requiredListOfAwsTime;
  @override
  List<TemporalTime> get requiredListOfRequiredAwsTime;

  /// Query field for the [requiredListOfRequiredAwsTime] field.
  QueryField<String, ScalarListModel, List<TemporalTime>>
      get $requiredListOfRequiredAwsTime =>
          _queryFields.$requiredListOfRequiredAwsTime;

  /// Query field for the [requiredListOfRequiredAwsTime] field.
  @Deprecated(r'Use $requiredListOfRequiredAwsTime instead')
  QueryField<String, ScalarListModel, List<TemporalTime>>
      get REQUIRED_LIST_OF_REQUIRED_AWS_TIME => $requiredListOfRequiredAwsTime;
  @override
  List<TemporalTimestamp?>? get listOfAwsTimestamp;

  /// Query field for the [listOfAwsTimestamp] field.
  QueryField<String, ScalarListModel, List<TemporalTimestamp?>?>
      get $listOfAwsTimestamp => _queryFields.$listOfAwsTimestamp;

  /// Query field for the [listOfAwsTimestamp] field.
  @Deprecated(r'Use $listOfAwsTimestamp instead')
  QueryField<String, ScalarListModel, List<TemporalTimestamp?>?>
      get LIST_OF_AWS_TIMESTAMP => $listOfAwsTimestamp;
  @override
  List<TemporalTimestamp>? get listOfRequiredAwsTimestamp;

  /// Query field for the [listOfRequiredAwsTimestamp] field.
  QueryField<String, ScalarListModel, List<TemporalTimestamp>?>
      get $listOfRequiredAwsTimestamp =>
          _queryFields.$listOfRequiredAwsTimestamp;

  /// Query field for the [listOfRequiredAwsTimestamp] field.
  @Deprecated(r'Use $listOfRequiredAwsTimestamp instead')
  QueryField<String, ScalarListModel, List<TemporalTimestamp>?>
      get LIST_OF_REQUIRED_AWS_TIMESTAMP => $listOfRequiredAwsTimestamp;
  @override
  List<TemporalTimestamp?> get requiredListOfAwsTimestamp;

  /// Query field for the [requiredListOfAwsTimestamp] field.
  QueryField<String, ScalarListModel, List<TemporalTimestamp?>>
      get $requiredListOfAwsTimestamp =>
          _queryFields.$requiredListOfAwsTimestamp;

  /// Query field for the [requiredListOfAwsTimestamp] field.
  @Deprecated(r'Use $requiredListOfAwsTimestamp instead')
  QueryField<String, ScalarListModel, List<TemporalTimestamp?>>
      get REQUIRED_LIST_OF_AWS_TIMESTAMP => $requiredListOfAwsTimestamp;
  @override
  List<TemporalTimestamp> get requiredListOfRequiredAwsTimestamp;

  /// Query field for the [requiredListOfRequiredAwsTimestamp] field.
  QueryField<String, ScalarListModel, List<TemporalTimestamp>>
      get $requiredListOfRequiredAwsTimestamp =>
          _queryFields.$requiredListOfRequiredAwsTimestamp;

  /// Query field for the [requiredListOfRequiredAwsTimestamp] field.
  @Deprecated(r'Use $requiredListOfRequiredAwsTimestamp instead')
  QueryField<String, ScalarListModel, List<TemporalTimestamp>>
      get REQUIRED_LIST_OF_REQUIRED_AWS_TIMESTAMP =>
          $requiredListOfRequiredAwsTimestamp;
  @override
  List<String?>? get listOfAwsEmail;

  /// Query field for the [listOfAwsEmail] field.
  QueryField<String, ScalarListModel, List<String?>?> get $listOfAwsEmail =>
      _queryFields.$listOfAwsEmail;

  /// Query field for the [listOfAwsEmail] field.
  @Deprecated(r'Use $listOfAwsEmail instead')
  QueryField<String, ScalarListModel, List<String?>?> get LIST_OF_AWS_EMAIL =>
      $listOfAwsEmail;
  @override
  List<String>? get listOfRequiredAwsEmail;

  /// Query field for the [listOfRequiredAwsEmail] field.
  QueryField<String, ScalarListModel, List<String>?>
      get $listOfRequiredAwsEmail => _queryFields.$listOfRequiredAwsEmail;

  /// Query field for the [listOfRequiredAwsEmail] field.
  @Deprecated(r'Use $listOfRequiredAwsEmail instead')
  QueryField<String, ScalarListModel, List<String>?>
      get LIST_OF_REQUIRED_AWS_EMAIL => $listOfRequiredAwsEmail;
  @override
  List<String?> get requiredListOfAwsEmail;

  /// Query field for the [requiredListOfAwsEmail] field.
  QueryField<String, ScalarListModel, List<String?>>
      get $requiredListOfAwsEmail => _queryFields.$requiredListOfAwsEmail;

  /// Query field for the [requiredListOfAwsEmail] field.
  @Deprecated(r'Use $requiredListOfAwsEmail instead')
  QueryField<String, ScalarListModel, List<String?>>
      get REQUIRED_LIST_OF_AWS_EMAIL => $requiredListOfAwsEmail;
  @override
  List<String> get requiredListOfRequiredAwsEmail;

  /// Query field for the [requiredListOfRequiredAwsEmail] field.
  QueryField<String, ScalarListModel, List<String>>
      get $requiredListOfRequiredAwsEmail =>
          _queryFields.$requiredListOfRequiredAwsEmail;

  /// Query field for the [requiredListOfRequiredAwsEmail] field.
  @Deprecated(r'Use $requiredListOfRequiredAwsEmail instead')
  QueryField<String, ScalarListModel, List<String>>
      get REQUIRED_LIST_OF_REQUIRED_AWS_EMAIL =>
          $requiredListOfRequiredAwsEmail;
  @override
  List<Object?>? get listOfAwsjson;

  /// Query field for the [listOfAwsjson] field.
  QueryField<String, ScalarListModel, List<Object?>?> get $listOfAwsjson =>
      _queryFields.$listOfAwsjson;

  /// Query field for the [listOfAwsjson] field.
  @Deprecated(r'Use $listOfAwsjson instead')
  QueryField<String, ScalarListModel, List<Object?>?> get LIST_OF_AWSJSON =>
      $listOfAwsjson;
  @override
  List<Object>? get listOfRequiredAwsjson;

  /// Query field for the [listOfRequiredAwsjson] field.
  QueryField<String, ScalarListModel, List<Object>?>
      get $listOfRequiredAwsjson => _queryFields.$listOfRequiredAwsjson;

  /// Query field for the [listOfRequiredAwsjson] field.
  @Deprecated(r'Use $listOfRequiredAwsjson instead')
  QueryField<String, ScalarListModel, List<Object>?>
      get LIST_OF_REQUIRED_AWSJSON => $listOfRequiredAwsjson;
  @override
  List<Object?> get requiredListOfAwsjson;

  /// Query field for the [requiredListOfAwsjson] field.
  QueryField<String, ScalarListModel, List<Object?>>
      get $requiredListOfAwsjson => _queryFields.$requiredListOfAwsjson;

  /// Query field for the [requiredListOfAwsjson] field.
  @Deprecated(r'Use $requiredListOfAwsjson instead')
  QueryField<String, ScalarListModel, List<Object?>>
      get REQUIRED_LIST_OF_AWSJSON => $requiredListOfAwsjson;
  @override
  List<Object> get requiredListOfRequiredAwsjson;

  /// Query field for the [requiredListOfRequiredAwsjson] field.
  QueryField<String, ScalarListModel, List<Object>>
      get $requiredListOfRequiredAwsjson =>
          _queryFields.$requiredListOfRequiredAwsjson;

  /// Query field for the [requiredListOfRequiredAwsjson] field.
  @Deprecated(r'Use $requiredListOfRequiredAwsjson instead')
  QueryField<String, ScalarListModel, List<Object>>
      get REQUIRED_LIST_OF_REQUIRED_AWSJSON => $requiredListOfRequiredAwsjson;
  @override
  List<String?>? get listOfAwsPhone;

  /// Query field for the [listOfAwsPhone] field.
  QueryField<String, ScalarListModel, List<String?>?> get $listOfAwsPhone =>
      _queryFields.$listOfAwsPhone;

  /// Query field for the [listOfAwsPhone] field.
  @Deprecated(r'Use $listOfAwsPhone instead')
  QueryField<String, ScalarListModel, List<String?>?> get LIST_OF_AWS_PHONE =>
      $listOfAwsPhone;
  @override
  List<String>? get listOfRequiredAwsPhone;

  /// Query field for the [listOfRequiredAwsPhone] field.
  QueryField<String, ScalarListModel, List<String>?>
      get $listOfRequiredAwsPhone => _queryFields.$listOfRequiredAwsPhone;

  /// Query field for the [listOfRequiredAwsPhone] field.
  @Deprecated(r'Use $listOfRequiredAwsPhone instead')
  QueryField<String, ScalarListModel, List<String>?>
      get LIST_OF_REQUIRED_AWS_PHONE => $listOfRequiredAwsPhone;
  @override
  List<String?> get requiredListOfAwsPhone;

  /// Query field for the [requiredListOfAwsPhone] field.
  QueryField<String, ScalarListModel, List<String?>>
      get $requiredListOfAwsPhone => _queryFields.$requiredListOfAwsPhone;

  /// Query field for the [requiredListOfAwsPhone] field.
  @Deprecated(r'Use $requiredListOfAwsPhone instead')
  QueryField<String, ScalarListModel, List<String?>>
      get REQUIRED_LIST_OF_AWS_PHONE => $requiredListOfAwsPhone;
  @override
  List<String> get requiredListOfRequiredAwsPhone;

  /// Query field for the [requiredListOfRequiredAwsPhone] field.
  QueryField<String, ScalarListModel, List<String>>
      get $requiredListOfRequiredAwsPhone =>
          _queryFields.$requiredListOfRequiredAwsPhone;

  /// Query field for the [requiredListOfRequiredAwsPhone] field.
  @Deprecated(r'Use $requiredListOfRequiredAwsPhone instead')
  QueryField<String, ScalarListModel, List<String>>
      get REQUIRED_LIST_OF_REQUIRED_AWS_PHONE =>
          $requiredListOfRequiredAwsPhone;
  @override
  List<Uri?>? get listOfAwsUrl;

  /// Query field for the [listOfAwsUrl] field.
  QueryField<String, ScalarListModel, List<Uri?>?> get $listOfAwsUrl =>
      _queryFields.$listOfAwsUrl;

  /// Query field for the [listOfAwsUrl] field.
  @Deprecated(r'Use $listOfAwsUrl instead')
  QueryField<String, ScalarListModel, List<Uri?>?> get LIST_OF_AWS_URL =>
      $listOfAwsUrl;
  @override
  List<Uri>? get listOfRequiredAwsUrl;

  /// Query field for the [listOfRequiredAwsUrl] field.
  QueryField<String, ScalarListModel, List<Uri>?> get $listOfRequiredAwsUrl =>
      _queryFields.$listOfRequiredAwsUrl;

  /// Query field for the [listOfRequiredAwsUrl] field.
  @Deprecated(r'Use $listOfRequiredAwsUrl instead')
  QueryField<String, ScalarListModel, List<Uri>?>
      get LIST_OF_REQUIRED_AWS_URL => $listOfRequiredAwsUrl;
  @override
  List<Uri?> get requiredListOfAwsUrl;

  /// Query field for the [requiredListOfAwsUrl] field.
  QueryField<String, ScalarListModel, List<Uri?>> get $requiredListOfAwsUrl =>
      _queryFields.$requiredListOfAwsUrl;

  /// Query field for the [requiredListOfAwsUrl] field.
  @Deprecated(r'Use $requiredListOfAwsUrl instead')
  QueryField<String, ScalarListModel, List<Uri?>>
      get REQUIRED_LIST_OF_AWS_URL => $requiredListOfAwsUrl;
  @override
  List<Uri> get requiredListOfRequiredAwsUrl;

  /// Query field for the [requiredListOfRequiredAwsUrl] field.
  QueryField<String, ScalarListModel, List<Uri>>
      get $requiredListOfRequiredAwsUrl =>
          _queryFields.$requiredListOfRequiredAwsUrl;

  /// Query field for the [requiredListOfRequiredAwsUrl] field.
  @Deprecated(r'Use $requiredListOfRequiredAwsUrl instead')
  QueryField<String, ScalarListModel, List<Uri>>
      get REQUIRED_LIST_OF_REQUIRED_AWS_URL => $requiredListOfRequiredAwsUrl;
  @override
  List<String?>? get listOfAwsIpAddress;

  /// Query field for the [listOfAwsIpAddress] field.
  QueryField<String, ScalarListModel, List<String?>?> get $listOfAwsIpAddress =>
      _queryFields.$listOfAwsIpAddress;

  /// Query field for the [listOfAwsIpAddress] field.
  @Deprecated(r'Use $listOfAwsIpAddress instead')
  QueryField<String, ScalarListModel, List<String?>?>
      get LIST_OF_AWS_IP_ADDRESS => $listOfAwsIpAddress;
  @override
  List<String>? get listOfRequiredAwsIpAddress;

  /// Query field for the [listOfRequiredAwsIpAddress] field.
  QueryField<String, ScalarListModel, List<String>?>
      get $listOfRequiredAwsIpAddress =>
          _queryFields.$listOfRequiredAwsIpAddress;

  /// Query field for the [listOfRequiredAwsIpAddress] field.
  @Deprecated(r'Use $listOfRequiredAwsIpAddress instead')
  QueryField<String, ScalarListModel, List<String>?>
      get LIST_OF_REQUIRED_AWS_IP_ADDRESS => $listOfRequiredAwsIpAddress;
  @override
  List<String?> get requiredListOfAwsIpAddress;

  /// Query field for the [requiredListOfAwsIpAddress] field.
  QueryField<String, ScalarListModel, List<String?>>
      get $requiredListOfAwsIpAddress =>
          _queryFields.$requiredListOfAwsIpAddress;

  /// Query field for the [requiredListOfAwsIpAddress] field.
  @Deprecated(r'Use $requiredListOfAwsIpAddress instead')
  QueryField<String, ScalarListModel, List<String?>>
      get REQUIRED_LIST_OF_AWS_IP_ADDRESS => $requiredListOfAwsIpAddress;
  @override
  List<String> get requiredListOfRequiredAwsIpAddress;

  /// Query field for the [requiredListOfRequiredAwsIpAddress] field.
  QueryField<String, ScalarListModel, List<String>>
      get $requiredListOfRequiredAwsIpAddress =>
          _queryFields.$requiredListOfRequiredAwsIpAddress;

  /// Query field for the [requiredListOfRequiredAwsIpAddress] field.
  @Deprecated(r'Use $requiredListOfRequiredAwsIpAddress instead')
  QueryField<String, ScalarListModel, List<String>>
      get REQUIRED_LIST_OF_REQUIRED_AWS_IP_ADDRESS =>
          $requiredListOfRequiredAwsIpAddress;
  @override
  TemporalDateTime? get createdAt;
  @override
  TemporalDateTime? get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, ScalarListModel, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, ScalarListModel, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
}

class _ScalarListModel extends ScalarListModel {
  _ScalarListModel({
    String? id,
    this.listOfString,
    this.listOfRequiredString,
    required this.requiredListOfString,
    required this.requiredListOfRequiredString,
    this.listOfInteger,
    this.listOfRequiredInteger,
    required this.requiredListOfInteger,
    required this.requiredListOfRequiredInteger,
    this.listOfFloat,
    this.listOfRequiredFloat,
    required this.requiredListOfFloat,
    required this.requiredListOfRequiredFloat,
    this.listOfBoolean,
    this.listOfRequiredBoolean,
    required this.requiredListOfBoolean,
    required this.requiredListOfRequiredBoolean,
    this.listOfAwsDate,
    this.listOfRequiredAwsDate,
    required this.requiredListOfAwsDate,
    required this.requiredListOfRequiredAwsDate,
    this.listOfAwsDateTime,
    this.listOfRequiredAwsDateTime,
    required this.requiredListOfAwsDateTime,
    required this.requiredListOfRequiredAwsDateTime,
    this.listOfAwsTime,
    this.listOfRequiredAwsTime,
    required this.requiredListOfAwsTime,
    required this.requiredListOfRequiredAwsTime,
    this.listOfAwsTimestamp,
    this.listOfRequiredAwsTimestamp,
    required this.requiredListOfAwsTimestamp,
    required this.requiredListOfRequiredAwsTimestamp,
    this.listOfAwsEmail,
    this.listOfRequiredAwsEmail,
    required this.requiredListOfAwsEmail,
    required this.requiredListOfRequiredAwsEmail,
    this.listOfAwsjson,
    this.listOfRequiredAwsjson,
    required this.requiredListOfAwsjson,
    required this.requiredListOfRequiredAwsjson,
    this.listOfAwsPhone,
    this.listOfRequiredAwsPhone,
    required this.requiredListOfAwsPhone,
    required this.requiredListOfRequiredAwsPhone,
    this.listOfAwsUrl,
    this.listOfRequiredAwsUrl,
    required this.requiredListOfAwsUrl,
    required this.requiredListOfRequiredAwsUrl,
    this.listOfAwsIpAddress,
    this.listOfRequiredAwsIpAddress,
    required this.requiredListOfAwsIpAddress,
    required this.requiredListOfRequiredAwsIpAddress,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _ScalarListModel._({
    required this.id,
    this.listOfString,
    this.listOfRequiredString,
    required this.requiredListOfString,
    required this.requiredListOfRequiredString,
    this.listOfInteger,
    this.listOfRequiredInteger,
    required this.requiredListOfInteger,
    required this.requiredListOfRequiredInteger,
    this.listOfFloat,
    this.listOfRequiredFloat,
    required this.requiredListOfFloat,
    required this.requiredListOfRequiredFloat,
    this.listOfBoolean,
    this.listOfRequiredBoolean,
    required this.requiredListOfBoolean,
    required this.requiredListOfRequiredBoolean,
    this.listOfAwsDate,
    this.listOfRequiredAwsDate,
    required this.requiredListOfAwsDate,
    required this.requiredListOfRequiredAwsDate,
    this.listOfAwsDateTime,
    this.listOfRequiredAwsDateTime,
    required this.requiredListOfAwsDateTime,
    required this.requiredListOfRequiredAwsDateTime,
    this.listOfAwsTime,
    this.listOfRequiredAwsTime,
    required this.requiredListOfAwsTime,
    required this.requiredListOfRequiredAwsTime,
    this.listOfAwsTimestamp,
    this.listOfRequiredAwsTimestamp,
    required this.requiredListOfAwsTimestamp,
    required this.requiredListOfRequiredAwsTimestamp,
    this.listOfAwsEmail,
    this.listOfRequiredAwsEmail,
    required this.requiredListOfAwsEmail,
    required this.requiredListOfRequiredAwsEmail,
    this.listOfAwsjson,
    this.listOfRequiredAwsjson,
    required this.requiredListOfAwsjson,
    required this.requiredListOfRequiredAwsjson,
    this.listOfAwsPhone,
    this.listOfRequiredAwsPhone,
    required this.requiredListOfAwsPhone,
    required this.requiredListOfRequiredAwsPhone,
    this.listOfAwsUrl,
    this.listOfRequiredAwsUrl,
    required this.requiredListOfAwsUrl,
    required this.requiredListOfRequiredAwsUrl,
    this.listOfAwsIpAddress,
    this.listOfRequiredAwsIpAddress,
    required this.requiredListOfAwsIpAddress,
    required this.requiredListOfRequiredAwsIpAddress,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final List<String?>? listOfString;

  @override
  final List<String>? listOfRequiredString;

  @override
  final List<String?> requiredListOfString;

  @override
  final List<String> requiredListOfRequiredString;

  @override
  final List<int?>? listOfInteger;

  @override
  final List<int>? listOfRequiredInteger;

  @override
  final List<int?> requiredListOfInteger;

  @override
  final List<int> requiredListOfRequiredInteger;

  @override
  final List<double?>? listOfFloat;

  @override
  final List<double>? listOfRequiredFloat;

  @override
  final List<double?> requiredListOfFloat;

  @override
  final List<double> requiredListOfRequiredFloat;

  @override
  final List<bool?>? listOfBoolean;

  @override
  final List<bool>? listOfRequiredBoolean;

  @override
  final List<bool?> requiredListOfBoolean;

  @override
  final List<bool> requiredListOfRequiredBoolean;

  @override
  final List<TemporalDate?>? listOfAwsDate;

  @override
  final List<TemporalDate>? listOfRequiredAwsDate;

  @override
  final List<TemporalDate?> requiredListOfAwsDate;

  @override
  final List<TemporalDate> requiredListOfRequiredAwsDate;

  @override
  final List<TemporalDateTime?>? listOfAwsDateTime;

  @override
  final List<TemporalDateTime>? listOfRequiredAwsDateTime;

  @override
  final List<TemporalDateTime?> requiredListOfAwsDateTime;

  @override
  final List<TemporalDateTime> requiredListOfRequiredAwsDateTime;

  @override
  final List<TemporalTime?>? listOfAwsTime;

  @override
  final List<TemporalTime>? listOfRequiredAwsTime;

  @override
  final List<TemporalTime?> requiredListOfAwsTime;

  @override
  final List<TemporalTime> requiredListOfRequiredAwsTime;

  @override
  final List<TemporalTimestamp?>? listOfAwsTimestamp;

  @override
  final List<TemporalTimestamp>? listOfRequiredAwsTimestamp;

  @override
  final List<TemporalTimestamp?> requiredListOfAwsTimestamp;

  @override
  final List<TemporalTimestamp> requiredListOfRequiredAwsTimestamp;

  @override
  final List<String?>? listOfAwsEmail;

  @override
  final List<String>? listOfRequiredAwsEmail;

  @override
  final List<String?> requiredListOfAwsEmail;

  @override
  final List<String> requiredListOfRequiredAwsEmail;

  @override
  final List<Object?>? listOfAwsjson;

  @override
  final List<Object>? listOfRequiredAwsjson;

  @override
  final List<Object?> requiredListOfAwsjson;

  @override
  final List<Object> requiredListOfRequiredAwsjson;

  @override
  final List<String?>? listOfAwsPhone;

  @override
  final List<String>? listOfRequiredAwsPhone;

  @override
  final List<String?> requiredListOfAwsPhone;

  @override
  final List<String> requiredListOfRequiredAwsPhone;

  @override
  final List<Uri?>? listOfAwsUrl;

  @override
  final List<Uri>? listOfRequiredAwsUrl;

  @override
  final List<Uri?> requiredListOfAwsUrl;

  @override
  final List<Uri> requiredListOfRequiredAwsUrl;

  @override
  final List<String?>? listOfAwsIpAddress;

  @override
  final List<String>? listOfRequiredAwsIpAddress;

  @override
  final List<String?> requiredListOfAwsIpAddress;

  @override
  final List<String> requiredListOfRequiredAwsIpAddress;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class RemoteScalarListModel extends ScalarListModel
    implements RemoteModel<String, ScalarListModel> {
  const RemoteScalarListModel._() : super._();
}

class _RemoteScalarListModel extends RemoteScalarListModel {
  const _RemoteScalarListModel({
    required this.id,
    this.listOfString,
    this.listOfRequiredString,
    required this.requiredListOfString,
    required this.requiredListOfRequiredString,
    this.listOfInteger,
    this.listOfRequiredInteger,
    required this.requiredListOfInteger,
    required this.requiredListOfRequiredInteger,
    this.listOfFloat,
    this.listOfRequiredFloat,
    required this.requiredListOfFloat,
    required this.requiredListOfRequiredFloat,
    this.listOfBoolean,
    this.listOfRequiredBoolean,
    required this.requiredListOfBoolean,
    required this.requiredListOfRequiredBoolean,
    this.listOfAwsDate,
    this.listOfRequiredAwsDate,
    required this.requiredListOfAwsDate,
    required this.requiredListOfRequiredAwsDate,
    this.listOfAwsDateTime,
    this.listOfRequiredAwsDateTime,
    required this.requiredListOfAwsDateTime,
    required this.requiredListOfRequiredAwsDateTime,
    this.listOfAwsTime,
    this.listOfRequiredAwsTime,
    required this.requiredListOfAwsTime,
    required this.requiredListOfRequiredAwsTime,
    this.listOfAwsTimestamp,
    this.listOfRequiredAwsTimestamp,
    required this.requiredListOfAwsTimestamp,
    required this.requiredListOfRequiredAwsTimestamp,
    this.listOfAwsEmail,
    this.listOfRequiredAwsEmail,
    required this.requiredListOfAwsEmail,
    required this.requiredListOfRequiredAwsEmail,
    this.listOfAwsjson,
    this.listOfRequiredAwsjson,
    required this.requiredListOfAwsjson,
    required this.requiredListOfRequiredAwsjson,
    this.listOfAwsPhone,
    this.listOfRequiredAwsPhone,
    required this.requiredListOfAwsPhone,
    required this.requiredListOfRequiredAwsPhone,
    this.listOfAwsUrl,
    this.listOfRequiredAwsUrl,
    required this.requiredListOfAwsUrl,
    required this.requiredListOfRequiredAwsUrl,
    this.listOfAwsIpAddress,
    this.listOfRequiredAwsIpAddress,
    required this.requiredListOfAwsIpAddress,
    required this.requiredListOfRequiredAwsIpAddress,
    this.createdAt,
    this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteScalarListModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'id',
          ))
        : (json['id'] as String);
    final listOfString = json['listOfString'] == null
        ? null
        : (json['listOfString'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredString = json['listOfRequiredString'] == null
        ? null
        : (json['listOfRequiredString'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredString',
                )))
            .toList();
    final requiredListOfString = json['requiredListOfString'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfString',
          ))
        : (json['requiredListOfString'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredString =
        json['requiredListOfRequiredString'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredString',
              ))
            : (json['requiredListOfRequiredString'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredString',
                    )))
                .toList();
    final listOfInteger = json['listOfInteger'] == null
        ? null
        : (json['listOfInteger'] as List<Object?>).cast<int?>().toList();
    final listOfRequiredInteger = json['listOfRequiredInteger'] == null
        ? null
        : (json['listOfRequiredInteger'] as List<Object?>)
            .cast<int?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredInteger',
                )))
            .toList();
    final requiredListOfInteger = json['requiredListOfInteger'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfInteger',
          ))
        : (json['requiredListOfInteger'] as List<Object?>)
            .cast<int?>()
            .toList();
    final requiredListOfRequiredInteger =
        json['requiredListOfRequiredInteger'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredInteger',
              ))
            : (json['requiredListOfRequiredInteger'] as List<Object?>)
                .cast<int?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredInteger',
                    )))
                .toList();
    final listOfFloat = json['listOfFloat'] == null
        ? null
        : (json['listOfFloat'] as List<Object?>).cast<double?>().toList();
    final listOfRequiredFloat = json['listOfRequiredFloat'] == null
        ? null
        : (json['listOfRequiredFloat'] as List<Object?>)
            .cast<double?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredFloat',
                )))
            .toList();
    final requiredListOfFloat = json['requiredListOfFloat'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfFloat',
          ))
        : (json['requiredListOfFloat'] as List<Object?>)
            .cast<double?>()
            .toList();
    final requiredListOfRequiredFloat =
        json['requiredListOfRequiredFloat'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredFloat',
              ))
            : (json['requiredListOfRequiredFloat'] as List<Object?>)
                .cast<double?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredFloat',
                    )))
                .toList();
    final listOfBoolean = json['listOfBoolean'] == null
        ? null
        : (json['listOfBoolean'] as List<Object?>).cast<bool?>().toList();
    final listOfRequiredBoolean = json['listOfRequiredBoolean'] == null
        ? null
        : (json['listOfRequiredBoolean'] as List<Object?>)
            .cast<bool?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredBoolean',
                )))
            .toList();
    final requiredListOfBoolean = json['requiredListOfBoolean'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfBoolean',
          ))
        : (json['requiredListOfBoolean'] as List<Object?>)
            .cast<bool?>()
            .toList();
    final requiredListOfRequiredBoolean =
        json['requiredListOfRequiredBoolean'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredBoolean',
              ))
            : (json['requiredListOfRequiredBoolean'] as List<Object?>)
                .cast<bool?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredBoolean',
                    )))
                .toList();
    final listOfAwsDate = json['listOfAWSDate'] == null
        ? null
        : (json['listOfAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDate.fromString(el))
            .toList();
    final listOfRequiredAwsDate = json['listOfRequiredAWSDate'] == null
        ? null
        : (json['listOfRequiredAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListModel',
                    'listOfRequiredAwsDate',
                  ))
                : TemporalDate.fromString(el))
            .toList();
    final requiredListOfAwsDate = json['requiredListOfAWSDate'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsDate',
          ))
        : (json['requiredListOfAWSDate'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDate.fromString(el))
            .toList();
    final requiredListOfRequiredAwsDate =
        json['requiredListOfRequiredAWSDate'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsDate',
              ))
            : (json['requiredListOfRequiredAWSDate'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'requiredListOfRequiredAwsDate',
                      ))
                    : TemporalDate.fromString(el))
                .toList();
    final listOfAwsDateTime = json['listOfAWSDateTime'] == null
        ? null
        : (json['listOfAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDateTime.fromString(el))
            .toList();
    final listOfRequiredAwsDateTime = json['listOfRequiredAWSDateTime'] == null
        ? null
        : (json['listOfRequiredAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListModel',
                    'listOfRequiredAwsDateTime',
                  ))
                : TemporalDateTime.fromString(el))
            .toList();
    final requiredListOfAwsDateTime = json['requiredListOfAWSDateTime'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsDateTime',
          ))
        : (json['requiredListOfAWSDateTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalDateTime.fromString(el))
            .toList();
    final requiredListOfRequiredAwsDateTime =
        json['requiredListOfRequiredAWSDateTime'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsDateTime',
              ))
            : (json['requiredListOfRequiredAWSDateTime'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'requiredListOfRequiredAwsDateTime',
                      ))
                    : TemporalDateTime.fromString(el))
                .toList();
    final listOfAwsTime = json['listOfAWSTime'] == null
        ? null
        : (json['listOfAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalTime.fromString(el))
            .toList();
    final listOfRequiredAwsTime = json['listOfRequiredAWSTime'] == null
        ? null
        : (json['listOfRequiredAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListModel',
                    'listOfRequiredAwsTime',
                  ))
                : TemporalTime.fromString(el))
            .toList();
    final requiredListOfAwsTime = json['requiredListOfAWSTime'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsTime',
          ))
        : (json['requiredListOfAWSTime'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : TemporalTime.fromString(el))
            .toList();
    final requiredListOfRequiredAwsTime =
        json['requiredListOfRequiredAWSTime'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsTime',
              ))
            : (json['requiredListOfRequiredAWSTime'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'requiredListOfRequiredAwsTime',
                      ))
                    : TemporalTime.fromString(el))
                .toList();
    final listOfAwsTimestamp = json['listOfAWSTimestamp'] == null
        ? null
        : (json['listOfAWSTimestamp'] as List<Object?>)
            .cast<int?>()
            .map((el) => el == null ? null : TemporalTimestamp.fromSeconds(el))
            .toList();
    final listOfRequiredAwsTimestamp =
        json['listOfRequiredAWSTimestamp'] == null
            ? null
            : (json['listOfRequiredAWSTimestamp'] as List<Object?>)
                .cast<int?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'listOfRequiredAwsTimestamp',
                      ))
                    : TemporalTimestamp.fromSeconds(el))
                .toList();
    final requiredListOfAwsTimestamp = json['requiredListOfAWSTimestamp'] ==
            null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsTimestamp',
          ))
        : (json['requiredListOfAWSTimestamp'] as List<Object?>)
            .cast<int?>()
            .map((el) => el == null ? null : TemporalTimestamp.fromSeconds(el))
            .toList();
    final requiredListOfRequiredAwsTimestamp =
        json['requiredListOfRequiredAWSTimestamp'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsTimestamp',
              ))
            : (json['requiredListOfRequiredAWSTimestamp'] as List<Object?>)
                .cast<int?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'requiredListOfRequiredAwsTimestamp',
                      ))
                    : TemporalTimestamp.fromSeconds(el))
                .toList();
    final listOfAwsEmail = json['listOfAWSEmail'] == null
        ? null
        : (json['listOfAWSEmail'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredAwsEmail = json['listOfRequiredAWSEmail'] == null
        ? null
        : (json['listOfRequiredAWSEmail'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredAwsEmail',
                )))
            .toList();
    final requiredListOfAwsEmail = json['requiredListOfAWSEmail'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsEmail',
          ))
        : (json['requiredListOfAWSEmail'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredAwsEmail =
        json['requiredListOfRequiredAWSEmail'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsEmail',
              ))
            : (json['requiredListOfRequiredAWSEmail'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredAwsEmail',
                    )))
                .toList();
    final listOfAwsjson = json['listOfAWSJSON'] == null
        ? null
        : (json['listOfAWSJSON'] as List<Object?>).cast<Object?>().toList();
    final listOfRequiredAwsjson = json['listOfRequiredAWSJSON'] == null
        ? null
        : (json['listOfRequiredAWSJSON'] as List<Object?>)
            .cast<Object?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredAwsjson',
                )))
            .toList();
    final requiredListOfAwsjson = json['requiredListOfAWSJSON'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsjson',
          ))
        : (json['requiredListOfAWSJSON'] as List<Object?>)
            .cast<Object?>()
            .toList();
    final requiredListOfRequiredAwsjson =
        json['requiredListOfRequiredAWSJSON'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsjson',
              ))
            : (json['requiredListOfRequiredAWSJSON'] as List<Object?>)
                .cast<Object?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredAwsjson',
                    )))
                .toList();
    final listOfAwsPhone = json['listOfAWSPhone'] == null
        ? null
        : (json['listOfAWSPhone'] as List<Object?>).cast<String?>().toList();
    final listOfRequiredAwsPhone = json['listOfRequiredAWSPhone'] == null
        ? null
        : (json['listOfRequiredAWSPhone'] as List<Object?>)
            .cast<String?>()
            .map((el) =>
                el ??
                (throw ModelFieldError(
                  'ScalarListModel',
                  'listOfRequiredAwsPhone',
                )))
            .toList();
    final requiredListOfAwsPhone = json['requiredListOfAWSPhone'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsPhone',
          ))
        : (json['requiredListOfAWSPhone'] as List<Object?>)
            .cast<String?>()
            .toList();
    final requiredListOfRequiredAwsPhone =
        json['requiredListOfRequiredAWSPhone'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsPhone',
              ))
            : (json['requiredListOfRequiredAWSPhone'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredAwsPhone',
                    )))
                .toList();
    final listOfAwsUrl = json['listOfAWSUrl'] == null
        ? null
        : (json['listOfAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : Uri.parse(el))
            .toList();
    final listOfRequiredAwsUrl = json['listOfRequiredAWSUrl'] == null
        ? null
        : (json['listOfRequiredAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null
                ? (throw ModelFieldError(
                    'ScalarListModel',
                    'listOfRequiredAwsUrl',
                  ))
                : Uri.parse(el))
            .toList();
    final requiredListOfAwsUrl = json['requiredListOfAWSUrl'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'requiredListOfAwsUrl',
          ))
        : (json['requiredListOfAWSUrl'] as List<Object?>)
            .cast<String?>()
            .map((el) => el == null ? null : Uri.parse(el))
            .toList();
    final requiredListOfRequiredAwsUrl =
        json['requiredListOfRequiredAWSUrl'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsUrl',
              ))
            : (json['requiredListOfRequiredAWSUrl'] as List<Object?>)
                .cast<String?>()
                .map((el) => el == null
                    ? (throw ModelFieldError(
                        'ScalarListModel',
                        'requiredListOfRequiredAwsUrl',
                      ))
                    : Uri.parse(el))
                .toList();
    final listOfAwsIpAddress = json['listOfAWSIpAddress'] == null
        ? null
        : (json['listOfAWSIpAddress'] as List<Object?>)
            .cast<String?>()
            .toList();
    final listOfRequiredAwsIpAddress =
        json['listOfRequiredAWSIpAddress'] == null
            ? null
            : (json['listOfRequiredAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'listOfRequiredAwsIpAddress',
                    )))
                .toList();
    final requiredListOfAwsIpAddress =
        json['requiredListOfAWSIpAddress'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfAwsIpAddress',
              ))
            : (json['requiredListOfAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .toList();
    final requiredListOfRequiredAwsIpAddress =
        json['requiredListOfRequiredAWSIpAddress'] == null
            ? (throw ModelFieldError(
                'ScalarListModel',
                'requiredListOfRequiredAwsIpAddress',
              ))
            : (json['requiredListOfRequiredAWSIpAddress'] as List<Object?>)
                .cast<String?>()
                .map((el) =>
                    el ??
                    (throw ModelFieldError(
                      'ScalarListModel',
                      'requiredListOfRequiredAwsIpAddress',
                    )))
                .toList();
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'ScalarListModel',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteScalarListModel(
      id: id,
      listOfString: listOfString,
      listOfRequiredString: listOfRequiredString,
      requiredListOfString: requiredListOfString,
      requiredListOfRequiredString: requiredListOfRequiredString,
      listOfInteger: listOfInteger,
      listOfRequiredInteger: listOfRequiredInteger,
      requiredListOfInteger: requiredListOfInteger,
      requiredListOfRequiredInteger: requiredListOfRequiredInteger,
      listOfFloat: listOfFloat,
      listOfRequiredFloat: listOfRequiredFloat,
      requiredListOfFloat: requiredListOfFloat,
      requiredListOfRequiredFloat: requiredListOfRequiredFloat,
      listOfBoolean: listOfBoolean,
      listOfRequiredBoolean: listOfRequiredBoolean,
      requiredListOfBoolean: requiredListOfBoolean,
      requiredListOfRequiredBoolean: requiredListOfRequiredBoolean,
      listOfAwsDate: listOfAwsDate,
      listOfRequiredAwsDate: listOfRequiredAwsDate,
      requiredListOfAwsDate: requiredListOfAwsDate,
      requiredListOfRequiredAwsDate: requiredListOfRequiredAwsDate,
      listOfAwsDateTime: listOfAwsDateTime,
      listOfRequiredAwsDateTime: listOfRequiredAwsDateTime,
      requiredListOfAwsDateTime: requiredListOfAwsDateTime,
      requiredListOfRequiredAwsDateTime: requiredListOfRequiredAwsDateTime,
      listOfAwsTime: listOfAwsTime,
      listOfRequiredAwsTime: listOfRequiredAwsTime,
      requiredListOfAwsTime: requiredListOfAwsTime,
      requiredListOfRequiredAwsTime: requiredListOfRequiredAwsTime,
      listOfAwsTimestamp: listOfAwsTimestamp,
      listOfRequiredAwsTimestamp: listOfRequiredAwsTimestamp,
      requiredListOfAwsTimestamp: requiredListOfAwsTimestamp,
      requiredListOfRequiredAwsTimestamp: requiredListOfRequiredAwsTimestamp,
      listOfAwsEmail: listOfAwsEmail,
      listOfRequiredAwsEmail: listOfRequiredAwsEmail,
      requiredListOfAwsEmail: requiredListOfAwsEmail,
      requiredListOfRequiredAwsEmail: requiredListOfRequiredAwsEmail,
      listOfAwsjson: listOfAwsjson,
      listOfRequiredAwsjson: listOfRequiredAwsjson,
      requiredListOfAwsjson: requiredListOfAwsjson,
      requiredListOfRequiredAwsjson: requiredListOfRequiredAwsjson,
      listOfAwsPhone: listOfAwsPhone,
      listOfRequiredAwsPhone: listOfRequiredAwsPhone,
      requiredListOfAwsPhone: requiredListOfAwsPhone,
      requiredListOfRequiredAwsPhone: requiredListOfRequiredAwsPhone,
      listOfAwsUrl: listOfAwsUrl,
      listOfRequiredAwsUrl: listOfRequiredAwsUrl,
      requiredListOfAwsUrl: requiredListOfAwsUrl,
      requiredListOfRequiredAwsUrl: requiredListOfRequiredAwsUrl,
      listOfAwsIpAddress: listOfAwsIpAddress,
      listOfRequiredAwsIpAddress: listOfRequiredAwsIpAddress,
      requiredListOfAwsIpAddress: requiredListOfAwsIpAddress,
      requiredListOfRequiredAwsIpAddress: requiredListOfRequiredAwsIpAddress,
      createdAt: createdAt,
      updatedAt: updatedAt,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String id;

  @override
  final List<String?>? listOfString;

  @override
  final List<String>? listOfRequiredString;

  @override
  final List<String?> requiredListOfString;

  @override
  final List<String> requiredListOfRequiredString;

  @override
  final List<int?>? listOfInteger;

  @override
  final List<int>? listOfRequiredInteger;

  @override
  final List<int?> requiredListOfInteger;

  @override
  final List<int> requiredListOfRequiredInteger;

  @override
  final List<double?>? listOfFloat;

  @override
  final List<double>? listOfRequiredFloat;

  @override
  final List<double?> requiredListOfFloat;

  @override
  final List<double> requiredListOfRequiredFloat;

  @override
  final List<bool?>? listOfBoolean;

  @override
  final List<bool>? listOfRequiredBoolean;

  @override
  final List<bool?> requiredListOfBoolean;

  @override
  final List<bool> requiredListOfRequiredBoolean;

  @override
  final List<TemporalDate?>? listOfAwsDate;

  @override
  final List<TemporalDate>? listOfRequiredAwsDate;

  @override
  final List<TemporalDate?> requiredListOfAwsDate;

  @override
  final List<TemporalDate> requiredListOfRequiredAwsDate;

  @override
  final List<TemporalDateTime?>? listOfAwsDateTime;

  @override
  final List<TemporalDateTime>? listOfRequiredAwsDateTime;

  @override
  final List<TemporalDateTime?> requiredListOfAwsDateTime;

  @override
  final List<TemporalDateTime> requiredListOfRequiredAwsDateTime;

  @override
  final List<TemporalTime?>? listOfAwsTime;

  @override
  final List<TemporalTime>? listOfRequiredAwsTime;

  @override
  final List<TemporalTime?> requiredListOfAwsTime;

  @override
  final List<TemporalTime> requiredListOfRequiredAwsTime;

  @override
  final List<TemporalTimestamp?>? listOfAwsTimestamp;

  @override
  final List<TemporalTimestamp>? listOfRequiredAwsTimestamp;

  @override
  final List<TemporalTimestamp?> requiredListOfAwsTimestamp;

  @override
  final List<TemporalTimestamp> requiredListOfRequiredAwsTimestamp;

  @override
  final List<String?>? listOfAwsEmail;

  @override
  final List<String>? listOfRequiredAwsEmail;

  @override
  final List<String?> requiredListOfAwsEmail;

  @override
  final List<String> requiredListOfRequiredAwsEmail;

  @override
  final List<Object?>? listOfAwsjson;

  @override
  final List<Object>? listOfRequiredAwsjson;

  @override
  final List<Object?> requiredListOfAwsjson;

  @override
  final List<Object> requiredListOfRequiredAwsjson;

  @override
  final List<String?>? listOfAwsPhone;

  @override
  final List<String>? listOfRequiredAwsPhone;

  @override
  final List<String?> requiredListOfAwsPhone;

  @override
  final List<String> requiredListOfRequiredAwsPhone;

  @override
  final List<Uri?>? listOfAwsUrl;

  @override
  final List<Uri>? listOfRequiredAwsUrl;

  @override
  final List<Uri?> requiredListOfAwsUrl;

  @override
  final List<Uri> requiredListOfRequiredAwsUrl;

  @override
  final List<String?>? listOfAwsIpAddress;

  @override
  final List<String>? listOfRequiredAwsIpAddress;

  @override
  final List<String?> requiredListOfAwsIpAddress;

  @override
  final List<String> requiredListOfRequiredAwsIpAddress;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
