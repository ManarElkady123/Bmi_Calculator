// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmicalculator/FirstScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
    );
  }
}

// Severe Thinness	< 16
// Moderate Thinness	16 - 17
// Mild Thinness	17 - 18.5
// Normal	18.5 - 25
// Overweight	25 - 30
// Obese Class I	30 - 35
// Obese Class II	35 - 40
// Obese Class III	> 40

class Secondscreen extends StatelessWidget {
  Secondscreen({super.key , required this.result});
  final double result ;
  String getClassfication(){
    if(result < 16){
      return 'Severe Thinness';
    }
    else if(result>=16 && result<17){
      return 'Moderate Thinness' ;
    }
    else if(result>=17 && result<18.5){
      return 'Mild Thinness' ;
    }
    else if(result>=18.5 && result<25){
      return 'Normal' ;
    }
    else if(result>=25 && result<30){
    return 'Overweight' ;
    }
    else if(result>=30 && result<35){
      return ' Obese Class I' ;
    }
    else if(result>=35 && result<40){
      return 'Obese Class II' ;
    }
    else {
      return 'Obese Class III' ; 
    }
  }

  String getSentencse(){
    if(result < 16){
      return 'Your Body Mass Index indicates Severe Thinness.Its  important to seek medical advice and work on a plan to reach a healthier weight.';
    }
    else if(result>=16 && result<17){
      return 'Your BMI falls under Moderate Thinness. Consider adjusting your diet and lifestyle to improve your overall health.' ;
    }
    else if(result>=17 && result<18.5){
      return 'Your BMI shows Mild Thinness. Incorporating more nutrient-dense foods into your diet could help you reach a healthier range.' ;
    }
    else if(result>=18.5 && result<25){
      return 'Your Body Weight is absolutely normal, keep up the great work in maintaining a healthy lifestyle!' ;
    }
    else if(result>=25 && result<30){
    return 'You are classified as Overweight. Its a good time to assess your current habits and aim for a more balanced approach to your health.' ;
    }
    else if(result>=30 && result<35){
      return ' Your BMI indicates Obesity Class I. Consulting with a healthcare provider can help you make the necessary changes to improve your well-being.' ;
    }
    else if(result>=35 && result<40){
      return 'Your BMI falls under Obesity Class II. Its important to take steps toward a healthier lifestyle, with guidance from a medical professional.' ;
    }
    else {
      return 'You are classified as Obese Class III. Seeking medical assistance can help you create a personalized plan to manage your weight and enhance your overall health' ; 
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 51, 51),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 51, 51, 51),
        foregroundColor: Colors.white,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.of(context)
        //         .push(MaterialPageRoute(builder: (context) => FirstScreen()));
        //   },
        //   icon: Icon(Icons.arrow_back),
        //   color: Colors.white,
        // ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Your Result',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(30),
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.grey[700],
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  getClassfication() ,
                 // 'NORMAL',
                  style: TextStyle(
                    color: Colors.green[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  result.toStringAsFixed(3) ,
                  //'18.5',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  getSentencse() ,
                  // 'Your Body Weight is absolutely normal , keep going',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.pinkAccent[700])),
                onPressed: () {
                  Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => FirstScreen()));
                },
                child: Text(
                  'Recalculate',
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
