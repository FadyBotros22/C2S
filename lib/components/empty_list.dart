import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: SvgPicture.asset(
                  'assets/icons/ic_create_form.svg',
                  width: 29.73,
                  height: 29.75,
                ),
              ),
              const Text('Crete new Entry')
            ],
          )
        ],
      ),
    );
  }
}
