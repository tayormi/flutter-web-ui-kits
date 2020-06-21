import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_in_page/views/centered_view.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ScaffoldWidget extends StatelessWidget {

  final double widthOfScreen;
  final Color mainBackgroundColor;
  final Color boxDecorationColor;
  final Color signInTextColor;
  final Color emailTextColor;
  final Color textFieldBorderColor;
  final Color hintTextColor;
  final Color richTextColor;
  final Color newOnOurPlatformColor;
  final Color roundedRectangularBorderColor;
  final Color materialButtonColor;
  final Color materialButtonTextColor;
  final Color bottomTextColor;

  ScaffoldWidget({this.widthOfScreen, this.mainBackgroundColor, this.boxDecorationColor,
  this.signInTextColor, this.emailTextColor, this.textFieldBorderColor, this.hintTextColor,
  this.richTextColor, this.newOnOurPlatformColor, this.roundedRectangularBorderColor,
  this.materialButtonColor, this.materialButtonTextColor, this.bottomTextColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E21),
      body: CenteredView(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(5)),
            height: 800,
            width: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 60.0),
                      child: ToggleSwitch(
                        minWidth: 60.0,
                        initialLabelIndex: 1,
                        activeBgColor: Color(0xFFF43C7C),
                        activeTextColor: Colors.white,
                        inactiveBgColor: Colors.grey,
                        inactiveTextColor: Colors.grey[900],
                        labels: ['Light', 'Dark'],
                        onToggle: (index) {

//                          print('switched to: $index');
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 60.0, left: 60.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Sign-In',
                          style: GoogleFonts.openSans(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Email or phone number',
                              style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w600)),
                          Text('Need Help?',
                              style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: Color(0xFFF43C7C),
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 50,
                        width: widthOfScreen,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 20),
                              filled: true,
                              fillColor: Colors.black,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF8C8C94),
                                  width: 1.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF8C8C94),
                                  width: 1.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF8C8C94),
                                  width: 1.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              hintStyle: GoogleFonts.openSans(
                                  fontSize: 13,
                                  color: Colors.white30,
                                  fontWeight: FontWeight.w600),
                              hintText: 'Enter your email address or phone number'),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      MaterialButton(
                          onPressed: () {},
                          elevation: 0,
                          minWidth: widthOfScreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(width: 0, style: BorderStyle.none),
                          ),
                          height: 55,
                          color: Color(0xFFF43C7C),
                          child: Text('Continue',
                              style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600))),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'By continuing, you agree to our ',
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF8C8C94),
                                    fontWeight: FontWeight.w500)),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Conditions of Use ',
                                  style: GoogleFonts.openSans(
                                      fontSize: 12,
                                      textStyle: TextStyle(
                                          color: Color(0xFF8C9494),
                                          fontWeight: FontWeight.bold))),
                              TextSpan(
                                  text: 'and',
                                  style: GoogleFonts.openSans(
                                      fontSize: 12,
                                      textStyle: TextStyle(
                                          color: Color(0xFF8C8C94),
                                          fontWeight: FontWeight.w500))),
                              TextSpan(
                                  text: ' Privacy Notice',
                                  style: GoogleFonts.openSans(
                                      fontSize: 12,
                                      textStyle: TextStyle(
                                          color: Color(0xFF8C9494),
                                          fontWeight: FontWeight.bold)))
                            ]),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text('New on our platform?',
                          style: GoogleFonts.openSans(
                              fontSize: 13,
                              color: Color(0xFF8C9494),
                              fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 8,
                      ),
                      MaterialButton(
                          onPressed: () {},
                          elevation: 0,
                          minWidth: widthOfScreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(width: 2, style: BorderStyle.solid, color: Color(0xFFF43C7C).withOpacity(0.5)),
                          ),
                          height: 55,
                          color: Colors.black54,
                          child: Text('Create an Account',
                              style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  color: Color(0xFF8C9494),
                                  fontWeight: FontWeight.w600))),
                    ],
                  ),
                ),

                SizedBox(
                  height: 50,
                ),
                Divider(
                  color: Color(0xFF232e4b).withOpacity(0.3),
                  height: 2,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, right: 60.0, left: 60.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Conditions of Use',
                          style: GoogleFonts.openSans(
                              fontSize: 12,
                              color: Color(0xFF8C8C94),
                              fontWeight: FontWeight.w400)),
                      Text('Privacy Notice',
                          style: GoogleFonts.openSans(
                              fontSize: 12,
                              color: Color(0xFF8C8C94),
                              fontWeight: FontWeight.w400)),
                      Text('Help',
                          style: GoogleFonts.openSans(
                              fontSize: 12,
                              color: Color(0xFF8C8C94),
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          )),
    );
  }
}
