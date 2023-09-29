// Mocks generated by Mockito 5.4.2 from annotations
// in amplify_push_notifications_pinpoint/test/push_notifications_background_processing_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:amplify_core/amplify_core.dart' as _i4;
import 'package:amplify_secure_storage/src/amplify_secure_storage.vm.dart'
    as _i5;
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeAmplifySecureStorageConfig_0 extends _i1.SmartFake
    implements _i2.AmplifySecureStorageConfig {
  _FakeAmplifySecureStorageConfig_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAWSLogger_1 extends _i1.SmartFake implements _i3.AWSLogger {
  _FakeAWSLogger_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAuthCategory_2 extends _i1.SmartFake implements _i4.AuthCategory {
  _FakeAuthCategory_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAnalyticsCategory_3 extends _i1.SmartFake
    implements _i4.AnalyticsCategory {
  _FakeAnalyticsCategory_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStorageCategory_4 extends _i1.SmartFake
    implements _i4.StorageCategory {
  _FakeStorageCategory_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDataStoreCategory_5 extends _i1.SmartFake
    implements _i4.DataStoreCategory {
  _FakeDataStoreCategory_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAPICategory_6 extends _i1.SmartFake implements _i4.APICategory {
  _FakeAPICategory_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAmplifyHub_7 extends _i1.SmartFake implements _i4.AmplifyHub {
  _FakeAmplifyHub_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeNotificationsCategory_8 extends _i1.SmartFake
    implements _i4.NotificationsCategory {
  _FakeNotificationsCategory_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDependencyManager_9 extends _i1.SmartFake
    implements _i4.DependencyManager {
  _FakeDependencyManager_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAmplifyAuthProviderRepository_10 extends _i1.SmartFake
    implements _i4.AmplifyAuthProviderRepository {
  _FakeAmplifyAuthProviderRepository_10(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAmplifyConfig_11 extends _i1.SmartFake implements _i4.AmplifyConfig {
  _FakeAmplifyConfig_11(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AmplifySecureStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockAmplifySecureStorage extends _i1.Mock
    implements _i5.AmplifySecureStorage {
  MockAmplifySecureStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.AmplifySecureStorageConfig get config => (super.noSuchMethod(
        Invocation.getter(#config),
        returnValue: _FakeAmplifySecureStorageConfig_0(
          this,
          Invocation.getter(#config),
        ),
      ) as _i2.AmplifySecureStorageConfig);

  @override
  String get runtimeTypeName => (super.noSuchMethod(
        Invocation.getter(#runtimeTypeName),
        returnValue: '',
      ) as String);

  @override
  _i3.AWSLogger get logger => (super.noSuchMethod(
        Invocation.getter(#logger),
        returnValue: _FakeAWSLogger_1(
          this,
          Invocation.getter(#logger),
        ),
      ) as _i3.AWSLogger);

  @override
  _i6.Future<void> delete({required String? key}) => (super.noSuchMethod(
        Invocation.method(
          #delete,
          [],
          {#key: key},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<String?> read({required String? key}) => (super.noSuchMethod(
        Invocation.method(
          #read,
          [],
          {#key: key},
        ),
        returnValue: _i6.Future<String?>.value(),
      ) as _i6.Future<String?>);

  @override
  _i6.Future<void> write({
    required String? key,
    required String? value,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #write,
          [],
          {
            #key: key,
            #value: value,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> removeAll() => (super.noSuchMethod(
        Invocation.method(
          #removeAll,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}

/// A class which mocks [AmplifyClass].
///
/// See the documentation for Mockito's code generation for more information.
class MockAmplifyClass extends _i1.Mock implements _i4.AmplifyClass {
  MockAmplifyClass() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.AuthCategory get Auth => (super.noSuchMethod(
        Invocation.getter(#Auth),
        returnValue: _FakeAuthCategory_2(
          this,
          Invocation.getter(#Auth),
        ),
      ) as _i4.AuthCategory);

  @override
  _i4.AnalyticsCategory get Analytics => (super.noSuchMethod(
        Invocation.getter(#Analytics),
        returnValue: _FakeAnalyticsCategory_3(
          this,
          Invocation.getter(#Analytics),
        ),
      ) as _i4.AnalyticsCategory);

  @override
  _i4.StorageCategory get Storage => (super.noSuchMethod(
        Invocation.getter(#Storage),
        returnValue: _FakeStorageCategory_4(
          this,
          Invocation.getter(#Storage),
        ),
      ) as _i4.StorageCategory);

  @override
  _i4.DataStoreCategory get DataStore => (super.noSuchMethod(
        Invocation.getter(#DataStore),
        returnValue: _FakeDataStoreCategory_5(
          this,
          Invocation.getter(#DataStore),
        ),
      ) as _i4.DataStoreCategory);

  @override
  _i4.APICategory get API => (super.noSuchMethod(
        Invocation.getter(#API),
        returnValue: _FakeAPICategory_6(
          this,
          Invocation.getter(#API),
        ),
      ) as _i4.APICategory);

  @override
  _i4.AmplifyHub get Hub => (super.noSuchMethod(
        Invocation.getter(#Hub),
        returnValue: _FakeAmplifyHub_7(
          this,
          Invocation.getter(#Hub),
        ),
      ) as _i4.AmplifyHub);

  @override
  _i4.NotificationsCategory get Notifications => (super.noSuchMethod(
        Invocation.getter(#Notifications),
        returnValue: _FakeNotificationsCategory_8(
          this,
          Invocation.getter(#Notifications),
        ),
      ) as _i4.NotificationsCategory);

  @override
  _i4.DependencyManager get dependencies => (super.noSuchMethod(
        Invocation.getter(#dependencies),
        returnValue: _FakeDependencyManager_9(
          this,
          Invocation.getter(#dependencies),
        ),
      ) as _i4.DependencyManager);

  @override
  _i4.AmplifyAuthProviderRepository get authProviderRepo => (super.noSuchMethod(
        Invocation.getter(#authProviderRepo),
        returnValue: _FakeAmplifyAuthProviderRepository_10(
          this,
          Invocation.getter(#authProviderRepo),
        ),
      ) as _i4.AmplifyAuthProviderRepository);

  @override
  bool get isConfigured => (super.noSuchMethod(
        Invocation.getter(#isConfigured),
        returnValue: false,
      ) as bool);

  @override
  _i6.Future<_i4.AmplifyConfig> get asyncConfig => (super.noSuchMethod(
        Invocation.getter(#asyncConfig),
        returnValue: _i6.Future<_i4.AmplifyConfig>.value(_FakeAmplifyConfig_11(
          this,
          Invocation.getter(#asyncConfig),
        )),
      ) as _i6.Future<_i4.AmplifyConfig>);

  @override
  String get version => (super.noSuchMethod(
        Invocation.getter(#version),
        returnValue: '',
      ) as String);

  @override
  _i6.Future<void> addPlugin(_i4.AmplifyPluginInterface? plugin) =>
      (super.noSuchMethod(
        Invocation.method(
          #addPlugin,
          [plugin],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> addPlugins(List<_i4.AmplifyPluginInterface>? plugins) =>
      (super.noSuchMethod(
        Invocation.method(
          #addPlugins,
          [plugins],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> addPluginPlatform(_i4.AmplifyPluginInterface? plugin) =>
      (super.noSuchMethod(
        Invocation.method(
          #addPluginPlatform,
          [plugin],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> configure(String? configuration) => (super.noSuchMethod(
        Invocation.method(
          #configure,
          [configuration],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> reset() => (super.noSuchMethod(
        Invocation.method(
          #reset,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}
