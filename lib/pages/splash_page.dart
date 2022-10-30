import 'package:flutter/material.dart';

import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState(){
    _closeSplash();
    super.initState();
  }

  Future<void> _closeSplash() async{
    Future.delayed(const Duration(seconds: 5), () async {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const LoginPage()));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child:
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children:
              const <Widget>[

                Image(image: AssetImage('assets/images/bogota_logo.png')),
                SizedBox(
                    height: 20
                ),
                CircularProgressIndicator(

                backgroundColor: Colors.red,
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                strokeWidth: 5,
               ),
            ],


          ),



      ),
    );
  }
}
