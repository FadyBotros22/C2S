import 'snakbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:connectivity_plus/connectivity_plus.dart';

class ImageDisplay extends StatelessWidget {
  const ImageDisplay({
    super.key,
    required this.deleteImage,
    this.url,
  });

  final Function deleteImage;
  final String? url;

  Future<bool> hasNetwork() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult[0] != ConnectivityResult.none;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: hasNetwork(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError || !(snapshot.data ?? false)) {
          Snackbar().showSnackBar(context, "Network Error, try again");
          deleteImage();
          return Container(
            height: 66,
            width: 66,
            color: Colors.grey[300],
            child: Center(
              child: Icon(Icons.error, color: Colors.red),
            ),
          );
        } else {
          return buildImage(context);
        }
      },
    );
  }

  Widget buildImage(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 10, end: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(9.71),
            child: Image.network(
              url!,
              height: 66,
              width: 66,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Snackbar().showSnackBar(context, "Image loading failed");
                  deleteImage();
                });
                return Container(
                  height: 66,
                  width: 66,
                  color: Colors.grey[300],
                  child: Center(
                    child: Icon(Icons.error, color: Colors.red),
                  ),
                );
              },
            ),
          ),
        ),
        Positioned(
          top: -2,
          left: 50,
          child: GestureDetector(
            onTap: () {
              deleteImage();
            },
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(5),
              child: SvgPicture.asset(
                'assets/icons/Group_54.svg',
                width: 18,
                height: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
