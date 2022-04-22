import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:ikreditt/app/utils/navigation.dart';
import 'package:ikreditt/app/views/loan/photo/see_pic.dart';

class TakePicture extends StatefulWidget {
  const TakePicture({Key? key, required this.cameras}) : super(key: key);
  final List<CameraDescription> cameras;

  @override
  State<TakePicture> createState() => _TakePictureState();
}

class _TakePictureState extends State<TakePicture> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.cameras.first,
      ResolutionPreset.ultraHigh,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: CameraPreview(
              _controller,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: InkWell(
                        onTap: () => takePic(),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black26,
                          ),
                          child: const Icon(
                            Icons.camera_alt_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return const Center(
            child: SizedBox(),
          );
        }
      },
    );
  }

  takePic() async {
    try {
      await _initializeControllerFuture;
      final image = await _controller.takePicture();
      await goTo(context, SeeIdPic(imagePath: image.path));
    } catch (e) {
      print(e);
    }
  }
}
