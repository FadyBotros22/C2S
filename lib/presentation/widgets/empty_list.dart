import 'package:c2s/presentation/screens/form%20screens/form_screen1.dart';
import 'package:c2s/presentation/widgets/snakbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';
import '../screens/home_page.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({super.key, this.errorMess});
  final String? errorMess;

  @override
  Widget build(BuildContext context) {
    if (errorMess != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Snackbar().showSnackBar(
          context,
          errorMess!,
        );
      });
    }
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          Future.delayed(Duration(seconds: 2));
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
            (route) => false,
          );
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 46, left: 16),
                child: const Text(
                  'Entries',
                  style: kAppBarTitleTextStyle,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
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
                            onPressed: () => Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FormScreen1()),
                              (route) => false,
                            ),
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
        ),
      ),
    );
  }
}
