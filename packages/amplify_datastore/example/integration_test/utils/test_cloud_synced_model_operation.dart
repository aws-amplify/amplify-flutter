import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tuple/tuple.dart';

import 'setup_utils.dart';
import 'wait_for_expected_event_from_hub.dart';

typedef EventsAssertor = void Function(
    List<SubscriptionDataProcessedEvent<Model>> events);
typedef ModelOperator = Future<void> Function<T extends Model>(T model,
    {QueryPredicate? where});

/// Check each of the [events] is presenting a deleted model.
void modelIsDeletedAssertor<T extends Model>(
    List<SubscriptionDataProcessedEvent<T>> events) {
  events.forEach((event) {
    expect(event.element.deleted, isTrue);
  });
}

/// Check each of the [events] is presenting a model that is not deleted.
void modelIsNotDeletedAssertor<T extends Model>(
    List<SubscriptionDataProcessedEvent<T>> events) {
  events.forEach((event) {
    expect(event.element.deleted, isFalse);
  });
}

/// A until function asserts cloud synced result of a model operation.
///
/// It applies [rootModelOperator] to each of the [rootModels] then waits for
/// cloud sync event to be dispatched, and extract events satisfy
/// [expectedRootModelVersion] and then run [rootModelEventsAssertor] on each
/// of the extracted events.
///
/// [associatedModels] can be provided to verify automated processes such as
/// cascade delete. [expectedAssociatedModelVersion] and
/// [associatedModelEventsAssertor] can be different from the ones set up for
/// the root models.
///
/// [rootModelOperator] and [associatedModelOperator] can be passed with
/// [rootModelOperationPredicate] and [associatedModelOperationPredicate]
/// respectively.
Future<void> testCloudSyncedModelOperation<R extends Model, A extends Model>({
  required List<R> rootModels,
  required int expectedRootModelVersion,
  required ModelOperator rootModelOperator,
  required EventsAssertor rootModelEventsAssertor,
  QueryPredicate? rootModelOperationPredicate,
  List<A>? associatedModels,
  int? expectedAssociatedModelVersion,
  ModelOperator? associatedModelOperator,
  QueryPredicate? associatedModelOperationPredicate,
  EventsAssertor? associatedModelEventsAssertor,
}) async {
  final assertingAssociatedModels = associatedModels != null &&
      associatedModels.isNotEmpty &&
      expectedAssociatedModelVersion != null &&
      associatedModelEventsAssertor != null;

  var syncEventsGetters = rootModels
      .map(
        (rootModel) => getExpectedSubscriptionDataProcessedEvent(
          eventMatcher: (event) {
            var model = event.element.model;

            if (model is R) {
              return model.getId() == rootModel.getId() &&
                  event.element.version == expectedRootModelVersion;
            }

            return false;
          },
        ),
      )
      .toList();

  if (assertingAssociatedModels) {
    var associatedModelsSyncedEventsGetters = associatedModels.map(
      (associatedModel) => getExpectedSubscriptionDataProcessedEvent(
        eventMatcher: (event) {
          var model = event.element.model;

          if (model is A) {
            return model.getId() == associatedModel.getId() &&
                event.element.version == expectedRootModelVersion;
          }

          return false;
        },
      ),
    );

    syncEventsGetters.addAll(associatedModelsSyncedEventsGetters);
  }

  for (var rootModel in rootModels) {
    await rootModelOperator(rootModel);
  }

  if (associatedModelOperator != null) {
    for (var associatedModel in associatedModels!) {
      await associatedModelOperator(associatedModel);
    }
  }

  var syncedEvents = await Future.wait(syncEventsGetters);

  rootModelEventsAssertor(syncedEvents.sublist(0, rootModels.length));

  if (associatedModelEventsAssertor != null) {
    associatedModelEventsAssertor(syncedEvents.sublist(rootModels.length));
  }
}

/// Create am async getter to capture [take] of observed events on [modelType]
/// with desired [eventType].
Future<List<SubscriptionEvent<T>>> createObservedEventsGetter<T extends Model>(
  ModelType<T> modelType, {
  required int take,
  required EventType eventType,
}) =>
    Amplify.DataStore.observe(modelType)
        .where((event) => event.eventType == eventType)
        .distinct((prev, next) =>
            prev.eventType == next.eventType &&
            prev.item.getId() == next.item.getId())
        .take(take)
        .toList();

/// A util function runs [testWidgets] to validate [modelSpecs] specified
/// models are not in local storage.
void expectModelsNotToBeInLocalStorage<T extends Model>(
    List<Tuple2<ModelType, List<T>>> modelSpecs) {
  testWidgets('testing models are not in local storage',
      (WidgetTester tester) async {
    for (var modelSpec in modelSpecs) {
      var modelsInLocalStorage = Amplify.DataStore.query(modelSpec.item1);
      expect(modelsInLocalStorage, isNot(containsAll(modelSpec.item2)));
    }
  });
}

/// A util function valid each of the [events] contained model is matching the
/// model contained in [referenceModels].
void expectObservedEventsToMatchModels<T extends Model>({
  required List<SubscriptionEvent<T>> events,
  required List<T> referenceModels,
}) async {
  for (var i = 0; i < referenceModels.length; i++) {
    var event = events[i];
    var syncedRootModel = event.item;
    var rootModel = referenceModels[i];
    expect(syncedRootModel, rootModel);
  }
}

/// A until function runs [testWidgets] to validate model operations on related
/// [rootModelType] and [associatedModelType].
///
/// This function runs save and delete operations on each of the
/// [rootModels].
///
/// This function runs save operation on each of the [associatedModels], and
/// delete operation if [supportCascadeDelete] is set as `false`.
///
/// This function runs tests with cloud sync enabled when [enableCloudSync] is
/// set as `true`.
void testRootAndAssociatedModelsRelationship<R extends Model, A extends Model>({
  required ModelProviderInterface modelProvider,
  required ModelType<R> rootModelType,
  required List<R> rootModels,
  required ModelType<A> associatedModelType,
  required List<A> associatedModels,
  bool enableCloudSync = false,
  bool supportCascadeDelete = false,
}) {
  late Future<List<SubscriptionEvent<R>>> observedRootModelsEvents;
  late Future<List<SubscriptionEvent<A>>> observedAssociatedModelsEvents;

  setUpAll(() async {
    await configureDataStore(
      enableCloudSync: enableCloudSync,
      modelProvider: modelProvider,
    );

    observedRootModelsEvents = createObservedEventsGetter(
      rootModelType,
      eventType: EventType.create,
      take: rootModels.length,
    );

    observedAssociatedModelsEvents = createObservedEventsGetter(
      associatedModelType,
      eventType: EventType.create,
      take: associatedModels.length,
    );
  });

  expectModelsNotToBeInLocalStorage([
    Tuple2(rootModelType, rootModels),
    Tuple2(associatedModelType, associatedModels),
  ]);

  testWidgets('save root models', (WidgetTester tester) async {
    if (enableCloudSync) {
      await testCloudSyncedModelOperation(
        rootModels: rootModels,
        expectedRootModelVersion: 1,
        rootModelOperator: Amplify.DataStore.save,
        rootModelEventsAssertor: modelIsNotDeletedAssertor,
      );
    } else {
      for (var rootModel in rootModels) {
        await Amplify.DataStore.save(rootModel);
      }
    }

    var savedRootModels = await Amplify.DataStore.query(rootModelType);
    expect(savedRootModels, containsAll(rootModels));
  });

  testWidgets('save associated models', (WidgetTester tester) async {
    if (enableCloudSync) {
      await testCloudSyncedModelOperation(
        rootModels: associatedModels,
        expectedRootModelVersion: 1,
        rootModelOperator: Amplify.DataStore.save,
        rootModelEventsAssertor: modelIsNotDeletedAssertor,
      );
    } else {
      for (var associatedModel in associatedModels) {
        await Amplify.DataStore.save(associatedModel);
      }
    }

    var savedAssociatedModels =
        await Amplify.DataStore.query(associatedModelType);
    expect(savedAssociatedModels, containsAll(associatedModels));
  });

  testWidgets('observed root models creation events',
      (WidgetTester tester) async {
    var events = await observedRootModelsEvents;
    expectObservedEventsToMatchModels(
        events: events, referenceModels: rootModels);
  });

  testWidgets('observed associated models creation events',
      (WidgetTester tester) async {
    var events = await observedAssociatedModelsEvents;
    expectObservedEventsToMatchModels(
        events: events, referenceModels: associatedModels);
  });

  testWidgets(
      'delete root models${supportCascadeDelete ? ' (cascade delete associated models)' : ''}',
      (WidgetTester tester) async {
    if (enableCloudSync) {
      await testCloudSyncedModelOperation(
        rootModels: rootModels,
        expectedRootModelVersion: 2,
        rootModelOperator: Amplify.DataStore.delete,
        rootModelEventsAssertor: modelIsDeletedAssertor,
        associatedModels: supportCascadeDelete ? associatedModels : null,
        expectedAssociatedModelVersion: supportCascadeDelete ? 2 : null,
        associatedModelEventsAssertor:
            supportCascadeDelete ? modelIsDeletedAssertor : null,
      );
    } else {
      for (var rootModel in rootModels) {
        await Amplify.DataStore.delete(rootModel);
      }
    }
    var queriedRootModels = await Amplify.DataStore.query(rootModelType);
    expect(queriedRootModels, isNot(containsAll(rootModels)));

    if (supportCascadeDelete) {
      var queriedAssociatedModels =
          await Amplify.DataStore.query(associatedModelType);
      expect(queriedAssociatedModels, isNot(containsAll(associatedModels)));
    }
  });

  if (!supportCascadeDelete) {
    testWidgets(
        'delete associated models separately as cascade delete is not support with this relationship',
        (WidgetTester tester) async {
      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: associatedModels,
          expectedRootModelVersion: 2,
          rootModelOperator: Amplify.DataStore.delete,
          rootModelEventsAssertor: modelIsDeletedAssertor,
        );
      } else {
        for (var associatedModel in associatedModels) {
          await Amplify.DataStore.delete(associatedModel);
        }
      }

      var queriedAssociatedModels =
          await Amplify.DataStore.query(associatedModelType);
      expect(queriedAssociatedModels, isNot(containsAll(associatedModels)));
    });
  }
}
