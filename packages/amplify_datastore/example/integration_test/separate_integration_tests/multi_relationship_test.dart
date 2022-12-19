// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tuple/tuple.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/multi_relationship/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Model with multiple relationships', () {
    // schema
    // type MultiRelatedMeeting @model {
    //   id: ID! @primaryKey
    //   title: String!
    //   attendees: [MultiRelatedRegistration]
    //     @hasMany(indexName: "byMeeting", fields: ["id"])
    // }

    // type MultiRelatedAttendee @model {
    //   id: ID! @primaryKey
    //   meetings: [MultiRelatedRegistration]
    //     @hasMany(indexName: "byAttendee", fields: ["id"])
    // }

    // type MultiRelatedRegistration @model {
    //   id: ID! @primaryKey
    //   meetingId: ID @index(name: "byMeeting", sortKeyFields: ["attendeeId"])
    //   meeting: MultiRelatedMeeting! @belongsTo(fields: ["meetingId"])
    //   attendeeId: ID @index(name: "byAttendee", sortKeyFields: ["meetingId"])
    //   attendee: MultiRelatedAttendee! @belongsTo(fields: ["attendeeId"])
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var meetings = [
      MultiRelatedMeeting(title: 'test meeting 1'),
      MultiRelatedMeeting(title: 'test meeting 2'),
    ];
    var attendees = [
      MultiRelatedAttendee(),
      MultiRelatedAttendee(),
    ];
    var registrations = [
      MultiRelatedRegistration(attendee: attendees[0], meeting: meetings[0]),
      MultiRelatedRegistration(attendee: attendees[0], meeting: meetings[1]),
      MultiRelatedRegistration(attendee: attendees[1], meeting: meetings[1]),
    ];

    late Future<List<SubscriptionEvent<MultiRelatedMeeting>>>
        meetingModelEventsGetter;
    late Future<List<SubscriptionEvent<MultiRelatedAttendee>>>
        attendeeModelEventsGetter;
    late Future<List<SubscriptionEvent<MultiRelatedRegistration>>>
        registrationModelEventsGetter;

    setUpAll(() async {
      await configureDataStore(
          enableCloudSync: enableCloudSync,
          modelProvider: ModelProvider.instance);

      meetingModelEventsGetter = createObservedEventsGetter(
        MultiRelatedMeeting.classType,
        take: meetings.length,
        eventType: EventType.create,
      );
      attendeeModelEventsGetter = createObservedEventsGetter(
        MultiRelatedAttendee.classType,
        take: attendees.length,
        eventType: EventType.create,
      );
      registrationModelEventsGetter = createObservedEventsGetter(
        MultiRelatedRegistration.classType,
        take: registrations.length,
        eventType: EventType.create,
      );
    });

    expectModelsNotToBeInLocalStorage([
      Tuple2(MultiRelatedMeeting.classType, meetings),
      Tuple2(MultiRelatedAttendee.classType, attendees),
      Tuple2(MultiRelatedRegistration.classType, registrations),
    ]);

    testWidgets('save meetings', (WidgetTester tester) async {
      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: meetings,
          expectedRootModelVersion: 1,
          rootModelOperator: Amplify.DataStore.save,
          rootModelEventsAssertor: modelIsNotDeletedAssertor,
        );
      } else {
        for (var meeting in meetings) {
          await Amplify.DataStore.save(meeting);
        }
      }
      var queriedMeetings =
          await Amplify.DataStore.query(MultiRelatedMeeting.classType);
      expect(queriedMeetings, containsAll(meetings));
    });

    testWidgets('save attendees', (WidgetTester tester) async {
      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: attendees,
          expectedRootModelVersion: 1,
          rootModelOperator: Amplify.DataStore.save,
          rootModelEventsAssertor: modelIsNotDeletedAssertor,
        );
      } else {
        for (var attendee in attendees) {
          await Amplify.DataStore.save(attendee);
        }
      }
      var queriedAttendees =
          await Amplify.DataStore.query(MultiRelatedAttendee.classType);
      expect(queriedAttendees, containsAll(attendees));
    });

    testWidgets('save registrations', (WidgetTester tester) async {
      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: registrations,
          expectedRootModelVersion: 1,
          rootModelOperator: Amplify.DataStore.save,
          rootModelEventsAssertor: modelIsNotDeletedAssertor,
        );
      } else {
        for (var registration in registrations) {
          await Amplify.DataStore.save(registration);
        }
      }
      var queriedRegistrations =
          await Amplify.DataStore.query(MultiRelatedRegistration.classType);
      expect(queriedRegistrations, containsAll(registrations));
    });

    testWidgets('observe meetings', (WidgetTester tester) async {
      var events = await meetingModelEventsGetter;
      expectObservedEventsToMatchModels(
          events: events, referenceModels: meetings);
    });

    testWidgets('observe attendees', (WidgetTester tester) async {
      var events = await attendeeModelEventsGetter;
      expectObservedEventsToMatchModels(
          events: events, referenceModels: attendees);
    });

    testWidgets('observe registrations', (WidgetTester tester) async {
      var events = await registrationModelEventsGetter;
      expectObservedEventsToMatchModels(
          events: events, referenceModels: registrations);
    });

    testWidgets('delete meeting (cascade delete associated registration)',
        (WidgetTester tester) async {
      var deletedMeeting = meetings[0]; // cascade delete registration[0]
      var deletedRegistration = registrations[0];

      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: [deletedMeeting],
          expectedRootModelVersion: 2,
          rootModelOperator: Amplify.DataStore.delete,
          rootModelEventsAssertor: modelIsDeletedAssertor,
          associatedModels: [deletedRegistration],
          expectedAssociatedModelVersion: 2,
          associatedModelEventsAssertor: modelIsDeletedAssertor,
        );
      } else {
        await Amplify.DataStore.delete(deletedMeeting);
      }

      var queriedMeetings =
          await Amplify.DataStore.query(MultiRelatedMeeting.classType);
      expect(queriedMeetings, isNot(contains(deletedMeeting)));

      var queriedRegistrations =
          await Amplify.DataStore.query(MultiRelatedRegistration.classType);
      expect(queriedRegistrations, isNot(contains(deletedRegistration)));
    });

    testWidgets('delete attendee (cascade delete associated registration)',
        (WidgetTester tester) async {
      var deletedAttendee = attendees[0];
      var deletedRegistration = registrations[1];

      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: [deletedAttendee],
          expectedRootModelVersion: 2,
          rootModelOperator: Amplify.DataStore.delete,
          rootModelEventsAssertor: modelIsDeletedAssertor,
          associatedModels: [deletedRegistration],
          expectedAssociatedModelVersion: 2,
          associatedModelEventsAssertor: modelIsDeletedAssertor,
        );
      } else {
        await Amplify.DataStore.delete(deletedAttendee);
      }

      var queriedAttendees =
          await Amplify.DataStore.query(MultiRelatedAttendee.classType);
      expect(queriedAttendees, isNot(contains(deletedAttendee)));

      var queriedRegistrations =
          await Amplify.DataStore.query(MultiRelatedRegistration.classType);
      expect(queriedRegistrations, isNot(contains(deletedRegistration)));
    });

    testWidgets('delete remaining meeting', (WidgetTester tester) async {
      var deletedMeeting = meetings[1];
      var deletedRegistration = registrations[2];

      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: [deletedMeeting],
          expectedRootModelVersion: 2,
          rootModelOperator: Amplify.DataStore.delete,
          rootModelEventsAssertor: modelIsDeletedAssertor,
          associatedModels: [deletedRegistration],
          expectedAssociatedModelVersion: 2,
          associatedModelEventsAssertor: modelIsDeletedAssertor,
        );
      } else {
        await Amplify.DataStore.delete(deletedMeeting);
      }

      var queriedMeetings =
          await Amplify.DataStore.query(MultiRelatedMeeting.classType);
      expect(queriedMeetings, isNot(contains(deletedMeeting)));

      var queriedRegistrations =
          await Amplify.DataStore.query(MultiRelatedRegistration.classType);
      expect(queriedRegistrations, isNot(contains(deletedRegistration)));
    });

    testWidgets('delete remaining attendee', (WidgetTester tester) async {
      var deletedAttendee = attendees[1];

      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: [deletedAttendee],
          expectedRootModelVersion: 2,
          rootModelOperator: Amplify.DataStore.delete,
          rootModelEventsAssertor: modelIsDeletedAssertor,
        );
      } else {
        await Amplify.DataStore.delete(deletedAttendee);
      }

      var queriedAttendees =
          await Amplify.DataStore.query(MultiRelatedAttendee.classType);
      expect(queriedAttendees, isNot(contains(deletedAttendee)));
    });
  });
}
