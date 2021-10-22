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

abstract class QueryFieldOperator<T> {
  final QueryFieldOperatorType type;

  const QueryFieldOperator(this.type);

  bool evaluate(T? other);

  Map<String, dynamic> serializeAsMap();

  Map<String, dynamic> serializeAsMapWithOperator(
      String operatorName, dynamic value) {
    return <String, dynamic>{
      'operatorName': operatorName,
      'value': serializeDynamicValue(value)
    };
  }

  /// check the type of [value] and invoke corresponding serialize method
  dynamic serializeDynamicValue(dynamic value) {
    if (value is DateTime) {
      return value.toDateTimeIso8601String();
    }

    if (isEnum(value)) {
      return enumToString(value);
    }

    // TODO sanitize other types appropriately
    return value;
  }
}

class EqualQueryOperator<T> extends QueryFieldOperator<T> {
  final T value;

  const EqualQueryOperator(this.value) : super(QueryFieldOperatorType.equal);

  @override
  bool evaluate(T? other) {
    return other == value;
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.equal.toShortString(), value);
  }
}

class NotEqualQueryOperator<T> extends QueryFieldOperator<T> {
  final T value;

  const NotEqualQueryOperator(this.value)
      : super(QueryFieldOperatorType.not_equal);

  @override
  bool evaluate(T? other) {
    return other != value;
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.not_equal.toShortString(), value);
  }
}

class LessOrEqualQueryOperator<T extends Comparable>
    extends QueryFieldOperator<T> {
  final T value;

  const LessOrEqualQueryOperator(this.value)
      : super(QueryFieldOperatorType.less_or_equal);

  @override
  bool evaluate(T? other) {
    if (other == null) {
      return false;
    }
    return other.compareTo(value) <= 0;
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.less_or_equal.toShortString(), value);
  }
}

class LessThanQueryOperator<T extends Comparable>
    extends QueryFieldOperator<T> {
  final T value;

  const LessThanQueryOperator(this.value)
      : super(QueryFieldOperatorType.less_than);

  @override
  bool evaluate(T? other) {
    if (other == null) {
      return false;
    }
    return other.compareTo(value) < 0;
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.less_than.toShortString(), value);
  }
}

class GreaterOrEqualQueryOperator<T extends Comparable>
    extends QueryFieldOperator<T> {
  final T value;

  const GreaterOrEqualQueryOperator(this.value)
      : super(QueryFieldOperatorType.greater_or_equal);

  @override
  bool evaluate(T? other) {
    if (other == null) {
      return true;
    }
    return other.compareTo(value) >= 0;
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.greater_or_equal.toShortString(), value);
  }
}

class GreaterThanQueryOperator<T extends Comparable>
    extends QueryFieldOperator<T> {
  final T value;

  const GreaterThanQueryOperator(this.value)
      : super(QueryFieldOperatorType.greater_than);

  @override
  bool evaluate(T? other) {
    if (other == null) {
      return true;
    }
    return other.compareTo(value) > 0;
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.greater_than.toShortString(), value);
  }
}

class ContainsQueryOperator extends QueryFieldOperator<String> {
  final String value;

  const ContainsQueryOperator(this.value)
      : super(QueryFieldOperatorType.contains);

  @override
  bool evaluate(String? other) {
    if (other == null) {
      return false;
    }
    return other.contains(value);
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.contains.toShortString(), value);
  }
}

class BetweenQueryOperator<T extends Comparable> extends QueryFieldOperator<T> {
  final T start;
  final T end;

  const BetweenQueryOperator(this.start, this.end)
      : super(QueryFieldOperatorType.between);

  @override
  bool evaluate(T? other) {
    if (other == null) {
      return false;
    }
    return other.compareTo(start) >= 0 && other.compareTo(end) <= 0;
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return <String, dynamic>{
      'operatorName': QueryFieldOperatorType.between.toShortString(),
      'start': start,
      'end': end
    };
  }
}

class BeginsWithQueryOperator extends QueryFieldOperator<String> {
  final String value;

  const BeginsWithQueryOperator(this.value)
      : super(QueryFieldOperatorType.begins_with);

  @override
  bool evaluate(String? other) {
    if (other == null) {
      return false;
    }
    return other.startsWith(value);
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.begins_with.toShortString(), value);
  }
}
