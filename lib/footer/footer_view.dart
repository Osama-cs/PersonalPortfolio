import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:osama_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:osama_portfolio/routing/routes.dart';
import 'package:url_launcher/url_launcher_string.dart';

class FooterView extends StatelessWidget {
  const FooterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MobileDesktopViewBuilder(
      desktopView: FooterDesktopView(),
      mobileView: FooterMobileView(),
    );
  }
}

class FooterDesktopView extends StatelessWidget {
  const FooterDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final currentYear = DateTime.now().year;
    return Container(
      height: 100,
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("© Osama Ilyas $currentYear -- "),
          InkWell(
            mouseCursor: MaterialStateMouseCursor.clickable,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () => launchUrlString(
                'https://github.com/Osama-cs/PersonalPortfolio'),
            child: const Text(
              "Source Code",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              backgroundColor: Colors.cyan.shade300,
            ),
            onPressed: () {
              try {
                Navigator.pushNamed(context, Routes.plainPage);
              } catch (e) {
                print('Error navigating to route: $e');
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 0),
              child: Text(
                "Github Repo",
                style: GoogleFonts.openSans(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FooterMobileView extends StatelessWidget {
  const FooterMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final currentYear = DateTime.now().year;
    return Container(
      height: 100,
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("© Osama Ilyas $currentYear -- "),
          InkWell(
            mouseCursor: MaterialStateMouseCursor.clickable,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () => launchUrlString(
                'https://github.com/Osama-cs/PersonalPortfolio'),
            child: const Text(
              "Source Code",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
