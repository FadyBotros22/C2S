import 'package:c2s/components/image_display.dart';
import 'package:flutter/material.dart';
import 'package:c2s/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'image_upload.dart';

class ImageInputField extends StatefulWidget {
  const ImageInputField({
    super.key,
    required this.label,
    required this.doesItExpand,
    this.addImage,
    this.url,
    required this.deleteImage,
    required this.isRequired,
  });
  final String label;
  final bool doesItExpand;
  final Function? addImage;
  final Function deleteImage;
  final List<String>? url;
  final bool isRequired;

  @override
  State<ImageInputField> createState() => _ImageInputFieldState();
}

class _ImageInputFieldState extends State<ImageInputField> {
  final ImagePicker _picker = ImagePicker();

  bool loading = false;

  Future<void> _pickImage() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      loading = true;
    });
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);

      if (await imageFile.exists()) {
        try {
          File compressedImageFile = await compressImage(imageFile);
          String url = await uploadFile(compressedImageFile);
          widget.addImage!(url);
        } catch (e) {
          print('Error during image upload: $e');
        }
      } else {
        print('File does not exist');
      }
      setState(() {
        loading = false;
      });
    }
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
                          style: kAppBarSecondaryTitleTextStyle,
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
                    style: kAppBarSecondaryTitleTextStyle,
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
                        if (loading == true) const CircularProgressIndicator(),
                        if (loading == true) const SizedBox(width: 20),
                        picInput
                      ],
                    ),
                  ),
                if (!widget.doesItExpand)
                  widget.url!.isEmpty
                      ? loading
                          ? const CircularProgressIndicator()
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
