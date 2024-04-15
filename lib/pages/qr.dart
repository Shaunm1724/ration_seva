import "package:flutter/material.dart";
import "package:pretty_qr_code/pretty_qr_code.dart";

class QR extends StatelessWidget {
  const QR({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          child: PrettyQrView.data(
            data: 'r7UBbvsmVFpvfLV2hMff',
          ),
        ),
      ),
    );
  }
}

class QR1 extends StatelessWidget {
  const QR1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          child: PrettyQrView.data(
            data: '5Ie4QccsC2YZxZhwJTW7',
          ),
        ),
      ),
    );
  }
}
