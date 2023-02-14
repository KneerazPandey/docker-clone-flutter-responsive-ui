import 'package:docker_clone/constants/colors.dart';
import 'package:docker_clone/constants/dimenstion.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LargeHomeBody extends StatefulWidget {
  const LargeHomeBody({Key? key}) : super(key: key);

  @override
  State<LargeHomeBody> createState() => _LargeHomeBodyState();
}

class _LargeHomeBodyState extends State<LargeHomeBody> {
  bool hoveredGiveFeedback = false;
  bool hoveredLearnMore = false;
  bool hoveredExplored = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      color: background,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Containers',
                      style: TextStyle(
                        color: light,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      children: [
                        InkWell(
                          onHover: (bool hovering) {
                            setState(() {
                              hoveredGiveFeedback =
                                  hoveredGiveFeedback ? false : true;
                            });
                          },
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                'Give Feedback',
                                style: TextStyle(
                                  color: !hoveredGiveFeedback
                                      ? lightBlue
                                      : Colors.blueAccent,
                                  fontSize: 12,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Icon(
                                Icons.message_rounded,
                                size: 12,
                                color: !hoveredGiveFeedback
                                    ? lightBlue
                                    : Colors.blueAccent,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 80,
                  child: Wrap(
                    children: [
                      const Text(
                        'A container packages up code and its dependencies so the application runs quickly and reliably from one computing environment to another.',
                        style: TextStyle(
                          color: secondaryText,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: 6),
                      InkWell(
                        onTap: () {},
                        onHover: (bool hover) {
                          setState(() {
                            hoveredLearnMore = hoveredLearnMore ? false : true;
                          });
                        },
                        child: Text(
                          'Learn more',
                          style: TextStyle(
                            color: !hoveredLearnMore
                                ? lightBlue
                                : Colors.lightBlue,
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Expanded(
                child: ListView(
                  children: [
                    const SizedBox(height: 30),
                    Center(
                      child: Image.asset(
                        'assets/icon.png',
                        width: 200,
                        scale: 1,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Center(
                      child: Text(
                        'Run a Sample Container',
                        style: TextStyle(
                          color: light,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 38),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                        child: Text(
                          'Try running a container: Copy and paste this command into your terminal and then come back',
                          style: TextStyle(
                            color: light,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: Container(
                        width: size.width < smallScreenSize
                            ? size.width - 200
                            : size.width * 0.5,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: const BoxDecoration(
                          color: dark,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            SelectableText(
                              'docker run -d -p 80:80 docker/getting-started',
                              style: TextStyle(
                                color: light,
                              ),
                            ),
                            Icon(
                              Icons.file_copy,
                              color: darkBlue,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: InkWell(
                        onTap: () {},
                        onHover: (bool hovered) {
                          setState(() {
                            hoveredExplored = hoveredExplored ? false : true;
                          });
                        },
                        child: SelectableText(
                          'Explore more in the Docker Docs',
                          style: TextStyle(
                            color:
                                !hoveredExplored ? lightBlue : Colors.lightBlue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 46),
                    const Center(
                      child: Text(
                        'Guides',
                        style: TextStyle(
                          color: light,
                          fontSize: 19,
                        ),
                      ),
                    ),
                    GridView(
                      shrinkWrap: true,
                      dragStartBehavior: DragStartBehavior.down,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: size.width < 820
                            ? 1
                            : size.width > 820 && size.width < 1300
                                ? 2
                                : 3,
                        childAspectRatio: size.width < 820
                            ? (size.width / 1) / 300
                            : size.width > 820 && size.width < 1300
                                ? (size.width / 2) / 340
                                : (size.width / 3) / 320,
                        mainAxisExtent: size.width < 820
                            ? 280
                            : size.width > 820 && size.width < 1300
                                ? 300
                                : 280,
                      ),
                      scrollDirection: Axis.vertical,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: const Material(
                            elevation: 10,
                            color: background,
                            child: DockerContainerItem(
                              image: 'assets/redis.png',
                              heading: 'Redis',
                              description:
                                  'An open-source in-memory key-value store that functions as a data structure server.',
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: const Material(
                            elevation: 10,
                            color: background,
                            child: DockerContainerItem(
                              image: 'assets/nginx.png',
                              heading: 'NGINX',
                              description:
                                  'An open-source web server, reverse proxy, load balancer and HTTP cache.',
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: const Material(
                            elevation: 10,
                            color: background,
                            child: DockerContainerItem(
                              image: 'assets/postgress.png',
                              heading: 'PostgreSQL',
                              description:
                                  'An open-source object-relational transactional ACID-compliant SQL database.',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.width < smallScreenSize ? 50 : 20),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 24,
              color: bodyFooter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Text(
                      'RAM 1.5 GB',
                      style: TextStyle(
                        color: secondaryText,
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(width: 25),
                    const Text(
                      'CPU 0.23 %',
                      style: TextStyle(
                        color: secondaryText,
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(width: 40),
                    const Icon(
                      FontAwesomeIcons.lightbulb,
                      color: secondaryText,
                      size: 12,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Not connected to Hub',
                      style: TextStyle(
                        color: secondaryText,
                        fontSize: 11,
                      ),
                    ),
                    const Spacer(flex: 4),
                    const Icon(
                      Icons.info_outline_rounded,
                      color: Colors.orange,
                      size: 12,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'v4.15.0',
                      style: TextStyle(
                        color: secondaryText,
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      FontAwesomeIcons.lightbulb,
                      color: secondaryText,
                      size: 12,
                    ),
                    SizedBox(width: size.width > largeScreenSize ? 220 : 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DockerContainerItem extends StatelessWidget {
  final String image;
  final String heading;
  final String description;

  const DockerContainerItem(
      {Key? key,
      required this.image,
      required this.heading,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: container,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
          width: 0.6,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    image,
                    width: 95,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    heading,
                    style: const TextStyle(
                      color: light,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.arrowUpRightFromSquare,
                        color: lightBlue,
                        size: 18,
                      ),
                      const SizedBox(width: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF11423B),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          FontAwesomeIcons.award,
                          color: Color.fromARGB(255, 214, 198, 198),
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                description,
                style: const TextStyle(
                  color: secondaryText,
                  fontSize: 13,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: button,
                    ),
                    child: const Text(
                      'Run',
                      style: TextStyle(
                        color: light,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
