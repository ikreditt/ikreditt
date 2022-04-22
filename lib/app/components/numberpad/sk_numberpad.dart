import 'package:flutter/material.dart';

class SkNumberPad extends StatefulWidget {
  final Color bgColor;
  final Color textColor;
  final ValueChanged<String> selectedNo;
  final ValueChanged<String> doneSelected;

  const SkNumberPad(
      {Key? key,
      this.bgColor = Colors.white,
      this.textColor = Colors.black,
      required this.selectedNo,
      required this.doneSelected})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SkNumberPadScreen();
  }
}

class SkNumberPadScreen extends State<SkNumberPad> {
  String previousText = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: numberPadWidget(),
    );
  }

  Align numberPadWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * .4,
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
          ),
        ),
        child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1.4,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          children: <Widget>[
            _numberButton("1"),
            _numberButton("2"),
            _numberButton("3"),
            _numberButton("4"),
            _numberButton("5"),
            _numberButton("6"),
            _numberButton("7"),
            _numberButton("8"),
            _numberButton("9"),
            _icon(Icons.done, false),
            _numberButton("0"),
            _icon(Icons.backspace, true),
          ],
        ),
      ),
    );
  }

  Widget _numberButton(String text) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          previousText = previousText + text;
          widget.selectedNo(previousText);
        },
        child: Container(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: 'HKGrotesk',
                fontWeight: FontWeight.w500,
                fontSize: 25.0,
                color: widget.textColor),
          ),
        ),
      ),
    );
  }

  Widget _icon(IconData icon, bool isBackSpace) {
    return Container(
        color: Colors.transparent,
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: MaterialButton(
                onPressed: () {
                  if (isBackSpace) {
                    // BackSpace
                    if (previousText.isNotEmpty) {
                      var removedText =
                          previousText.substring(0, previousText.length - 1);
                      previousText = removedText;
                      widget.selectedNo(removedText);
                    } else {
                      widget.selectedNo("");
                    }
                  } else {
                    // Done

                    widget.doneSelected("Done Selected");
                  }
                },
                child: Icon(icon, color: widget.textColor),
              ),
            ),
          ],
        ));
  }
}
