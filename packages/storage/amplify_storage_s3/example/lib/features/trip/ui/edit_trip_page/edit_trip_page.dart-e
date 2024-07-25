import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_trips_planner/common/navigation/router/routes.dart';
import 'package:amplify_trips_planner/common/ui/bottomsheet_text_form_field.dart';
import 'package:amplify_trips_planner/common/utils/colors.dart' as constants;
import 'package:amplify_trips_planner/common/utils/date_time_formatter.dart';
import 'package:amplify_trips_planner/features/trip/controller/trip_controller.dart';
import 'package:amplify_trips_planner/models/ModelProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EditTripPage extends ConsumerStatefulWidget {
  const EditTripPage({
    required this.trip,
    super.key,
  });

  final Trip trip;

  @override
  EditTripPageState createState() => EditTripPageState();
}

class EditTripPageState extends ConsumerState<EditTripPage> {
  @override
  void initState() {
    tripNameController.text = widget.trip.tripName;
    destinationController.text = widget.trip.destination;

    startDateController.text =
        widget.trip.startDate.getDateTime().format('yyyy-MM-dd');

    endDateController.text =
        widget.trip.endDate.getDateTime().format('yyyy-MM-dd');

    super.initState();
  }

  final formGlobalKey = GlobalKey<FormState>();
  final tripNameController = TextEditingController();
  final destinationController = TextEditingController();
  final startDateController = TextEditingController();

  final endDateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Amplify Trips Planner',
        ),
        leading: IconButton(
          onPressed: () {
            context.goNamed(
              AppRoute.trip.name,
              pathParameters: {'id': widget.trip.id},
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: const Color(constants.primaryColorDark),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formGlobalKey,
          child: Container(
            padding: EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
              bottom: MediaQuery.of(context).viewInsets.bottom + 15,
            ),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BottomSheetTextFormField(
                  labelText: 'Trip Name',
                  controller: tripNameController,
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(
                  height: 20,
                ),
                BottomSheetTextFormField(
                  labelText: 'Trip Destination',
                  controller: destinationController,
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(
                  height: 20,
                ),
                BottomSheetTextFormField(
                  labelText: 'Start Date',
                  controller: startDateController,
                  keyboardType: TextInputType.datetime,
                  onTap: () async {
                    final pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                    );

                    if (pickedDate != null) {
                      startDateController.text =
                          pickedDate.format('yyyy-MM-dd');
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                BottomSheetTextFormField(
                  labelText: 'End Date',
                  controller: endDateController,
                  keyboardType: TextInputType.datetime,
                  onTap: () async {
                    if (startDateController.text.isNotEmpty) {
                      final pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.parse(startDateController.text),
                        firstDate: DateTime.parse(startDateController.text),
                        lastDate: DateTime(2101),
                      );

                      if (pickedDate != null) {
                        endDateController.text =
                            pickedDate.format('yyyy-MM-dd');
                      }
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  child: const Text('OK'),
                  onPressed: () async {
                    final currentState = formGlobalKey.currentState;
                    if (currentState == null) {
                      return;
                    }
                    if (currentState.validate()) {
                      final updatedTrip = widget.trip.copyWith(
                        tripName: tripNameController.text,
                        destination: destinationController.text,
                        startDate: TemporalDate(
                          DateTime.parse(startDateController.text),
                        ),
                        endDate: TemporalDate(
                          DateTime.parse(endDateController.text),
                        ),
                      );

                      await ref
                          .watch(
                              tripControllerProvider(widget.trip.id).notifier)
                          .updateTrip(updatedTrip);
                      if (context.mounted) {
                        context.goNamed(
                          AppRoute.trip.name,
                          pathParameters: {'id': widget.trip.id},
                          extra: updatedTrip,
                        );
                      }
                    }
                  }, //,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
