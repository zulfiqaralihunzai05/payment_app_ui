import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: height,
          width: width,
          color: Colors.indigo[50],
          child: Column(
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                height: height * 0.07,
                width: width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                      ),
                    ),
                    Image.asset(
                      "assets/images/notification.png",
                      height: height * 0.03,
                      width: width * 0.1,
                    ),
                  ],
                ),
              ),
              Text(
                "Payment",
                style: GoogleFonts.lexend(
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: height * 0.28,
                  width: width * 0.56,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.grey.shade400, width: width * 0.01),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SimpleCircularProgressBar(
                          backStrokeWidth: width * 0.03,
                          size: width * 0.38,
                          progressColors: const [Color(0xfff18732)],
                          backColor: Colors.grey.shade100,
                        ),
                      ),
                      Align(
                        child: Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade400,
                                offset: Offset(0, 0),
                                blurRadius: 20,
                                spreadRadius: 3)
                          ], shape: BoxShape.circle, color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                  fontSize: width * 0.03,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "RM 290",
                                style: TextStyle(
                                    fontSize: width * 0.045,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              SizedBox(
                width: width * 0.9,
                child: Text(
                  "Payment History",
                  style: GoogleFonts.lexend(
                      fontSize: width * 0.034,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              SizedBox(
                height: height * 0.4,
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              height: height * 0.075,
                              width: width * 0.15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.amber,
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/bitcoin-logo.png",
                                  height: height * 0.04,
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                                height: height * 0.075,
                                width: width * 0.68,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.07,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                        vertical: height * 0.015,
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Bitcoin",
                                            style: GoogleFonts.lexend(
                                                fontSize: width * 0.034,
                                                fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            "0.8000 RM",
                                            style: GoogleFonts.lexend(
                                                fontSize: width * 0.03,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey
                                            ),
                                          ),

                                        ],
                                      ),
                                      ),
                                      Text(
                                        "+ RM 290",
                                        style: GoogleFonts.lexend(
                                            fontSize: width * 0.035,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.green
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              height: height * 0.075,
                              width: width * 0.15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff332dd7),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/ripple.png",
                                  height: height * 0.04,
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                                height: height * 0.075,
                                width: width * 0.68,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.07,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: height * 0.015,
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Ripple",
                                              style: GoogleFonts.lexend(
                                                fontSize: width * 0.034,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              "0.8000 87C",
                                              style: GoogleFonts.lexend(
                                                  fontSize: width * 0.03,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                      Text(
                                        "- RM 100",
                                        style: GoogleFonts.lexend(
                                            fontSize: width * 0.035,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.red
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              height: height * 0.075,
                              width: width * 0.15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.green,
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/letter.png",
                                  height: height * 0.04,
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              height: height * 0.075,
                              width: width * 0.68,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.07,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: height * 0.015,
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Litcoin",
                                            style: GoogleFonts.lexend(
                                              fontSize: width * 0.034,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "0.8000 87C",
                                            style: GoogleFonts.lexend(
                                                fontSize: width * 0.03,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Text(
                                      "+ RM 50",
                                      style: GoogleFonts.lexend(
                                          fontSize: width * 0.035,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.green
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              height: height * 0.075,
                              width: width * 0.15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/cryptocurrency.png",
                                  height: height * 0.04,
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              height: height * 0.075,
                              width: width * 0.68,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.07,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: height * 0.015,
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Dash",
                                            style: GoogleFonts.lexend(
                                              fontSize: width * 0.034,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "0.8000 87C",
                                            style: GoogleFonts.lexend(
                                                fontSize: width * 0.03,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "+ RM 110",
                                      style: GoogleFonts.lexend(
                                          fontSize: width * 0.035,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.green
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
