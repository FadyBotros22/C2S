import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:c2s/components/image_display.dart';
import 'package:flutter/material.dart';
import 'package:c2s/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'image_upload.dart';
import 'snakbar.dart';

Snackbar snackBar = Snackbar();

class ImageInputField extends StatefulWidget {
  const ImageInputField({
    super.key,
    required this.label,
    required this.doesItExpand,
    this.addImage,
    this.url,
    required this.deleteImage,
    required this.isRequired,
    required this.isImageLoading,
  });

  final String label;
  final bool doesItExpand;
  final Function? addImage;
  final Function deleteImage;
  final List<String>? url;
  final bool isRequired;
  final Function isImageLoading;

  @override
  State<ImageInputField> createState() => _ImageInputFieldState();
}

class _ImageInputFieldState extends State<ImageInputField> {
  final ImagePicker _picker = ImagePicker();

  bool loading = false;

  Future<void> _pickImage() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    widget.isImageLoading(true);
    setState(() {
      loading = true;
    });

    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      String? url;

      try {
        if (await imageFile.exists()) {
          // Compress the image
          File compressedImageFile = await compressImage(imageFile);

          url = await uploadFile(compressedImageFile);

          if (url == '' && mounted) {
            snackBar.showSnackBar(
                context, 'Network error, try to connect to an active network');
          } else {
            widget.addImage!(url); // Add image URL
          }
        }
      } on NetworkException catch (_) {
        if (mounted) {
          snackBar.showSnackBar(
              context, 'Network error occurred, please try again.');
        }
      } catch (e) {
        if (mounted) {
          snackBar.showSnackBar(context, 'An error occurred: $e');
        }
      }
    } else {
      if (mounted) {
        snackBar.showSnackBar(context, 'No image selected.');
      }
    }

    setState(() {
      loading = false;
    });
    widget.isImageLoading(false);
  }

  void deleteUrl(index) {
    widget.deleteImage(index);
  }

  @override
  Widget build(BuildContext context) {
    Widget picInput = TextButton(
      style: const ButtonStyle(
        padding: WidgetStatePropertyAll(
          EdgeInsets.only(left: 0, top: 10),
        ),
        overlayColor: WidgetStateColor.transparent,
      ),
      onPressed: _pickImage,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/icons/Group_53.svg', height: 66, width: 66),
          const SizedBox(width: 10),
          const Text(
            'Choose File',
            style: kParagraphTextStyle,
          ),
        ],
      ),
    );

    return Column(
      children: [
        Container(
          width: double.infinity,
          color: const Color(0xffFAFAFA),
          child: Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.label.contains('*'))
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: widget.label.replaceAll('*', ''),
                          style: kQuestionTitleTextStyle,
                        ),
                        const TextSpan(
                          text: '*',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                if (!widget.label.contains('*'))
                  Text(
                    widget.label,
                    style: kQuestionTitleTextStyle,
                  ),
                if (widget.doesItExpand)
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        if (widget.url != null)
                          ...widget.url!.asMap().entries.map((url) {
                            return ImageDisplay(
                              url: url.value,
                              deleteImage: () {
                                deleteUrl(url.key);
                              },
                            );
                          }),
                        if (loading == true)
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 10, left: 10, right: 40),
                            child: CircularProgressIndicator(),
                          ),
                        picInput
                      ],
                    ),
                  ),
                if (!widget.doesItExpand)
                  widget.url!.isEmpty
                      ? loading
                          ? Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 20, left: 10),
                                  child: CircularProgressIndicator(),
                                ),
                                SizedBox(height: 20),
                              ],
                            )
                          : picInput
                      : ImageDisplay(
                          url: widget.url![0],
                          deleteImage: () {
                            deleteUrl(0);
                          },
                        ),
                if (widget.isRequired)
                  Column(
                    children: [
                      SizedBox(height: 10),
                      const Text(
                        'This field is required',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
        const Divider(
          indent: 0,
          color: Color(0xffDCDCDC),
          height: 0,
        ),
      ],
    );
  }
}
