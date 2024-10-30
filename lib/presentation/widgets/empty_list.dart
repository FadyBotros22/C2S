import 'package:c2s/domain/blocs/home_bloc/home_bloc.dart';
import 'package:c2s/domain/blocs/home_bloc/home_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({super.key, required this.homeBloc});
  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 36, left: 16),
            child: const Text(
              'Entries',
              style: kAppBarTitleTextStyle,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/ic_form.svg',
                  width: 97.51,
                  height: 120,
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () => homeBloc.add(CreateNewEntry()),
                        child: SvgPicture.asset(
                          'assets/icons/ic_create_form.svg',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      const Text(
                        'Create new entry',
                        style: kEmptyListTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
