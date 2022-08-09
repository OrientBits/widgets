import 'package:cached_network_image/cached_network_image.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [

          const ListTile(
            title: Text("Image from asset:"),
          ),
          Card(
            elevation: 2,
            child: Image.asset("assets/flutterimg.jpg"),
          ),
          const SizedBox(
            height: 20,
          ),

          const ListTile(title: Text("Image from url:")),
          Card(
            elevation: 2,
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: "https://litslink.com/wp-content/uploads/2020/03/flutter-app-featured.png",
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          const ListTile(
            title: Text("Cached network image:"),
          ),
          Card(
            elevation: 2,
            child: CachedNetworkImage(
              imageUrl:
                  "https://repository-images.githubusercontent.com/202429703/46f9db00-c4f6-11ea-875b-d58023058142",
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ListTile(title: Text("GIF from asset:")),
          Card(
            elevation: 2,
            child: Image.asset(
              "assets/demo_giff.gif",
              // scale: 1.0,
              // height: 300,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ListTile(
            title: Text("WEBP from package in assets:"),
          ),
          Card(elevation: 2, child: Image.asset("assets/webp_demo.webp")),
          const SizedBox(
            height: 20,
          ),
          const ListTile(
            title: Text("Extended Image"),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              elevation: 2,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: ExtendedImage.network(
                "https://uploads-ssl.webflow.com/5f841209f4e71b2d70034471/6078b650748b8558d46ffb7f_Flutter%20app%20development.png",
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(Radius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
