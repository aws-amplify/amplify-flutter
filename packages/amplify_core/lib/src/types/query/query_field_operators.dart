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

// ignore_for_file: implicit_dynamic_type

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

abstract class QueryFieldOperatorSingleValue<T> extends QueryFieldOperator<T> {
  final T value;

  const QueryFieldOperatorSingleValue(this.value, QueryFieldOperatorType type)
      : super(type);

  @override
  Map<String, dynamic> serializeAsMap() {
    return serializeAsMapWithOperator(type.toShortString(), value);
  }
}

class EqualQueryOperator<T> extends QueryFieldOperatorSingleValue<T> {
  const EqualQueryOperator(T value)
      : super(value, QueryFieldOperatorType.equal);

  @override
  bool evaluate(T? other) {
    dynamic serializedValue = serializeDynamicValue(value);
    return other == serializedValue;
  }
}

class NotEqualQueryOperator<T> extends QueryFieldOperatorSingleValue<T> {
  const NotEqualQueryOperator(T value)
      : super(value, QueryFieldOperatorType.not_equal);

  @override
  bool evaluate(T? other) {
    return other != value;
  }
}

class LessOrEqualQueryOperator<T extends Comparable>
    extends QueryFieldOperatorSingleValue<T> {
  const LessOrEqualQueryOperator(T value)
      : super(value, QueryFieldOperatorType.less_or_equal);

  @override
  bool evaluate(T? other) {
    if (other == null) {
      return false;
    }
    dynamic serializedValue = serializeDynamicValue(value);
    return other.compareTo(serializedValue) <= 0;
  }
}

class LessThanQueryOperator<T extends Comparable>
    extends QueryFieldOperatorSingleValue<T> {
  const LessThanQueryOperator(T value)
      : super(value, QueryFieldOperatorType.less_than);

  @override
  bool evaluate(T? other) {
    if (other == null) {
      return false;
    }
    dynamic serializedValue = serializeDynamicValue(value);
    return other.compareTo(serializedValue) < 0;
  }
}

class GreaterOrEqualQueryOperator<T extends Comparable>
    extends QueryFieldOperatorSingleValue<T> {
  const GreaterOrEqualQueryOperator(T value)
      : super(value, QueryFieldOperatorType.greater_or_equal);

  @override
  bool evaluate(T? other) {
    if (other == null) {
      return false;
    }
    dynamic serializedValue = serializeDynamicValue(value);
    return other.compareTo(serializedValue) >= 0;
  }
}

class GreaterThanQueryOperator<T extends Comparable>
    extends QueryFieldOperatorSingleValue<T> {
  const GreaterThanQueryOperator(T value)
      : super(value, QueryFieldOperatorType.greater_than);

  @override
  bool evaluate(T? other) {
    if (other == null) {
      return false;
    }
    dynamic serializedValue = serializeDynamicValue(value);
    return other.compareTo(serializedValue) > 0;
  }
}

class ContainsQueryOperator extends QueryFieldOperatorSingleValue<String> {
  const ContainsQueryOperator(String value)
      : super(value, QueryFieldOperatorType.contains);

  @override
  bool evaluate(dynamic other) {
    if (other == null) {
      return false;
    } else if (other is String) {
      return other.contains(value);
    } else if (other is List<String>) {
      return other.contains(value);
    } else {
      throw const AmplifyException(
        'Invalid type. The .contains() query predicate only supports type String and List<String>.',
        recoverySuggestion: 'Ensure that the field is of the appropriate type.',
      );
    }
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
    dynamic serializedStart = serializeDynamicValue(start);
    dynamic serializedEnd = serializeDynamicValue(end);
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

class BeginsWithQueryOperator extends QueryFieldOperatorSingleValue<String> {
  const BeginsWithQueryOperator(String value)
      : super(value, QueryFieldOperatorType.begins_with);

  @override
  bool evaluate(String? other) {
    if (other == null) {
      return false;
    }
    return other.startsWith(value);
  }
}
