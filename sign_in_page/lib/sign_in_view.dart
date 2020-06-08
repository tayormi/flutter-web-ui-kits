import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_in_page/views/centered_view.dart';

class SignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widthOfScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFf5f6fa),
      body: CenteredView(
          child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        height: 600,
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0, right: 60.0, left: 60.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Sign-In',
                      style: GoogleFonts.openSans(
                          fontSize: 25,
                          color: Color(0xFF232e4b),
                          fontWeight: FontWeight.w600)),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Email or phone number',
                          style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: Color(0xFF232e4b),
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
                          fillColor: Colors.white,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFC0C4CC),
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFC0C4CC),
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFC0C4CC),
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          hintStyle: GoogleFonts.openSans(
                              fontSize: 13,
                              color: Color(0xFFC0C4CC),
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
                            color: Color(0xFF232e4b),
                            fontWeight: FontWeight.w500)),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Conditions of Use ',
                          style: GoogleFonts.openSans(
                              fontSize: 12,
                              textStyle: TextStyle(
                                  color: Color(0xFF232e4b),
                                  fontWeight: FontWeight.bold))),
                      TextSpan(
                          text: 'and',
                          style: GoogleFonts.openSans(
                              fontSize: 12,
                              textStyle: TextStyle(
                                  color: Color(0xFF232e4b),
                                  fontWeight: FontWeight.w500))),
                      TextSpan(
                          text: ' Privacy Notice',
                          style: GoogleFonts.openSans(
                              fontSize: 12,
                              textStyle: TextStyle(
                                  color: Color(0xFF232e4b),
                                  fontWeight: FontWeight.bold)))
                    ]),
              ),
              SizedBox(
                height: 50,
              ),
              Text('New on our platform?',
                  style: GoogleFonts.openSans(
                      fontSize: 13,
                      color: Color(0xFF232e4b),
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
                    side: BorderSide(width: 2, style: BorderStyle.solid, color: Color(0xFF232e4b).withOpacity(0.5)),
                  ),
                  height: 55,
                  color: Colors.white,
                  child: Text('Create an Account',
                      style: GoogleFonts.openSans(
                          fontSize: 15,
                          color: Color(0xFF232e4b),
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
                              color: Color(0xFFF43C7C),
                              fontWeight: FontWeight.w400)),
                      Text('Privacy Notice',
                          style: GoogleFonts.openSans(
                              fontSize: 12,
                              color: Color(0xFFF43C7C),
                              fontWeight: FontWeight.w400)),
                      Text('Help',
                          style: GoogleFonts.openSans(
                              fontSize: 12,
                              color: Color(0xFFF43C7C),
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
            )
          ],
        ),
      )),
    );
  }
}
