import 'package:flutter/material.dart';

void main() {
  runApp(Bulb());
}

class Bulb extends StatefulWidget {
  const Bulb({Key key}) : super(key: key);

  @override
  _BulbState createState() => _BulbState();
}

class _BulbState extends State<Bulb> {
  var isBulbOn = false;
  buildBulbImage() {
    if (isBulbOn) {
      return Image.asset('assets/images/bulbOn.jpeg');
    } else {
      return Image.asset('assets/images/bulbOff.jpeg');
    }
  }

  buildText() {
    if (isBulbOn) {
      return const Text('bulb off');
    } else {
      return const Text('bulb on');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildBulbImage(),
              TextButton(
                onPressed: () {
                  setState(() {
                    isBulbOn = !isBulbOn;
                  });
                },
                child: buildText(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
