import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:bmical/screens/History/historyScreen.dart';
import 'package:bmical/screens/HomeScreen/ProviderClass/itemsProviderClass.dart';
import 'package:bmical/screens/Profile/profileScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../Activities/activities_screen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  var iconsList = [Icons.history, Icons.person];

  final _controller = NotchBottomBarController();


  @override
  void initState() {
    super.initState();
    _controller.index=1;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Consumer<itemsProviderClass>(
      builder: (context, ProviderClass, child) {
        return Scaffold(
            backgroundColor: const Color(0xff272727),
            extendBody: true,
            bottomNavigationBar: AnimatedNotchBottomBar(
              color: Color(0xff272727),
              notchColor: Color(0xffC4F649),
              notchBottomBarController: _controller,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.history,
                    color: Color(0xffC4F649),
                  ),
                  activeItem: Icon(
                    Icons.history,
                    //size: 24,
                    color: Colors.black,
                  ),
                  itemLabel: 'History',
                ),
                BottomBarItem(
                  inActiveItem:
                      Image(image: AssetImage('assets/images/App Icon.png')),
                  activeItem: Image(
                    image: AssetImage('assets/images/App Icon.png'),
                  ),
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person_outlined,
                    color: Color(0xffC4F649),
                  ),
                  activeItem: Icon(
                    Icons.person_outlined,
                    color: Colors.black,
                  ),
                  itemLabel: 'Profile',
                ),
              ],
              shadowElevation: 12,
              showShadow: true,
              itemLabelStyle: GoogleFonts.montserrat(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),
              onTap: (int value) {
                print(value);
                ProviderClass.setIndex(value);
              },
              removeMargins: true,
              durationInMilliSeconds: 300,
              showLabel: true,
              kIconSize: height * 0.028,
              kBottomRadius: 0,
            ),
            body: ProviderClass.getIndex() == 0
                ? const historyScreen()
                : ProviderClass.getIndex() == 1
                    ? const activites_screen()
                    : const profileScreen());
      },
    );
  }
}

// floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
// floatingActionButton: FloatingActionButton(
//   shape: const CircleBorder(),
//   onPressed: () {},
//   child: ClipOval(
//     child: Image.asset(
//       'assets/images/App Icon.png',
//       fit: BoxFit.cover,
//       width: width * 0.16,
//       height: height * 0.16,
//     ),
//   ),
// ),
