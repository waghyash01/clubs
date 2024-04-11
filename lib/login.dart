import 'package:club_integration/dashboard.dart';
import 'package:flutter/material.dart';

class PatientLoginPage extends StatelessWidget {
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPatientIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: const Color(0xff2F2E40),
        title: Text(
          "User Login",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            //textStyle: TextStyle(color: Colors.white),
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              margin: EdgeInsets.all(100),
              
              child: Padding(child: Image(image:
              AssetImage('assets/uni.jpg'),),
              padding: EdgeInsets.all(50),),),
            TextFormField(
              controller: loginEmailController,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              controller: loginPatientIdController,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff2F2E40),
                foregroundColor: Colors.white,
              ),
              onPressed: () async {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Patientpage(),));
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
