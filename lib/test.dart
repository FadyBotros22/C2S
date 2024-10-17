import 'package:flutter/material.dart';

class ImagePickerDemo extends StatefulWidget {
  const ImagePickerDemo({super.key});

  @override
  _ImagePickerDemoState createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Import Images Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://c2s-dev.s3.us-east-2.amazonaws.com/public/1729076855465?X-Amz-Date=20241016T110737Z&X-Amz-SignedHeaders=host&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIAWR57FN5XXQHYVL65%2F20241016%2Fus-east-2%2Fs3%2Faws4_request&X-Amz-Expires=900&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEKv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMiJHMEUCIFrcsjMXRHUYhDKVpSsg0qvvXfgc7Zs6U3lO1ZewA936AiEApBG2GswXV7SROFwla1jXLQx3PAQr5%2FZtVipnrodtzgwqyAUIFBADGgw0NTA4MzU2MDc0MDciDI%2BHGMuJB4ABxkObXyqlBUM1llGUqgJrdv86mxsVF4Vk7N%2BGJK89KOX2yMrB5SZMSAI61wnCkovCl3iuLv0o%2FWmy%2BvurQTSYdnK%2BE%2FrfevYOShbktylorTDTGuC6Nyh0czuk8wjc%2FCk4ZQ92chLCnxFhA727KzyctCIcfX%2BWLxjWDDh2kxFGrDv%2F9uLhX67ZikYTms6Oq7b94Q%2BR4M1S2Dl3a5LL18FQwT4bdUhD2jYDyuGRMb5iyT%2BIqoKTFaKI6QDJtD9ATZeH8Bwk6b6qq%2FHMbeQMX9z9NXgJchlITyUrcTuw%2BkbTb2dQ%2BkIS%2FMIIvHEh7ldlhN5eUdjK2bApa8y48csQUMht8ZAK70Y%2BRZLKW6OruOMEJ44UbBxsKtNfX08r%2BEAmDPCqL9ZBH0kZL%2B70vnhUOkPOgRtSV6vUuOEJVz%2B6hJQUawIZmMzNcezeDlt%2BvsgqUrMAOdyINioCnwt7cp1M85QSlpRpp5vbTS4', // Display the selected image
            )
          ],
        ),
      ),
    );
  }
}
