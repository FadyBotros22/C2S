import '../../../data/models/get_entry_models/air_sealing/air_sealing.dart';
import '../../../data/models/patch_models/patch_air_sealing/patch_air_sealing.dart';
import '../../widgets/bottom_buttons.dart';
import '../../widgets/image_input_field.dart';
import '../../widgets/input_field.dart';
import '../../widgets/radio_buttons.dart';
import '../../widgets/snakbar.dart';
import '../../widgets/title_component.dart';
import 'form_screen2.dart';
import 'form_screen4.dart';
import 'package:flutter/material.dart';
import 'package:c2s/statics/preferences.dart';
import '../../../domain/repositories/abstract_entries_repo.dart';
import '../../../injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/blocs/form_bloc/form_bloc.dart';
import '../../../domain/blocs/form_bloc/form_event.dart';
import '../../../domain/blocs/form_bloc/form_state.dart' as form_state;

class FormScreen3 extends StatefulWidget {
  const FormScreen3({super.key, required this.id});
  final String id;

  @override
  State<FormScreen3> createState() => _FormScreen3State();
}

class _FormScreen3State extends State<FormScreen3> {
  bool isEmptyOnWorkOrder = false;
  bool isEmptyAirSealingPics = false;
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
            if (state.onNavigate == true) {
              FocusScope.of(context).unfocus();
              await Future.delayed(Duration(milliseconds: 500));
              if (context.mounted) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => state.screen),
                  (route) => false,
                );
              }
            }
          },
          builder: body),
    );
  }

  Widget body(BuildContext context, state) {
    if ((state as form_state.FormScreen).errorMessage != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Snackbar().showSnackBar(
          context,
          state.errorMessage!,
        );
      });
    }

    final entryData = state.entryData?.data?.airSealing;

    bool validate() {
      if (entryData?.onWorkOrder == null) {
        setState(() {
          isEmptyOnWorkOrder = true;
        });
        return false;
      } else if (isImageLoading) {
        Snackbar().showSnackBar(context, "Image is uploading, please wait");
        return false;
      } else if (entryData?.sealingQualityPic == null ||
          entryData!.sealingQualityPic!.isEmpty) {
        setState(() {
          isEmptyAirSealingPics = true;
        });
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
              builder: (context) => FormScreen2(id: widget.id),
            ),
            (route) => false,
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: RefreshIndicator(
          onRefresh: () async {
            Future.delayed(Duration(seconds: 2));
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => FormScreen3(
                  id: widget.id,
                ),
              ),
              (route) => false,
            );
          },
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleComponent(
                  title: 'Air Sealing',
                  linearProgressValue: 3.0,
                  screen: FormScreen2(id: widget.id),
                ),
                state.isLoading == true
                    ? Center(child: CircularProgressIndicator())
                    : Expanded(
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RadioButtons(
                                chooseButton: (value) {
                                  setState(() {
                                    isEmptyOnWorkOrder = false;
                                    context.read<FormBloc>().add(UpdateData(
                                        airOnWorkOrder: (value == "Yes")));
                                  });
                                },
                                isRequired: isEmptyOnWorkOrder,
                                labels: ['Yes', 'No'],
                                isColumn: false,
                                isSquare: false,
                                title: 'Air Sealing on work order? *',
                                activeChoice: entryData?.onWorkOrder == null
                                    ? 0
                                    : entryData!.onWorkOrder!
                                        ? 1
                                        : 2,
                              ),
                              InputField(
                                title: 'Air sealing notes',
                                hintText: entryData?.notes,
                                maxLines: 5,
                                onChanged: (value) {
                                  context
                                      .read<FormBloc>()
                                      .add(UpdateData(airNotes: value));
                                },
                              ),
                              ImageInputField(
                                isRequired: isEmptyAirSealingPics,
                                label: 'Air sealing quality pictures *',
                                doesItExpand: true,
                                url: entryData?.sealingQualityPic,
                                addImage: (String url) {
                                  final updatedSealingPic = List<String>.from(
                                      entryData?.sealingQualityPic ?? []);
                                  updatedSealingPic.add(url);
                                  setState(() {
                                    context.read<FormBloc>().add(UpdateData(
                                        sealingQualityPic: updatedSealingPic));
                                    isEmptyAirSealingPics = false;
                                  });
                                },
                                deleteImage: (index) {
                                  final updatedSealingPic = List<String>.from(
                                      entryData?.sealingQualityPic ?? []);
                                  updatedSealingPic.removeAt(index);
                                  context.read<FormBloc>().add(UpdateData(
                                      sealingQualityPic: updatedSealingPic));
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
                  nextScreen: FormScreen4(id: widget.id),
                  validate: validate,
                  id: widget.id,
                  patchData: PatchAirSealingData(
                    airSealing: AirSealing(
                      onWorkOrder: entryData?.onWorkOrder,
                      notes: entryData?.notes,
                      sealingQualityPic: entryData?.sealingQualityPic,
                    ),
                  ).toJson(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
