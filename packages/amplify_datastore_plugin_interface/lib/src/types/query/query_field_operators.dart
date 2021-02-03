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

part of 'query_field.dart';

enum QueryFieldOperatorType {
  equal,
  not_equal,
  less_or_equal,
  less_than,
  greater_or_equal,
  greater_than,
  contains,
  between,
  begins_with
}

extension QueryFieldOperatorTypeExtension on QueryFieldOperatorType {
  String toShortString() {
    return this
        .toString()
        .split('.')
        .last; // toString returns the enumName.value
  }
}

abstract class QueryFieldOperator {
  final QueryFieldOperatorType type;

  const QueryFieldOperator(this.type);

  Map<String, dynamic> serializeAsMap();

  Map<String, dynamic> serializeAsMapWithOperator(
      String operatorName, dynamic value) {
    return <String, dynamic>{
      'operatorName': operatorName,
      'value': serializeDynamicValue(value)
    };
  }

  // This will not work as a value of type DateTime can be Date/Time/DateTime
  dynamic serializeDynamicValue(dynamic value) {
    if (value is DateTime) {
      return value.toDateTimeIso8601String();
    }
    // TODO sanitize other types appropriately
    return value;
  }
}

class EqualQueryOperator<T> extends QueryFieldOperator {
  final T value;

  const EqualQueryOperator(this.value) : super(QueryFieldOperatorType.equal);

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.equal.toShortString(), value);
  }
}

class NotEqualQueryOperator<T> extends QueryFieldOperator {
  final T value;

  const NotEqualQueryOperator(this.value)
      : super(QueryFieldOperatorType.not_equal);

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.not_equal.toShortString(), value);
  }
}

class LessOrEqualQueryOperator<T> extends QueryFieldOperator {
  final T value;

  const LessOrEqualQueryOperator(this.value)
      : super(QueryFieldOperatorType.less_or_equal);

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.less_or_equal.toShortString(), value);
  }
}

class LessThanQueryOperator<T> extends QueryFieldOperator {
  final T value;

  const LessThanQueryOperator(this.value)
      : super(QueryFieldOperatorType.less_than);

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.less_than.toShortString(), value);
  }
}

class GreaterOrEqualQueryOperator<T> extends QueryFieldOperator {
  final T value;

  const GreaterOrEqualQueryOperator(this.value)
      : super(QueryFieldOperatorType.greater_or_equal);

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.greater_or_equal.toShortString(), value);
  }
}

class GreaterThanQueryOperator<T> extends QueryFieldOperator {
  final T value;

  const GreaterThanQueryOperator(this.value)
      : super(QueryFieldOperatorType.greater_than);

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.greater_than.toShortString(), value);
  }
}

class ContainsQueryOperator<T> extends QueryFieldOperator {
  final T value;

  const ContainsQueryOperator(this.value)
      : super(QueryFieldOperatorType.contains);

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.contains.toShortString(), value);
  }
}

class BetweenQueryOperator<T> extends QueryFieldOperator {
  final T start;
  final T end;

  const BetweenQueryOperator(this.start, this.end)
      : super(QueryFieldOperatorType.between);

  @override
  Map<String, dynamic> serializeAsMap() {
    return <String, dynamic>{
      'operatorName': QueryFieldOperatorType.between.toShortString(),
      'start': start,
      'end': end
    };
  }
}

class BeginsWithQueryOperator extends QueryFieldOperator {
  final String value;

  const BeginsWithQueryOperator(this.value)
      : super(QueryFieldOperatorType.begins_with);

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.begins_with.toShortString(), value);
  }
}
