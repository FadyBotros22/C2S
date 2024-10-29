import 'package:c2s/data/json_data/post_entries_request_data.dart';
import 'package:c2s/domain/blocs/form_bloc/form_event.dart';
import 'package:c2s/injection_container.dart';
import 'package:c2s/presentation/widgets/transparent_action_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/blocs/form_bloc/form_bloc.dart';
import 'package:flutter/material.dart';
import 'action_button.dart';
import 'package:c2s/statics/preferences.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons(
      {super.key,
      this.id,
      required this.validate,
      this.nextScreen,
      this.patchData,
      this.postEntriesRequestData,
      this.patchEntry});
  final String? id;
  final Function? patchEntry;
  final Function validate;
  final Widget? nextScreen;
  final Map<String, dynamic>? patchData;
  final PostEntriesRequestData? postEntriesRequestData;

  @override
  Widget build(BuildContext context) {
    final token = getIt<Preferences>().getData('token').toString();
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ActionButton(
            label: 'Save and next',
            onPressed: () {
              if (validate()) {
                if (id == null) {
                  context.read<FormBloc>().add(
                      PostEntryEvent(token, postEntriesRequestData!, 'next'));
                } else {
                  context
                      .read<FormBloc>()
                      .add(PatchEntryEvent(token, id!, patchData!, 'next'));
                }
              }
            },
          ),
          TransparentActionButton(
            onPressed: () {
              if (validate()) {
                if (id == null) {
                  context.read<FormBloc>().add(
                      PostEntryEvent(token, postEntriesRequestData!, 'before'));
                } else {
                  context
                      .read<FormBloc>()
                      .add(PatchEntryEvent(token, id!, patchData!, 'before'));
                }
              }
            },
            label: 'Save for now',
          ),
        ],
      ),
    );
  }
}
