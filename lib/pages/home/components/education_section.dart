import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/models/education.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

final List<Education> educationList = [
  Education(
    description:
        "I am currently studying BSc in Computer Science at Bangladesh University of Business and Technology.",
    // linkName: "zobayer.dev@gmail.com",
    period: "2020 - PRESENT",
  ),
  Education(
    description:
        "I completed HSC from BAF Shaheen College, Kurmitola in Science, and passed first class.",
    //linkName: "zobayer.dev@gmail.com",
    period: "2017 - 2019",
  ),
  Education(
    description:
        "I completed SSC from Isphani High School in Science, and passed first class.",
    // linkName: "zobayer.dev@gmail.com",
    period: "2016 - 2017",
  ),
  // Education(
  //   description:
  //       "This is a sample education and details about it is stated below. This is a sample education and details about it is stated below",
  //   // linkName: "zobayer.dev@gmail.com",
  //   period: "2016 - 2017",
  // ),
];

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Container(
      alignment: Alignment.center,
      child: ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "EDUCATION",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
                height: 1.3,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Wrap(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 400.0),
                  child: Text(
                    "I have studied from many places in my education life, currently I am studying in Dhaka.",
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: educationList
                        .map(
                          (education) => Container(
                            width: constraints.maxWidth / 2.0 - 20.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  education.period,
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  education.description,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: kCaptionColor,
                                    height: 1.5,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                // MouseRegion(
                                //   cursor: SystemMouseCursors.click,
                                //   child: GestureDetector(
                                //     onTap: () {},
                                //     child: Text(
                                //       education.linkName,
                                //       style: TextStyle(
                                //         color: Colors.white,
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                SizedBox(
                                  height: 40.0,
                                )
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
