import 'package:c2s/domain/blocs/form_bloc/form_event.dart';
import 'package:flutter/material.dart';
import 'package:c2s/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../domain/blocs/form_bloc/form_bloc.dart';
import 'linear_progress.dart';

class TitleComponent extends StatelessWidget {
  const TitleComponent({
    super.key,
    required this.title,
    required this.linearProgressValue,
    required this.formBloc,
  });
  final String title;
  final double linearProgressValue;
  final FormBloc formBloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
                child: TextButton(
                  style: TextButton.styleFrom(
                      alignment: AlignmentDirectional.centerStart,
                      padding: const EdgeInsets.all(0),
                      fixedSize: const Size(10, 10)),
                  onPressed: () => formBloc.add(BackButtonClicked()),
                  child: SvgPicture.asset('assets/icons/ic_back.svg'),
                ),
              ),
              const SizedBox(width: 5),
              Text(
                title,
                style: kTitleTextStyle,
              ),
            ],
          ),
          // const SizedBox(height: 10),
          LinearProgress(linearProgressValue: linearProgressValue),
        ],
      ),
    );
  }
}
