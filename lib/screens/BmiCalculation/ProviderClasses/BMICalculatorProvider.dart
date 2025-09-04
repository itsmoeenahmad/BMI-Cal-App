import 'package:flutter/material.dart';

class BMICalculatorProvider extends ChangeNotifier {
  int feet = 0;
  double centimeters = 0.0;
  double inches = 0.0;
  double weightInKg = 0.0;
  double weightInPounds = 0.0;
  double bmi = 0.0;
  String bmiCategory = '';

  void setHeight(int feet, double centimeters) {
    this.feet = feet;
    this.centimeters = centimeters;
    notifyListeners();
  }


  void setHeightInInches(double inches) {
    this.inches = inches;
    notifyListeners();
  }

  void setWeightInKg(double weight) {
    this.weightInKg = weight;
    notifyListeners();
  }

  void setWeightInPounds(double weight) {
    this.weightInPounds = weight;
    notifyListeners();
  }

  void calculateBMI(bool isKgSelected) {
    double heightInMeters;
    double weight;

    if (isKgSelected) {
      // Case I: Height in feet and centimeters and weight in kg
      //heightInMeters = (feet * 12 + centimeters / 2.54) * 0.0254;
      heightInMeters = ((feet * 12) * 0.0254) + (centimeters * 0.01);
      weight = weightInKg;
    } else {
      // Case II: Height in inches and weight in pounds
      heightInMeters = inches * 0.0254;
      weight = weightInPounds * 0.453592;
    }

    bmi = weight / (heightInMeters * heightInMeters);
    bmiCategory = getBMICategory(bmi);
    print('BMI is ${bmi}');
    print('BMI Category is ${bmiCategory}');
    notifyListeners();
  }

  String getBMICategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return 'Normal weight';
    } else if (bmi >= 25 && bmi <= 29.9) {
      return 'Overweight';
    } else {
      return 'Obesity';
    }
  }



}

