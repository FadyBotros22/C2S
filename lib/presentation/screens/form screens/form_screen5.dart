import 'package:c2s/data/json_data/get_entry_response_data.dart';
import 'package:c2s/data/json_data/patch%20data/patch_wall_insulation_data.dart'
    as insulation;
import 'package:flutter/material.dart';
import 'package:c2s/statics/preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/repositories/abstract_entries_repo.dart';
import '../../../injection_container.dart';
import '../../widgets/bottom_buttons.dart';
import '../../widgets/title_component.dart';
import '../../widgets/input_field.dart';
import '../../widgets/radio_buttons.dart';
import '../home_page.dart';
import 'form_screen4.dart';
import 'form_screen6.dart';
import '../../../domain/blocs/form_bloc/form_bloc.dart';
import '../../../domain/blocs/form_bloc/form_event.dart';
import '../../../domain/blocs/form_bloc/form_state.dart' as form_state;

class FormScreen5 extends StatefulWidget {
  const FormScreen5({super.key, required this.id});
  final String id;

  @override
  State<FormScreen5> createState() => _FormScreen5State();
}

class _FormScreen5State extends State<FormScreen5> {
  bool isEmptyOnWorkOrder = false;

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
                      ? FormScreen6(
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
            return body(state.entryData);
          }
          return Scaffold(backgroundColor: Colors.white);
        },
      ),
    );
  }

  Widget body(GetEntryResponseData? entryData) {
    final data = entryData?.data?.wallInsulation;

    bool validate() {
      if (data?.onWorkOrder == null) {
        setState(() {
          isEmptyOnWorkOrder = true;
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
              builder: (context) => FormScreen4(id: widget.id),
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
                  screen: FormScreen4(id: widget.id),
                  title: 'Wall Insulation',
                  linearProgressValue: 5.0),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RadioButtons(
                        chooseButton: (value) {
                          setState(() {
                            isEmptyOnWorkOrder = false;
                            entryData?.data?.wallInsulation?.onWorkOrder =
                                (value == "Yes");
                          });
                        },
                        isRequired: isEmptyOnWorkOrder,
                        labels: ['Yes', 'No'],
                        isColumn: false,
                        isSquare: false,
                        title: 'Wall insulation on work order *',
                        activeChoice: data?.onWorkOrder == null
                            ? 0
                            : data!.onWorkOrder!
                                ? 1
                                : 2,
                      ),
                      InputField(
                        title: 'Inaccurate wall measurement notes',
                        maxLines: 6,
                        hintText: data?.notes,
                        onChanged: (value) {
                          setState(() {
                            entryData?.data?.wallInsulation?.notes = value;
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
                patchData: insulation.PatchWallInsulationData(
                    wallInsulation: insulation.WallInsulation(
                  onWorkOrder: data?.onWorkOrder,
                  notes: data?.notes,
                )).toJson(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
