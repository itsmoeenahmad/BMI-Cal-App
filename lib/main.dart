import 'package:bmical/screens/Activities/ProviderClasses/Feet%20&%20CentiMeter%20Class/centiMeterProviderClass.dart';
import 'package:bmical/screens/Activities/ProviderClasses/Feet%20&%20CentiMeter%20Class/feetProviderClass.dart';
import 'package:bmical/screens/Activities/ProviderClasses/Weight%20&%20Age%20Class/ageProviderClass.dart';
import 'package:bmical/screens/Activities/ProviderClasses/Weight%20&%20Age%20Class/weightProviderClass.dart';
import 'package:bmical/screens/Activities/ProviderClasses/genderProviderClass.dart';
import 'package:bmical/screens/Activities/ProviderClasses/poundProviderClass.dart';
import 'package:bmical/screens/Activities/ProviderClasses/radioProviderClass.dart';
import 'package:bmical/screens/Blogs/ProviderClasses/providerClasses.dart';
import 'package:bmical/screens/BmiCalculation/ProviderClasses/BMICalculatorProvider.dart';
import 'package:bmical/screens/BmiCalculation/ProviderClasses/savedAgainProviderClass.dart';
import 'package:bmical/screens/BmiCalculation/ProviderClasses/savedProviderClass.dart';
import 'package:bmical/screens/History/ProviderClass/tapConditionProviderClass.dart';
import 'package:bmical/screens/HomeScreen/ProviderClass/itemsProviderClass.dart';
import 'package:bmical/screens/Profile/ProviderClass/imageProviderClass.dart';
import 'package:bmical/screens/Profile/ProviderClass/loadingProvider.dart';
import 'package:bmical/screens/SplashScreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => radioProviderClass()),
        ChangeNotifierProvider(create: (context) => genderProviderClass()),
        ChangeNotifierProvider(create: (context) => weightProviderClass()),
        ChangeNotifierProvider(create: (context) => ageProviderClass()),
        ChangeNotifierProvider(create: (context) => feetProviderClass()),
        ChangeNotifierProvider(create: (context) => centiMeterProviderClass()),
        ChangeNotifierProvider(create: (context) => InchesProviderClass()),
        ChangeNotifierProvider(create: (context) => BMICalculatorProvider()),
        ChangeNotifierProvider(create: (context) => tapConditionProviderClass()),
        ChangeNotifierProvider(create: (context) => savedProvideClass()),
        ChangeNotifierProvider(create: (context) => loadingProviderClass()),
        ChangeNotifierProvider(create: (context) => blog01ProviderClass()),
        ChangeNotifierProvider(create: (context) => blog02ProviderClass()),
        ChangeNotifierProvider(create: (context) => blog03ProviderClass()),
        ChangeNotifierProvider(create: (context) => blog04ProviderClass()),
        ChangeNotifierProvider(create: (context) => blog05ProviderClass()),
        ChangeNotifierProvider(create: (context) => blog06ProviderClass()),
        ChangeNotifierProvider(create: (context) => blog07ProviderClass()),
        ChangeNotifierProvider(create: (context) => blog08ProviderClass()),
        ChangeNotifierProvider(create: (context) => blog09ProviderClass()),
        ChangeNotifierProvider(create: (context) => blog10ProviderClass()),
        ChangeNotifierProvider(create: (context) => savedAgainProviderClass()),
        ChangeNotifierProvider(create: (context) => itemsProviderClass()),
        ChangeNotifierProvider(create: (context) => imageProviderClass()),
      ],
      child: const MaterialApp(
        title: "BMI Cal",
        debugShowCheckedModeBanner: false,
        home: splash_screen(),
      ),
    );
  }
}
