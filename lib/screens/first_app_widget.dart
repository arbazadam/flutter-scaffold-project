import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as syspaths;

class FirstAppWidget extends StatefulWidget {
  @override
  _FirstAppWidgetState createState() => _FirstAppWidgetState();
}

class _FirstAppWidgetState extends State<FirstAppWidget> {
 
  File _storedImage;

  Future<void> _takePicture() async {
    final picker = ImagePicker();
    try{
    final imageFile = await picker.getImage(
        source: ImageSource.camera, maxWidth: 600, maxHeight: 400);
    setState(() {
      _storedImage = File(imageFile.path);
    });
    final mainPath = await syspaths.getApplicationDocumentsDirectory();
    final fileName = path.basename(imageFile.path);
    final savedImage = await _storedImage.copy('${mainPath.path}/$fileName');
    }
    catch(error)
    {
      showDialog(context: context,builder:(context){return Container(child:Text("Hello"));});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add_comment),
        ),
        drawer: Drawer(),
        appBar: AppBar(),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
              child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("user ipnuts"),
              _storedImage!=null?Image.file(_storedImage):Text("No Image yet"),
            ],
          ))),
          RaisedButton.icon(
            elevation: 0,
            textColor: Colors.orangeAccent,
            label: Text('Add Place'),
            icon: Icon(Icons.add_a_photo),
            onPressed: _takePicture,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          )
        ]));
  }
}
