import 'package:flutter/material.dart';
import 'package:kos_cozy/pages/home_page.dart';
import 'package:kos_cozy/theme.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/eror.png',
                width: 300,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Where are you going?',
                style: blackTextStyle.copyWith(
                    fontSize: 24,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Seems like page that you were\nrequested is already gone',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 210,
                height: 50,
                child: ElevatedButton(
                  child: Text(
                    'Back To home',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                    ),
                        (route)=>false);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(purpleColor),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
