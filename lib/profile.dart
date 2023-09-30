import 'package:assignment_888/styleproperty.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: isPortrait
          ? SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                      aspectRatio: 1,
                      child: ClipOval(
                        child: Image.network(
                          "https://www.zdnet.com/a/img/resize/ba1b1ab92085d777ab5e313b34c66a94b7aa1236/2023/06/05/79a43eb8-ce38-488c-8cc0-e04699aaca7f/bing.jpg?auto=webp&width=1280",
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                Column(children: [
                  const Text(
                    "Jhon Doe",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Wrap(
                      children: [
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
                          style: applyStyle(),
                        ),
                        Text(
                          "sed do eiusmod tempor incididunt ut labore et d.",
                          style: applyStyle(),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: GridView.builder(
                        itemCount: 10,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(10),
                            child: Image.network(
                              "https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg",
                              fit: BoxFit.cover,
                            ),
                          );
                        }),
                  ),
                ])
              ]),
            )
          : Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipOval(
                      child: Image.network(
                        "https://www.zdnet.com/a/img/resize/ba1b1ab92085d777ab5e313b34c66a94b7aa1236/2023/06/05/79a43eb8-ce38-488c-8cc0-e04699aaca7f/bing.jpg?auto=webp&width=1280",
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Jhon Doe",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Wrap(
                        children: [
                          Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"),
                          Text(
                              "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: GridView.builder(
                          itemCount: 10,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: const EdgeInsets.all(2),
                              child: Image.network(
                                "https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg",
                                fit: BoxFit.cover,
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ]),
    );
  }
}
