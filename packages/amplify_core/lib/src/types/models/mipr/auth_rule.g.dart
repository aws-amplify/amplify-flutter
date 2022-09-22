// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthStrategy _$owner = const AuthStrategy._('owner');
const AuthStrategy _$groups = const AuthStrategy._('groups');
const AuthStrategy _$private = const AuthStrategy._('private');
const AuthStrategy _$public = const AuthStrategy._('public');
const AuthStrategy _$custom = const AuthStrategy._('custom');

AuthStrategy _$AuthStrategyValueOf(String name) {
  switch (name) {
    case 'owner':
      return _$owner;
    case 'groups':
      return _$groups;
    case 'private':
      return _$private;
    case 'public':
      return _$public;
    case 'custom':
      return _$custom;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AuthStrategy> _$AuthStrategyValues =
    new BuiltSet<AuthStrategy>(const <AuthStrategy>[
  _$owner,
  _$groups,
  _$private,
  _$public,
  _$custom,
]);

const AuthRuleProvider _$apiKey = const AuthRuleProvider._('apiKey');
const AuthRuleProvider _$iam = const AuthRuleProvider._('iam');
const AuthRuleProvider _$oidc = const AuthRuleProvider._('oidc');
const AuthRuleProvider _$userPools = const AuthRuleProvider._('userPools');
const AuthRuleProvider _$function = const AuthRuleProvider._('function');

AuthRuleProvider _$AuthRuleProviderValueOf(String name) {
  switch (name) {
    case 'apiKey':
      return _$apiKey;
    case 'iam':
      return _$iam;
    case 'oidc':
      return _$oidc;
    case 'userPools':
      return _$userPools;
    case 'function':
      return _$function;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AuthRuleProvider> _$AuthRuleProviderValues =
    new BuiltSet<AuthRuleProvider>(const <AuthRuleProvider>[
  _$apiKey,
  _$iam,
  _$oidc,
  _$userPools,
  _$function,
]);

const ModelOperation _$create = const ModelOperation._('create');
const ModelOperation _$update = const ModelOperation._('update');
const ModelOperation _$delete = const ModelOperation._('delete');
const ModelOperation _$read = const ModelOperation._('read');
const ModelOperation _$get = const ModelOperation._('get');
const ModelOperation _$list = const ModelOperation._('list');
const ModelOperation _$sync = const ModelOperation._('sync');
const ModelOperation _$listen = const ModelOperation._('listen');
const ModelOperation _$search = const ModelOperation._('search');

ModelOperation _$ModelOperationValueOf(String name) {
  switch (name) {
    case 'create':
      return _$create;
    case 'update':
      return _$update;
    case 'delete':
      return _$delete;
    case 'read':
      return _$read;
    case 'get':
      return _$get;
    case 'list':
      return _$list;
    case 'sync':
      return _$sync;
    case 'listen':
      return _$listen;
    case 'search':
      return _$search;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ModelOperation> _$ModelOperationValues =
    new BuiltSet<ModelOperation>(const <ModelOperation>[
  _$create,
  _$update,
  _$delete,
  _$read,
  _$get,
  _$list,
  _$sync,
  _$listen,
  _$search,
]);

Serializer<AuthStrategy> _$authStrategySerializer =
    new _$AuthStrategySerializer();
Serializer<AuthRuleProvider> _$authRuleProviderSerializer =
    new _$AuthRuleProviderSerializer();
Serializer<ModelOperation> _$modelOperationSerializer =
    new _$ModelOperationSerializer();
Serializer<AuthRule> _$authRuleSerializer = new _$AuthRuleSerializer();

class _$AuthStrategySerializer implements PrimitiveSerializer<AuthStrategy> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'owner': 'OWNER',
    'groups': 'GROUPS',
    'private': 'PRIVATE',
    'public': 'PUBLIC',
    'custom': 'CUSTOM',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OWNER': 'owner',
    'GROUPS': 'groups',
    'PRIVATE': 'private',
    'PUBLIC': 'public',
    'CUSTOM': 'custom',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthStrategy];
  @override
  final String wireName = 'AuthStrategy';

  @override
  Object serialize(Serializers serializers, AuthStrategy object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AuthStrategy deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AuthStrategy.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AuthRuleProviderSerializer
    implements PrimitiveSerializer<AuthRuleProvider> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'apiKey': 'APIKEY',
    'iam': 'IAM',
    'oidc': 'OIDC',
    'userPools': 'USERPOOLS',
    'function': 'FUNCTION',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'APIKEY': 'apiKey',
    'IAM': 'iam',
    'OIDC': 'oidc',
    'USERPOOLS': 'userPools',
    'FUNCTION': 'function',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthRuleProvider];
  @override
  final String wireName = 'AuthRuleProvider';

  @override
  Object serialize(Serializers serializers, AuthRuleProvider object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AuthRuleProvider deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AuthRuleProvider.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ModelOperationSerializer
    implements PrimitiveSerializer<ModelOperation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'create': 'CREATE',
    'update': 'UPDATE',
    'delete': 'DELETE',
    'read': 'READ',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CREATE': 'create',
    'UPDATE': 'update',
    'DELETE': 'delete',
    'READ': 'read',
  };

  @override
  final Iterable<Type> types = const <Type>[ModelOperation];
  @override
  final String wireName = 'ModelOperation';

  @override
  Object serialize(Serializers serializers, ModelOperation object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ModelOperation deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ModelOperation.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AuthRuleSerializer implements StructuredSerializer<AuthRule> {
  @override
  final Iterable<Type> types = const [AuthRule, _$AuthRule];
  @override
  final String wireName = 'AuthRule';

  @override
  Iterable<Object?> serialize(Serializers serializers, AuthRule object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'authStrategy',
      serializers.serialize(object.authStrategy,
          specifiedType: const FullType(AuthStrategy)),
      'provider',
      serializers.serialize(object.provider,
          specifiedType: const FullType(AuthRuleProvider)),
      'operations',
      serializers.serialize(object.operations,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(ModelOperation)])),
    ];
    Object? value;
    value = object.ownerField;
    if (value != null) {
      result
        ..add('ownerField')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.identityClaim;
    if (value != null) {
      result
        ..add('identityClaim')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.groupClaim;
    if (value != null) {
      result
        ..add('groupClaim')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.groups;
    if (value != null) {
      result
        ..add('groups')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltSet, const [const FullType(String)])));
    }
    value = object.groupsField;
    if (value != null) {
      result
        ..add('groupsField')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AuthRule deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthRuleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'authStrategy':
          result.authStrategy = serializers.deserialize(value,
              specifiedType: const FullType(AuthStrategy))! as AuthStrategy;
          break;
        case 'ownerField':
          result.ownerField = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'identityClaim':
          result.identityClaim = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'groupClaim':
          result.groupClaim = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'groups':
          result.groups.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(String)]))!
              as BuiltSet<Object?>);
          break;
        case 'groupsField':
          result.groupsField = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'provider':
          result.provider = serializers.deserialize(value,
                  specifiedType: const FullType(AuthRuleProvider))!
              as AuthRuleProvider;
          break;
        case 'operations':
          result.operations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltSet, const [const FullType(ModelOperation)]))!
              as BuiltSet<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$AuthRule extends AuthRule {
  @override
  final AuthStrategy authStrategy;
  @override
  final String? ownerField;
  @override
  final String? identityClaim;
  @override
  final String? groupClaim;
  @override
  final BuiltSet<String>? groups;
  @override
  final String? groupsField;
  @override
  final AuthRuleProvider provider;
  @override
  final BuiltSet<ModelOperation> operations;

  factory _$AuthRule([void Function(AuthRuleBuilder)? updates]) =>
      (new AuthRuleBuilder()..update(updates))._build();

  _$AuthRule._(
      {required this.authStrategy,
      this.ownerField,
      this.identityClaim,
      this.groupClaim,
      this.groups,
      this.groupsField,
      required this.provider,
      required this.operations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        authStrategy, r'AuthRule', 'authStrategy');
    BuiltValueNullFieldError.checkNotNull(provider, r'AuthRule', 'provider');
    BuiltValueNullFieldError.checkNotNull(
        operations, r'AuthRule', 'operations');
  }

  @override
  AuthRule rebuild(void Function(AuthRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthRuleBuilder toBuilder() => new AuthRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthRule &&
        authStrategy == other.authStrategy &&
        ownerField == other.ownerField &&
        identityClaim == other.identityClaim &&
        groupClaim == other.groupClaim &&
        groups == other.groups &&
        groupsField == other.groupsField &&
        provider == other.provider &&
        operations == other.operations;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, authStrategy.hashCode),
                                ownerField.hashCode),
                            identityClaim.hashCode),
                        groupClaim.hashCode),
                    groups.hashCode),
                groupsField.hashCode),
            provider.hashCode),
        operations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthRule')
          ..add('authStrategy', authStrategy)
          ..add('ownerField', ownerField)
          ..add('identityClaim', identityClaim)
          ..add('groupClaim', groupClaim)
          ..add('groups', groups)
          ..add('groupsField', groupsField)
          ..add('provider', provider)
          ..add('operations', operations))
        .toString();
  }
}

class AuthRuleBuilder implements Builder<AuthRule, AuthRuleBuilder> {
  _$AuthRule? _$v;

  AuthStrategy? _authStrategy;
  AuthStrategy? get authStrategy => _$this._authStrategy;
  set authStrategy(AuthStrategy? authStrategy) =>
      _$this._authStrategy = authStrategy;

  String? _ownerField;
  String? get ownerField => _$this._ownerField;
  set ownerField(String? ownerField) => _$this._ownerField = ownerField;

  String? _identityClaim;
  String? get identityClaim => _$this._identityClaim;
  set identityClaim(String? identityClaim) =>
      _$this._identityClaim = identityClaim;

  String? _groupClaim;
  String? get groupClaim => _$this._groupClaim;
  set groupClaim(String? groupClaim) => _$this._groupClaim = groupClaim;

  SetBuilder<String>? _groups;
  SetBuilder<String> get groups => _$this._groups ??= new SetBuilder<String>();
  set groups(SetBuilder<String>? groups) => _$this._groups = groups;

  String? _groupsField;
  String? get groupsField => _$this._groupsField;
  set groupsField(String? groupsField) => _$this._groupsField = groupsField;

  AuthRuleProvider? _provider;
  AuthRuleProvider? get provider => _$this._provider;
  set provider(AuthRuleProvider? provider) => _$this._provider = provider;

  SetBuilder<ModelOperation>? _operations;
  SetBuilder<ModelOperation> get operations =>
      _$this._operations ??= new SetBuilder<ModelOperation>();
  set operations(SetBuilder<ModelOperation>? operations) =>
      _$this._operations = operations;

  AuthRuleBuilder();

  AuthRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authStrategy = $v.authStrategy;
      _ownerField = $v.ownerField;
      _identityClaim = $v.identityClaim;
      _groupClaim = $v.groupClaim;
      _groups = $v.groups?.toBuilder();
      _groupsField = $v.groupsField;
      _provider = $v.provider;
      _operations = $v.operations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthRule;
  }

  @override
  void update(void Function(AuthRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthRule build() => _build();

  _$AuthRule _build() {
    AuthRule._setDefaults(this);
    _$AuthRule _$result;
    try {
      _$result = _$v ??
          new _$AuthRule._(
              authStrategy: BuiltValueNullFieldError.checkNotNull(
                  authStrategy, r'AuthRule', 'authStrategy'),
              ownerField: ownerField,
              identityClaim: identityClaim,
              groupClaim: groupClaim,
              groups: _groups?.build(),
              groupsField: groupsField,
              provider: BuiltValueNullFieldError.checkNotNull(
                  provider, r'AuthRule', 'provider'),
              operations: operations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();

        _$failedField = 'operations';
        operations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
