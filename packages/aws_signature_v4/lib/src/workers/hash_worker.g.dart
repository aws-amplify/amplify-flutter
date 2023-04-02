// GENERATED CODE - DO NOT MODIFY BY HAND

part of workers.hash_worker;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$_serializers = (new Serializers().toBuilder()
      ..add(HashWorkerRequest.serializer)
      ..add(HashWorkerResponse.serializer))
    .build();
Serializer<HashWorkerRequest> _$hashWorkerRequestSerializer =
    new _$HashWorkerRequestSerializer();
Serializer<HashWorkerResponse> _$hashWorkerResponseSerializer =
    new _$HashWorkerResponseSerializer();

class _$HashWorkerRequestSerializer
    implements StructuredSerializer<HashWorkerRequest> {
  @override
  final Iterable<Type> types = const [HashWorkerRequest, _$HashWorkerRequest];
  @override
  final String wireName = 'HashWorkerRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, HashWorkerRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'chunk',
      serializers.serialize(object.chunk,
          specifiedType: const FullType(Uint8List)),
    ];

    return result;
  }

  @override
  HashWorkerRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HashWorkerRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'chunk':
          result.chunk = serializers.deserialize(value,
              specifiedType: const FullType(Uint8List))! as Uint8List;
          break;
      }
    }

    return result.build();
  }
}

class _$HashWorkerResponseSerializer
    implements StructuredSerializer<HashWorkerResponse> {
  @override
  final Iterable<Type> types = const [HashWorkerResponse, _$HashWorkerResponse];
  @override
  final String wireName = 'HashWorkerResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HashWorkerResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'chunk',
      serializers.serialize(object.chunk,
          specifiedType: const FullType(Uint8List)),
      'hash',
      serializers.serialize(object.hash, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  HashWorkerResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HashWorkerResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'chunk':
          result.chunk = serializers.deserialize(value,
              specifiedType: const FullType(Uint8List))! as Uint8List;
          break;
        case 'hash':
          result.hash = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HashWorkerRequest extends HashWorkerRequest {
  @override
  final int id;
  @override
  final Uint8List chunk;

  factory _$HashWorkerRequest(
          [void Function(HashWorkerRequestBuilder)? updates]) =>
      (new HashWorkerRequestBuilder()..update(updates))._build();

  _$HashWorkerRequest._({required this.id, required this.chunk}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'HashWorkerRequest', 'id');
    BuiltValueNullFieldError.checkNotNull(chunk, r'HashWorkerRequest', 'chunk');
  }

  @override
  HashWorkerRequest rebuild(void Function(HashWorkerRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HashWorkerRequestBuilder toBuilder() =>
      new HashWorkerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HashWorkerRequest && id == other.id && chunk == other.chunk;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), chunk.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HashWorkerRequest')
          ..add('id', id)
          ..add('chunk', chunk))
        .toString();
  }
}

class HashWorkerRequestBuilder
    implements Builder<HashWorkerRequest, HashWorkerRequestBuilder> {
  _$HashWorkerRequest? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  Uint8List? _chunk;
  Uint8List? get chunk => _$this._chunk;
  set chunk(Uint8List? chunk) => _$this._chunk = chunk;

  HashWorkerRequestBuilder();

  HashWorkerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _chunk = $v.chunk;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HashWorkerRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HashWorkerRequest;
  }

  @override
  void update(void Function(HashWorkerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HashWorkerRequest build() => _build();

  _$HashWorkerRequest _build() {
    final _$result = _$v ??
        new _$HashWorkerRequest._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'HashWorkerRequest', 'id'),
            chunk: BuiltValueNullFieldError.checkNotNull(
                chunk, r'HashWorkerRequest', 'chunk'));
    replace(_$result);
    return _$result;
  }
}

class _$HashWorkerResponse extends HashWorkerResponse {
  @override
  final int id;
  @override
  final Uint8List chunk;
  @override
  final String hash;

  factory _$HashWorkerResponse(
          [void Function(HashWorkerResponseBuilder)? updates]) =>
      (new HashWorkerResponseBuilder()..update(updates))._build();

  _$HashWorkerResponse._(
      {required this.id, required this.chunk, required this.hash})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'HashWorkerResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(
        chunk, r'HashWorkerResponse', 'chunk');
    BuiltValueNullFieldError.checkNotNull(hash, r'HashWorkerResponse', 'hash');
  }

  @override
  HashWorkerResponse rebuild(
          void Function(HashWorkerResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HashWorkerResponseBuilder toBuilder() =>
      new HashWorkerResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HashWorkerResponse &&
        id == other.id &&
        chunk == other.chunk &&
        hash == other.hash;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), chunk.hashCode), hash.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HashWorkerResponse')
          ..add('id', id)
          ..add('chunk', chunk)
          ..add('hash', hash))
        .toString();
  }
}

class HashWorkerResponseBuilder
    implements Builder<HashWorkerResponse, HashWorkerResponseBuilder> {
  _$HashWorkerResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  Uint8List? _chunk;
  Uint8List? get chunk => _$this._chunk;
  set chunk(Uint8List? chunk) => _$this._chunk = chunk;

  String? _hash;
  String? get hash => _$this._hash;
  set hash(String? hash) => _$this._hash = hash;

  HashWorkerResponseBuilder();

  HashWorkerResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _chunk = $v.chunk;
      _hash = $v.hash;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HashWorkerResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HashWorkerResponse;
  }

  @override
  void update(void Function(HashWorkerResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HashWorkerResponse build() => _build();

  _$HashWorkerResponse _build() {
    final _$result = _$v ??
        new _$HashWorkerResponse._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'HashWorkerResponse', 'id'),
            chunk: BuiltValueNullFieldError.checkNotNull(
                chunk, r'HashWorkerResponse', 'chunk'),
            hash: BuiltValueNullFieldError.checkNotNull(
                hash, r'HashWorkerResponse', 'hash'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
