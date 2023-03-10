// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worker_bee_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkerBeeExceptionImpl> _$workerBeeExceptionImplSerializer =
    new _$WorkerBeeExceptionImplSerializer();

class _$WorkerBeeExceptionImplSerializer
    implements StructuredSerializer<WorkerBeeExceptionImpl> {
  @override
  final Iterable<Type> types = const [
    WorkerBeeExceptionImpl,
    _$WorkerBeeExceptionImpl
  ];
  @override
  final String wireName = 'WorkerBeeExceptionImpl';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WorkerBeeExceptionImpl object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.stackTrace;
    if (value != null) {
      result
        ..add('stackTrace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(StackTrace)));
    }
    return result;
  }

  @override
  WorkerBeeExceptionImpl deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkerBeeExceptionImplBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'stackTrace':
          result.stackTrace = serializers.deserialize(value,
              specifiedType: const FullType(StackTrace)) as StackTrace?;
          break;
      }
    }

    return result.build();
  }
}

abstract class WorkerBeeExceptionBuilder {
  void replace(WorkerBeeException other);
  void update(void Function(WorkerBeeExceptionBuilder) updates);
  String? get error;
  set error(String? error);

  StackTrace? get stackTrace;
  set stackTrace(StackTrace? stackTrace);
}

class _$WorkerBeeExceptionImpl extends WorkerBeeExceptionImpl {
  @override
  final String error;
  @override
  final StackTrace? stackTrace;

  factory _$WorkerBeeExceptionImpl(
          [void Function(WorkerBeeExceptionImplBuilder)? updates]) =>
      (new WorkerBeeExceptionImplBuilder()..update(updates))._build();

  _$WorkerBeeExceptionImpl._({required this.error, this.stackTrace})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        error, r'WorkerBeeExceptionImpl', 'error');
  }

  @override
  WorkerBeeExceptionImpl rebuild(
          void Function(WorkerBeeExceptionImplBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkerBeeExceptionImplBuilder toBuilder() =>
      new WorkerBeeExceptionImplBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkerBeeExceptionImpl &&
        error == other.error &&
        stackTrace == other.stackTrace;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, stackTrace.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkerBeeExceptionImpl')
          ..add('error', error)
          ..add('stackTrace', stackTrace))
        .toString();
  }
}

class WorkerBeeExceptionImplBuilder
    implements
        Builder<WorkerBeeExceptionImpl, WorkerBeeExceptionImplBuilder>,
        WorkerBeeExceptionBuilder {
  _$WorkerBeeExceptionImpl? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(covariant String? error) => _$this._error = error;

  StackTrace? _stackTrace;
  StackTrace? get stackTrace => _$this._stackTrace;
  set stackTrace(covariant StackTrace? stackTrace) =>
      _$this._stackTrace = stackTrace;

  WorkerBeeExceptionImplBuilder();

  WorkerBeeExceptionImplBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _stackTrace = $v.stackTrace;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant WorkerBeeExceptionImpl other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkerBeeExceptionImpl;
  }

  @override
  void update(void Function(WorkerBeeExceptionImplBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkerBeeExceptionImpl build() => _build();

  _$WorkerBeeExceptionImpl _build() {
    final _$result = _$v ??
        new _$WorkerBeeExceptionImpl._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'WorkerBeeExceptionImpl', 'error'),
            stackTrace: stackTrace);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
