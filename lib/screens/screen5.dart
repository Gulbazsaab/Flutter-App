import 'package:flutter/material.dart';
import 'package:interview/screens/screen2.dart';
import 'package:provider/provider.dart';
import '../store/userProvider.dart';

class Screen5 extends StatefulWidget {
  const Screen5({Key key}) : super(key: key);

  @override
  _Screen5State createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {



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
                Text('Countdown' ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Color(0xff707070)),),
              ],
            ),
            Hero(
              tag: 'logo',
              child: Container(
                child: Image.asset('images/img1.png'),
                height: 150.0,
              ),
            ),
            Text('Thankyou!', style: TextStyle(fontSize: 37,fontWeight: FontWeight.bold, color: Color(0xff02AD58)),),
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
