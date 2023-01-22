import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PageWeb extends StatefulWidget {
  const PageWeb({Key? key}) : super(key: key);

  @override
  State<PageWeb> createState() => _webState();
}

class _webState extends State<PageWeb> {
  bool isLoading = true;
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Text("Site web d'universiapolis"),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              WebView(
                initialUrl: 'https://universiapolis-laayoune.ma/',
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (controller) {
                  this.controller = controller;
                },
                onPageStarted: (url) {
                  print('page Started : $url');
                  Future.delayed(const Duration(milliseconds: 1000), () {
                    setState(() {
                      isLoading = false;
                    });
                  });
                },
                onPageFinished: (url) {
                  print('finished');
                  controller.runJavascript(
                      "document.getElementsByTagName('header')[0].style.display='none'");
                  controller.runJavascript(
                      "document.getElementsByTagName('footer')[0].style.display='none'");
                },
              ),
              if (isLoading)
                const Center(
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: CircularProgressIndicator(),
                  ),
                )
            ],
          ),
        ),

      ),
    );
  }
}
