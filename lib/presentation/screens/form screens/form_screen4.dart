import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/bottom_buttons.dart';
import '../../widgets/snakbar.dart';
import '../../widgets/title_component.dart';
import 'package:c2s/data/json_data/get_entry_response_data.dart';
import 'package:c2s/data/json_data/patch%20data/patch_attic_insulation_data.dart'
    as attic;
import '../home_page.dart';
import 'form_screen3.dart';
import 'form_screen5.dart';
import 'package:flutter/material.dart';
import '../../widgets/image_input_field.dart';
import '../../widgets/input_field.dart';
import '../../widgets/radio_buttons.dart';
import 'package:c2s/statics/preferences.dart';
import '../../../domain/repositories/abstract_entries_repo.dart';
import '../../../injection_container.dart';
import '../../../domain/blocs/form_bloc/form_bloc.dart';
import '../../../domain/blocs/form_bloc/form_event.dart';
import '../../../domain/blocs/form_bloc/form_state.dart' as form_state;

class FormScreen4 extends StatefulWidget {
  const FormScreen4({super.key, required this.id});
  final String id;

  @override
  State<FormScreen4> createState() => _FormScreen4State();
}

class _FormScreen4State extends State<FormScreen4> {
  bool isEmptyOnWorkOrder = false;

  bool isImageLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormBloc(getIt<AbstractEntriesRepo>())
        ..add(
          LoadEntryEvent(
            getIt<Preferences>().getData('token').toString(),
            widget.id,
          ),
        ),
      child: BlocConsumer<FormBloc, form_state.FormState>(
        listener: (context, state) async {
          if (state is form_state.FormError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          } else if (state is form_state.FormSubmitted) {
            FocusScope.of(context).unfocus();
            await Future.delayed(Duration(milliseconds: 500));
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => state.screen == 'next'
                      ? FormScreen5(
                          id: widget.id,
                        )
                      : HomePage()),
              (route) => false,
            );
          }
        },
        builder: (context, state) {
          if (state is form_state.FormLoading) {
            return Scaffold(
                backgroundColor: Colors.white,
                body: Center(child: CircularProgressIndicator()));
          } else if (state is form_state.FormLoaded) {
            return body(context, state.entryData);
          }
          return Scaffold(backgroundColor: Colors.white);
        },
      ),
    );
  }

  Widget body(BuildContext context, GetEntryResponseData? entryData) {
    final data = entryData?.data?.atticInsulation;

    bool validate() {
      if (data?.onWorkOrder == null) {
        setState(() {
          isEmptyOnWorkOrder = true;
        });
        return false;
      } else if (isImageLoading) {
        Snackbar().showSnackBar(context, "Image is uploading, please wait");
        return false;
      }
      return true;
    }

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, _) {
        if (!didPop) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen3(id: widget.id),
            ),
            (route) => false,
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              TitleComponent(
                  screen: FormScreen3(id: widget.id),
                  title: 'Attic Insulation',
                  linearProgressValue: 4.0),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RadioButtons(
                        chooseButton: (value) {
                          setState(() {
                            isEmptyOnWorkOrder = false;
                            entryData?.data?.atticInsulation?.onWorkOrder =
                                (value == "Yes");
                          });
                        },
                        isRequired: isEmptyOnWorkOrder,
                        labels: const ['Yes', 'No'],
                        isColumn: false,
                        isSquare: false,
                        title: 'Attic insulation on work order *',
                        activeChoice: data?.onWorkOrder == null
                            ? 0
                            : data!.onWorkOrder!
                                ? 1
                                : 2,
                      ),
                      InputField(
                        title: 'Notes on inaccurate measurements',
                        maxLines: 5,
                        hintText: data?.inaccurateMeasurementsNotes,
                        onChanged: (value) {
                          setState(() {
                            entryData?.data?.atticInsulation
                                ?.inaccurateMeasurementsNotes = value;
                          });
                        },
                      ),
                      InputField(
                        title: 'Attic insulation notes',
                        maxLines: 5,
                        hintText: data?.notes,
                        onChanged: (value) {
                          setState(() {
                            entryData?.data?.atticInsulation?.notes = value;
                          });
                        },
                      ),
                      ImageInputField(
                        isRequired: false,
                        label: 'Attic Insulation Quality - Misc Pictures',
                        url: data?.atticInsulationPic,
                        doesItExpand: true,
                        addImage: (String url) {
                          setState(() {
                            entryData?.data?.atticInsulation?.atticInsulationPic
                                ?.add(url);
                          });
                        },
                        deleteImage: (index) {
                          setState(() {
                            entryData?.data?.atticInsulation?.atticInsulationPic
                                ?.removeAt(index);
                          });
                        },
                        isImageLoading: (bool isLoading) {
                          setState(() {
                            isImageLoading = isLoading;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              BottomButtons(
                validate: validate,
                id: widget.id,
                patchData: attic.PatchAtticInsulationData(
                  atticInsulation: attic.AtticInsulation(
                    onWorkOrder: data?.onWorkOrder,
                    inaccurateMeasurementsNotes:
                        data?.inaccurateMeasurementsNotes,
                    notes: data?.notes,
                    atticInsulationPic: data?.atticInsulationPic != null &&
                            data!.atticInsulationPic!.isNotEmpty
                        ? data.atticInsulationPic
                        : [],
                  ),
                ).toJson(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
