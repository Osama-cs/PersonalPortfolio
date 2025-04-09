import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osama_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:osama_portfolio/constants.dart';
import 'package:url_launcher/link.dart';

class WebProjectItem {
  final String image;
  final String title;
  final String description;
  final List<String> techUsed;
  final Link gitRepo;
  final Link website;

  WebProjectItem({
    required this.image,
    required this.title,
    required this.description,
    required this.techUsed,
    required this.gitRepo,
    required this.website,
  });
}

class MobileProjectItem {
  final String image;
  final String title;
  final String description;
  final List<String> techUsed;
  final Link gitRepo;

  MobileProjectItem({
    required this.image,
    required this.title,
    required this.description,
    required this.techUsed,
    required this.gitRepo,
  });
}

final kWebProjectItems = [
  WebProjectItem(
    image: 'images/Running_records_pic.png',
    title: 'Running Records',
    description:
        "This is a website that I used Flutter and Firebase to create. This allows a user to create an account a start-up a timer to track how long they've been running for and once they end the timer, that run gets put into a table that the user can view so they can track their progress.",
    techUsed: [
      'Flutter',
      'Firebase',
    ],
    gitRepo: Link(
      target: LinkTarget.blank,
      uri: Uri.parse("https://github.com/Osama-cs/Running-Records"),
      builder: (BuildContext context, FollowLink? followLink) => FilledButton(
        style: FilledButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          backgroundColor: Colors.cyan.shade300,
        ),
        onPressed: followLink,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 0),
          child: Text(
            "GitHub Repo",
            style: GoogleFonts.openSans(fontSize: 14, color: Colors.white),
          ),
        ),
      ),
    ),
    website: Link(
      target: LinkTarget.blank,
      uri: Uri.parse("https://running-records-14880.web.app/"),
      builder: (BuildContext context, FollowLink? followLink) => FilledButton(
        style: FilledButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          backgroundColor: Colors.cyan.shade300,
        ),
        onPressed: followLink,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 0),
          child: Text(
            "Website",
            style: GoogleFonts.openSans(fontSize: 14, color: Colors.white),
          ),
        ),
      ),
    ),
  ),
  WebProjectItem(
    image: 'images/Shiny_dex_pic.png',
    title: "ShinyDex",
    description:
        "This is a website that uses Remix and the PokeAPI that lets you see each of the shiny Pokémon across the Pokémon games!",
    techUsed: [
      'Remix',
      'PokeAPI',
    ],
    gitRepo: Link(
      target: LinkTarget.blank,
      uri: Uri.parse("https://github.com/Osama-cs/shiny-pokemon-table"),
      builder: (BuildContext context, FollowLink? followLink) => FilledButton(
        style: FilledButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          backgroundColor: Colors.cyan.shade300,
        ),
        onPressed: followLink,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 0),
          child: Text(
            "GitHub Repo",
            style: GoogleFonts.openSans(fontSize: 14, color: Colors.white),
          ),
        ),
      ),
    ),
    website: Link(
      target: LinkTarget.blank,
      uri: Uri.parse("https://shiny-dex.fly.dev/"),
      builder: (BuildContext context, FollowLink? followLink) => FilledButton(
        style: FilledButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          backgroundColor: Colors.cyan.shade300,
        ),
        onPressed: followLink,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 0),
          child: Text(
            "Website",
            style: GoogleFonts.openSans(fontSize: 14),
          ),
        ),
      ),
    ),
  ),
];

final kMobileProjectItems = [
  MobileProjectItem(
    image: 'images/Shipping_Inspection_pic.png',
    title: "Shipping Inspection Application",
    description:
        "This was my final year group project in university. We were tasked by a client to make a shipping inspection application for their company that included AR and video calling functionality. I was tasked to work on the video calling aspect of the application and working on a lot of wire frames of the application.",
    techUsed: [
      "Flutter",
      "Azure",
    ],
    gitRepo: Link(
      target: LinkTarget.blank,
      uri: Uri.parse(
          "https://github.com/Osama-cs/shipping-inspection-application"),
      builder: (BuildContext context, FollowLink? followLink) => FilledButton(
        style: FilledButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          backgroundColor: Colors.cyan.shade300,
        ),
        onPressed: followLink,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 0),
          child: Text(
            "Github Repo",
            style: GoogleFonts.openSans(fontSize: 14),
          ),
        ),
      ),
    ),
  ),
  MobileProjectItem(
    image: 'images/Turning_The_Page_pic.png',
    title: "Turning The Page",
    description:
        "This was my final year project in university. I decided to make a mental health dairy application that would allow users to write diary entires, make to-do lists and update a mood board/calender.",
    techUsed: [
      "Flutter",
      "Firebase",
    ],
    gitRepo: Link(
      target: LinkTarget.blank,
      uri: Uri.parse("https://github.com/Osama-cs/Turning_The_Page"),
      builder: (BuildContext context, FollowLink? followLink) => FilledButton(
        style: FilledButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          backgroundColor: Colors.cyan.shade300,
        ),
        onPressed: followLink,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 0),
          child: Text(
            "Github Repo",
            style: GoogleFonts.openSans(fontSize: 14),
          ),
        ),
      ),
    ),
  ),
];

class ProjectPage extends StatelessWidget {
  const ProjectPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MobileDesktopViewBuilder(
      mobileView: ProjectMobilePage(),
      desktopView: ProjectDesktopPage(),
    );
  }
}

class ProjectDesktopPage extends StatelessWidget {
  const ProjectDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 1900,
      width: kInitWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Projects",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Websites",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final item in kWebProjectItems)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ProjectWebItemBody(item: item),
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Mobile Apps",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final item in kMobileProjectItems)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ProjectMobileItemBody(item: item),
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class ProjectMobileItemBody extends StatelessWidget {
  const ProjectMobileItemBody({
    super.key,
    required this.item,
  });

  final MobileProjectItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.cyan.shade300, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(item.image),
            Divider(
              color: Colors.cyan.shade300,
            ),
            Text(
              textAlign: TextAlign.start,
              item.title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              item.description,
              style: GoogleFonts.openSans(fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                for (final tech in item.techUsed)
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Chip(
                      label: Text(tech),
                    ),
                  ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                item.gitRepo,
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProjectWebItemBody extends StatelessWidget {
  const ProjectWebItemBody({
    super.key,
    required this.item,
  });

  final WebProjectItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.cyan.shade300, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(item.image),
            Divider(
              color: Colors.cyan.shade300,
            ),
            Text(
              item.title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              item.description,
              style: GoogleFonts.openSans(fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                for (final tech in item.techUsed)
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Chip(
                      label: Text(tech),
                    ),
                  ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                item.gitRepo,
                const SizedBox(
                  width: 5,
                ),
                item.website,
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProjectMobilePage extends StatelessWidget {
  const ProjectMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: kInitWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Projects",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Websites",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          for (final item in kWebProjectItems) ProjectWebItemBody(item: item),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Mobile Apps",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          for (final item in kMobileProjectItems)
            ProjectMobileItemBody(item: item),
        ],
      ),
    );
  }
}
