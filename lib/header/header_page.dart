import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osama_portfolio/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmallWidth = width < 950;
    final imageWidth = width * 0.47;
    return ResponsiveBuilder(
      builder: (_, size) {
        if (size.isMobile) return const HeaderMobilePage();
        return SizedBox(
          height: 864,
          width: kInitWidth,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(children: [
              const Expanded(
                child: HeaderBody(
                  isMobile: true,
                ),
              ),
              Image.asset(
                'images/header_pic_transparent.png',
                height: isSmallWidth ? imageWidth : 500,
              ),
            ]),
          ),
        );
      },
    );
  }
}

class HeaderBody extends StatelessWidget {
  final bool isMobile;
  const HeaderBody({
    super.key,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmallWidth = width < 950;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            "I'm a Fullstack",
            style: Theme.of(context).textTheme.displayMedium,
            maxLines: 1,
          ),
        ),
        FittedBox(
          child: Text(
            "Developer < / >",
            style: Theme.of(context).textTheme.displayMedium,
            maxLines: 1,
          ),
        ),
        SizedBox(height: isMobile ? 10 : 37),
        AutoSizeText(
          //"Hi",
          "Hi! My name is Osama Ilyas and I'm currently a Full Stack Developer. I have always had an interest in technology and this lead me to Cardiff University to pursue that passion. Since graduating from university, I have been working on different websites which has been great as it gives me a new opportunity to learn something! You can find more information about me by looking at my CV down below and I looking forward to getting in touch with you soon.",
          style: GoogleFonts.openSans(fontSize: isSmallWidth ? 14 : 20),
          maxLines: 10,
        ),
        SizedBox(height: isMobile ? 20 : 40),
        Row(
          children: [
            FilledButton(
              style: FilledButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                backgroundColor: Colors.cyan.shade300,
              ),
              onPressed: () => launchUrlString('https://github.com/Osama-cs'),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: isMobile ? 10 : 17,
                    horizontal: isMobile ? 8 : 15),
                child: const FaIcon(FontAwesomeIcons.github),
              ),
            ),
            SizedBox(width: isMobile ? 10 : 20),
            FilledButton(
              style: FilledButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                backgroundColor: Colors.cyan.shade300,
              ),
              onPressed: () =>
                  launchUrlString('https://www.linkedin.com/in/osama-ilyas-se'),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: isMobile ? 10 : 17,
                    horizontal: isMobile ? 8 : 15),
                child: const FaIcon(FontAwesomeIcons.linkedinIn),
              ),
            ),
          ],
        ),
        SizedBox(height: isMobile ? 10 : 20),
        FilledButton(
          style: FilledButton.styleFrom(
            minimumSize: const Size(190, 40),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            backgroundColor: Colors.cyan.shade300,
          ),
          onPressed: () => launchUrlString(
              'https://drive.google.com/file/d/1bstcCNIEmNY1GidFSv4kwaXnoVbWxuXa/view?usp=sharing'),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: isMobile ? 10 : 17, horizontal: isMobile ? 8 : 15),
            child: Text(
              "My CV",
              style: GoogleFonts.openSans(fontSize: isMobile ? 20 : 24),
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderMobilePage extends StatelessWidget {
  const HeaderMobilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mobileWidth = MediaQuery.of(context).size.width;
    final mobileHeight = MediaQuery.of(context).size.height;
    return Container(
      height: mobileHeight * 1.1,
      width: mobileWidth,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 40,
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              'images/header_pic_transparent.png',
            ),
          ),
          const HeaderBody(
            isMobile: true,
          ),
        ],
      ),
    );
  }
}
