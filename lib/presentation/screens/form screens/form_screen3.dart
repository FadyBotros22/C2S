import '../../widgets/bottom_buttons.dart';
import '../../widgets/image_input_field.dart';
import '../../widgets/input_field.dart';
import '../../widgets/radio_buttons.dart';
import '../../widgets/snakbar.dart';
import '../../widgets/title_component.dart';
import 'package:c2s/data/json_data/get_entry_response_data.dart';
import 'package:c2s/data/json_data/patch%20data/patch_air_sealing_data.dart'
    as air_sealing;
import '../home_page.dart';
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
          if (state is form_state.FormSubmitted) {
            FocusScope.of(context).unfocus();
            await Future.delayed(Duration(milliseconds: 500));
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => state.screen == 'next'
                      ? FormScreen4(
                          id: widget.id,
                        )
                      : HomePage()),
              (route) => false,
            );
          } else if (state is form_state.NavigateBack) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => FormScreen2(id: widget.id),
              ),
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
          } else if (state is form_state.FormError) {
            return body(context, state.entryData);
          }
          return Scaffold(backgroundColor: Colors.white);
        },
      ),
    );
  }

  Widget body(BuildContext context, GetEntryResponseData? entryData) {
    if (context.read<FormBloc>().state is form_state.FormError) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Snackbar().showSnackBar(
          context,
          (context.read<FormBloc>().state as form_state.FormError).message,
        );
      });
    }

    final data = entryData?.data?.airSealing;
    bool validate() {
      if (data?.onWorkOrder == null) {
        setState(() {
          isEmptyOnWorkOrder = true;
        });
        return false;
      } else if (isImageLoading) {
        Snackbar().showSnackBar(context, "Image is uploading, please wait");
        return false;
      } else if (data?.sealingQualityPic == null ||
          data!.sealingQualityPic!.isEmpty) {
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
        body: SafeArea(
          child: Column(
            children: [
              TitleComponent(
                title: 'Air Sealing',
                linearProgressValue: 3.0,
                formBloc: context.read<FormBloc>(),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RadioButtons(
                        chooseButton: (value) {
                          setState(() {
                            isEmptyOnWorkOrder = false;
                            entryData?.data?.airSealing?.onWorkOrder =
                                (value == "Yes");
                          });
                        },
                        isRequired: isEmptyOnWorkOrder,
                        labels: ['Yes', 'No'],
                        isColumn: false,
                        isSquare: false,
                        title: 'Air Sealing on work order? *',
                        activeChoice: data?.onWorkOrder == null
                            ? 0
                            : data!.onWorkOrder!
                                ? 1
                                : 2,
                      ),
                      InputField(
                        title: 'Air sealing notes',
                        hintText: data?.notes,
                        maxLines: 5,
                        onChanged: (value) {
                          setState(() {
                            entryData?.data?.airSealing?.notes = value;
                          });
                        },
                      ),
                      ImageInputField(
                        isRequired: isEmptyAirSealingPics,
                        label: 'Air sealing quality pictures *',
                        doesItExpand: true,
                        url: data?.sealingQualityPic,
                        addImage: (String url) {
                          setState(() {
                            entryData?.data?.airSealing?.sealingQualityPic
                                ?.add(url);
                            isEmptyAirSealingPics = false;
                          });
                        },
                        deleteImage: (index) {
                          setState(() {
                            entryData?.data?.airSealing?.sealingQualityPic
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
                patchData: air_sealing.PatchAirSealingData(
                  airSealing: air_sealing.AirSealing(
                    onWorkOrder: data?.onWorkOrder,
                    notes: data?.notes,
                    sealingQualityPic: data?.sealingQualityPic!,
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
