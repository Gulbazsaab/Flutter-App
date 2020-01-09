import 'package:flutter/material.dart';
import 'package:interview/screens/screen2.dart';
import 'package:provider/provider.dart';
import '../store/userProvider.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  void onlogin() async {
      print('hello');
      await Provider.of<ProviderModel>(
        context,
      ).getAllData();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Screen2()),
      );
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffd93e),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 10.0,),
                Text('Session 1', style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 10.0,
                ),
                Text('Swipe up to start Timer' ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Color(0xff707070)),),
              ],
            ),
            GestureDetector(
              onTap: (){
                onlogin();
              },
              child: Hero(
                tag: 'logo',
                child: Container(
                  child: Image.asset('images/img1.png'),
                  height: 150.0,
                ),
              ),
            ),
            Align(alignment: Alignment.bottomRight, child: Padding(
              padding: const EdgeInsets.only(right: 10, bottom: 10),
              child: Text('JOBESK',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18.0),),
            )),
          ],
        ),
      ),
    );
  }
}
