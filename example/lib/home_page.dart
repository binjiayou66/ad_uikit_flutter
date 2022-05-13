import 'package:ad_uikit_flutter/ad_uikit_flutter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: ListView(
          children: [
            ADPlainButton(
              text: '防抖文本按钮',
              height: 44,
              textStyle: ADTextStyle.content2White,
              decoration: const BoxDecoration(
                color: ADColors.primary,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              onPressed: () async {
                print('111111111');
                await Future.delayed(const Duration(seconds: 2));
                print('222222222');
              },
            ),
            Container(
              height: 44,
              child: ADTextField(),
            ),
            ADPlainButton(
              text: 'Popup',
              height: 44,
              onPressed: () {
                ADPopup.popChecker(
                  context,
                  leadingTitle: '取消',
                  title: '航海王',
                  tailTitle: '确定',
                  data: ['路飞', '香吉士', '娜美'],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
