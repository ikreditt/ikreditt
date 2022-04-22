import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:ikreditt/app/utils/navigation.dart';
import 'package:ikreditt/app/views/loan/photo/picture.dart';
import 'package:ikreditt/app/views/loan/ref/root.dart';

class LoanIdPhoto extends StatelessWidget {
  const LoanIdPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ID Photo',
          style: Theme.of(context).appBarTheme.toolbarTextStyle,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink.shade200,
              ),
              child: InkWell(
                onTap: () async {
                  final List<CameraDescription> cameras =
                      await availableCameras();
                  // goTo(context, TakePicture(cameras: cameras));
                  goTo(context, LoanRef());
                },
                child: const Icon(
                  Icons.camera_alt_rounded,
                  size: 80,
                  color: Colors.pink,
                ),
              ),
            ),
            Text(
              'Tap to take a photo of your ID',
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}
