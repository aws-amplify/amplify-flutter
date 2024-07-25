import 'package:amplify_trips_planner/common/ui/bottomsheet_text_form_field.dart';
import 'package:amplify_trips_planner/common/utils/date_time_formatter.dart';
import 'package:amplify_trips_planner/features/trip/controller/trips_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddTripBottomSheet extends ConsumerStatefulWidget {
  const AddTripBottomSheet({
    super.key,
  });

  @override
  AddTripBottomSheetState createState() => AddTripBottomSheetState();
}

class AddTripBottomSheetState extends ConsumerState<AddTripBottomSheet> {
  final formGlobalKey = GlobalKey<FormState>();

  final tripNameController = TextEditingController();
  final destinationController = TextEditingController();
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
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
                  print(pickedDate.format('yyyy-MM-dd'));
                  startDateController.text = pickedDate.format('yyyy-MM-dd');
                  print(startDateController.text);
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
                    print(pickedDate.format('yyyy-MM-dd'));
                    endDateController.text = pickedDate.format('yyyy-MM-dd');
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
                  await ref.watch(tripsListControllerProvider.notifier).addTrip(
                        name: tripNameController.text,
                        destination: destinationController.text,
                        startDate: startDateController.text,
                        endDate: endDateController.text,
                      );

                  if (context.mounted) {
                    context.pop();
                  }
                }
              }, //,
            ),
          ],
        ),
      ),
    );
  }
}
