// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';

// class InAppWebViewPage extends StatefulWidget {
//   const InAppWebViewPage({super.key});

//   @override
//   State<InAppWebViewPage> createState() => _InAppWebViewPageState();
// }

// class _InAppWebViewPageState extends State<InAppWebViewPage> {
//   InAppWebViewController? webViewController;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("WebView"),
//       ),
//       body: InAppWebView(
//         initialUrlRequest: URLRequest(url: WebUri("https://flutter.dev")),
//         onWebViewCreated: (controller) {
//           webViewController = controller;
//         },
//         onReceivedError: (controller, url, code, message) {
//           print("Load Error: $message");
//         },
//         onReceivedHttpError: (controller, url, code, message) {
//           print("HTTP Load Error: $message");
//         },
//       ),
//     );
//   }
// }
