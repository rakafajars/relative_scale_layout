import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with RelativeScale {
  @override
  Widget build(BuildContext context) {
    initRelativeScaler(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Relative Scale'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            alignment: Alignment.center,
            height: sy(150),
            width: sy(150),
            color: Colors.red,
            margin: EdgeInsets.only(
              left: sy(24),
              right: sy(24),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.ac_unit_outlined,
                  size: sy(24),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'No Relative Scale asdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddadasdasdadasdadasdadadads',
                    style: TextStyle(fontSize: 11),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'No Relative Scale asdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddadasdasdadasdadasdadadads',
                    style: TextStyle(
                      fontSize: sy(11),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            alignment: Alignment.center,
            height: 150,
            width: 150,
            color: Colors.red,
            margin: EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            child: Row(
              children: [
                Icon(Icons.ac_unit_outlined),
                Expanded(
                  flex: 1,
                  child: Text(
                    'No Relative Scale asdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddadasdasdadasdadasdadadads',
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'No Relative Scale asdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddadasdasdadasdadasdadadads',
                    style: TextStyle(fontSize: 11),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
