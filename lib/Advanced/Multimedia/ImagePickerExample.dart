import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerExample extends StatefulWidget {
  const ImagePickerExample({Key? key}) : super(key: key);

  @override
  State<ImagePickerExample> createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
  File? _imageFile;
  final _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ImagePicker Example"),
      ),
      body: ListView(
        children: [
          ButtonBar(
            children: [
              IconButton(
                  onPressed: () {
                    Fluttertoast.showToast(msg: "Photo from Camera");
                    _pickImageFromCamera();
                  },
                  icon: const Icon(Icons.photo_camera)),

              IconButton(
                  onPressed: () {
                    Fluttertoast.showToast(msg: "Photo from Gallery");
                    _pickImageFromGallery();
                  },
                  icon: const Icon(Icons.photo)),
            ],
          ),

          if (_imageFile == null) const Placeholder() else Image.file(_imageFile!),
        ],
      ),
    );
  }

  Future<void> _pickImageFromGallery() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  Future<void> _pickImageFromCamera() async {
    Fluttertoast.showToast(msg: "Picking photo from camera");
    final pickedFile = await _picker.getImage(source: ImageSource.camera);
    Fluttertoast.showToast(msg: "Picked photo from camera");
    if(pickedFile != null){
      setState(() {
        Fluttertoast.showToast(msg: "Setting state");
        _imageFile = File(pickedFile.path);
      });
    }
  }
}
