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

abstract class QueryFieldOperator<M extends Model, V> {
  final QueryFieldOperatorType type;
  final V Function(M) getValue;

  const QueryFieldOperator({
    required this.type,
    required this.getValue,
  });

  bool evaluate(V other);

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
    // DateTime is deprecated and will be removed in the next major version
    if (value is DateTime) {
      if (kDebugMode) {
        print(
          'WARNING: Using DateTime types in a QueryPredicate is deprecated. Use a Temporal Date/Time Type instead.',
        );
      }
      return value.toDateTimeIso8601String();
    } else if (value is TemporalDate) {
      return value.format();
    } else if (value is TemporalDateTime) {
      return value.format();
    } else if (value is TemporalTime) {
      return value.format();
    } else if (value is TemporalTimestamp) {
      return value.toSeconds();
    } else if (isEnum(value)) {
      return enumToString(value);
    }

    // TODO sanitize other types appropriately
    return value;
  }
}

class EqualQueryOperator<M extends Model, V> extends QueryFieldOperator<M, V> {
  final V? value;

  const EqualQueryOperator({
    required this.value,
    required V Function(M) getValue,
  }) : super(type: QueryFieldOperatorType.equal, getValue: getValue);

  @override
  bool evaluate(V? other) {
    var serializedValue = serializeDynamicValue(value);
    return other == serializedValue;
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.equal.toShortString(), value);
  }
}

class NotEqualQueryOperator<M extends Model, V>
    extends QueryFieldOperator<M, V> {
  final V? value;

  const NotEqualQueryOperator({
    required this.value,
    required V Function(M) getValue,
  }) : super(type: QueryFieldOperatorType.not_equal, getValue: getValue);

  @override
  bool evaluate(V? other) {
    var serializedValue = serializeDynamicValue(value);
    return other != serializedValue;
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.not_equal.toShortString(), value);
  }
}

class LessOrEqualQueryOperator<M extends Model, V extends Comparable<V>?>
    extends QueryFieldOperator<M, V> {
  final V value;

  const LessOrEqualQueryOperator({
    required this.value,
    required V Function(M) getValue,
  }) : super(type: QueryFieldOperatorType.less_or_equal, getValue: getValue);

  @override
  bool evaluate(V? other) {
    if (other == null) {
      return false;
    }
    var serializedValue = serializeDynamicValue(value);
    return other.compareTo(serializedValue) <= 0;
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.less_or_equal.toShortString(), value);
  }
}

class LessThanQueryOperator<M extends Model, V extends Comparable<V>?>
    extends QueryFieldOperator<M, V> {
  final V value;

  const LessThanQueryOperator({
    required this.value,
    required V Function(M) getValue,
  }) : super(type: QueryFieldOperatorType.less_than, getValue: getValue);

  @override
  bool evaluate(V? other) {
    if (other == null) {
      return false;
    }
    var serializedValue = serializeDynamicValue(value);
    return other.compareTo(serializedValue) < 0;
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.less_than.toShortString(), value);
  }
}

class GreaterOrEqualQueryOperator<M extends Model, V extends Comparable<V>?>
    extends QueryFieldOperator<M, V> {
  final V value;

  const GreaterOrEqualQueryOperator({
    required this.value,
    required V Function(M) getValue,
  }) : super(type: QueryFieldOperatorType.greater_or_equal, getValue: getValue);

  @override
  bool evaluate(V? other) {
    if (other == null) {
      return false;
    }
    var serializedValue = serializeDynamicValue(value);
    return other.compareTo(serializedValue) >= 0;
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.greater_or_equal.toShortString(), value);
  }
}

class GreaterThanQueryOperator<M extends Model, V extends Comparable<V>?>
    extends QueryFieldOperator<M, V> {
  final V value;

  const GreaterThanQueryOperator({
    required this.value,
    required V Function(M) getValue,
  }) : super(type: QueryFieldOperatorType.greater_than, getValue: getValue);

  @override
  bool evaluate(V? other) {
    if (other == null) {
      return false;
    }
    var serializedValue = serializeDynamicValue(value);
    return other.compareTo(serializedValue) > 0;
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(
        QueryFieldOperatorType.greater_than.toShortString(), value);
  }
}

class BetweenQueryOperator<M extends Model, V extends Comparable<V>?>
    extends QueryFieldOperator<M, V> {
  final V start;
  final V end;

  const BetweenQueryOperator({
    required this.start,
    required this.end,
    required V Function(M) getValue,
  }) : super(type: QueryFieldOperatorType.between, getValue: getValue);

  @override
  bool evaluate(V? other) {
    if (other == null) {
      return false;
    }
    var serializedStart = serializeDynamicValue(start);
    var serializedEnd = serializeDynamicValue(end);
    return other.compareTo(serializedStart) >= 0 &&
        other.compareTo(serializedEnd) <= 0;
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return <String, dynamic>{
      'operatorName': QueryFieldOperatorType.between.toShortString(),
      'start': serializeDynamicValue(start),
      'end': serializeDynamicValue(end)
    };
  }
}

class BeginsWithQueryOperator<M extends Model>
    extends QueryFieldOperator<M, String?> {
  final String value;

  const BeginsWithQueryOperator({
    required this.value,
    required String? Function(M) getValue,
  }) : super(type: QueryFieldOperatorType.begins_with, getValue: getValue);

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

class ContainsQueryOperator<M extends Model>
    extends QueryFieldOperator<M, String?> {
  final String value;

  const ContainsQueryOperator({
    required this.value,
    required String? Function(M) getValue,
  }) : super(type: QueryFieldOperatorType.contains, getValue: getValue);

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

class ListContainsQueryOperator<M extends Model, V>
    extends QueryFieldOperator<M, List<V>?> {
  final V value;

  const ListContainsQueryOperator({
    required this.value,
    required List<V>? Function(M) getValue,
  }) : super(type: QueryFieldOperatorType.contains, getValue: getValue);

  @override
  bool evaluate(List<V>? other) {
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
