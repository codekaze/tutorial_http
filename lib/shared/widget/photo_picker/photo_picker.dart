import 'package:demo_app/core.dart';
import 'dart:convert';
import 'dart:io';

import 'package:filepicker_windows/filepicker_windows.dart';
import 'package:flutter/material.dart';

class PhotoPicker extends StatefulWidget {
  final String photoUrl;
  PhotoPicker({
    this.photoUrl,
  });

  @override
  _PhotoPickerState createState() => _PhotoPickerState();
}

class _PhotoPickerState extends State<PhotoPicker> {
  File pickedFile;

  getUserPhoto() {
    if (widget.photoUrl == null) return null;
    return NetworkImage(widget.photoUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: InkWell(
        onTap: () async {
          final file = OpenFilePicker()
            ..filterSpecification = {
              'Word Document (*.doc)': '*.doc',
              'Web Page (*.htm; *.html)': '*.htm;*.html',
              'Text Document (*.txt)': '*.txt',
              'Photo (*.png)': '*.png',
              'All Files': '*.*'
            }
            ..defaultFilterIndex = 3
            ..defaultExtension = 'doc'
            ..title = 'Select a document';

          pickedFile = file.getFile();
          if (pickedFile == null) return;

          showLoading();
          var response = await https.uploadFile(
            file: pickedFile,
            name: "photo",
            url: "http://localhost:3026/api/upload",
          );

          var responseString = await response.stream.bytesToString();
          // var obj = json.decode(await response.stream.bytesToString());
          var obj = jsonDecode(responseString);
          print("responseString: $responseString");
          print(obj["filename"]);
          hideLoading();
          setState(() {});
        },
        child: CircleAvatar(
          backgroundColor: Colors.grey[200],
          backgroundImage: pickedFile != null
              ? FileImage(
                  pickedFile,
                )
              : getUserPhoto(),
          child: pickedFile == null
              ? Container(
                  child: Center(
                    child: widget.photoUrl == null
                        ? Icon(
                            Icons.photo,
                            color: theme.mainColor,
                          )
                        : null,
                  ),
                )
              : Container(),
        ),
      ),
    );
  }
}
