import 'package:flutter/cupertino.dart';
import 'package:lazada_clone/utility/colors.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // privacy policy
            Container(
              margin: const EdgeInsets.only(
                top: 15,
              ),
              padding: const EdgeInsets.only(
                left: 20,
              ),
              height: 65,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 249, 39, 93),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'PRIVACY POLICY',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: MyColors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Version dated: 23 April 2024',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: MyColors.white,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ), // privacy policy

            const SizedBox(
              height: 30,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                  '''Lazada understands that our users care about their personal data and how it is collected, used, shared and cared for. We are committed to handling your personal data in accordance with the applicable laws when you use any of the features, functions, mini-apps or mobile games available on our Platform or Services, interact with us via an external service, application or through our customer service agents, or access our Services or our Platform through your computer, mobile device, or any other device with Internet connectivity\nPLEASE READ THIS PRIVACY POLICY CAREFULLY. BY CLICKING OR CHECKING "SIGN UP", "I AGREE TO LAZADA'S PRIVACY POLICY", "I AGREE AND CONSENT TO THE COLLECTION, USE, DISCLOSURE, STORAGE, TRANSFER AND/OR PROCESSING OF MY PERSONAL DATA FOR THE PURPOSE STATED IN, AND UNDER THE TERMS OF, LAZADA'S PRIVACY POLICY" OR SIMILAR STATEMENTS AVAILABLE AT THE LAZADA REGISTRATION PAGE OR IN THE COURSE OF PROVIDING YOU WITH THE SERVICES OR ACCESS TO THE PLATFORM, YOU ACKNOWLEDGE THAT YOU HAVE READ AND UNDERSTOOD THE TERMS OF THIS PRIVACY POLICY AND THAT YOU HAVE AGREED AND CONSENTED TO THE COLLECTION, USE, DISCLOSURE, STORAGE, TRANSFER AND/OR PROCESSING OF YOUR PERSONAL DATA AS DESCRIBED AND UNDER THE TERMS HEREIN. 1. Introduction to this Privacy Policy\n1.1. Lazada and its affiliates (collectively or individually, "Lazada", "we" or "us") take your privacy seriously. Depending on your location, the Lazada entity controlling your personal data will be Lazada South East Asia Pte. Ltd. and/or Recess Company Limited Depending on your use of our Services, there may also be other Lazada entities which you may contract with that may also control your personal data.\n 1.2 In the course of you using Lazada's applications and websites (both web and mobile versions), as well as'''),
            ),
          ],
        ),
      ),
    );
  }
}
