import 'package:flutter/material.dart';
import 'package:gezabeautyexpertapp/utils/colors.dart';
import 'package:gezabeautyexpertapp/utils/custom_style.dart';
import 'package:gezabeautyexpertapp/utils/dimensions.dart';
import 'package:gezabeautyexpertapp/utils/strings.dart';
import 'package:gezabeautyexpertapp/data/message.dart';
import 'package:gezabeautyexpertapp/widgets/back_widget.dart';
import 'package:gezabeautyexpertapp/data/request.dart';

class MessagingScreen extends StatefulWidget {
  final Request request;

  const MessagingScreen({super.key, required this.request});

  @override
  _MessagingScreenState createState() => _MessagingScreenState();
}

class _MessagingScreenState extends State<MessagingScreen> {
  TextEditingController messageController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.primaryColor,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              profileWidget(context),
              messagingWidget(context),
              typeMessageWidget(context),
              const BackWidget()
            ],
          ),
        ),
      ),
    );
  }

  Widget profileWidget(BuildContext context) {
    return Positioned(
      top: 150.0,
      left: 0,
      right: 0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -40,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Align(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            widget.request.image,
                            height: 80.0,
                          ),
                        ),
                        Text(
                          widget.request.name,
                          style: TextStyle(
                            color: CustomColor.redDarkColor,
                            fontSize: Dimensions.largeTextSize,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          widget.request.type,
                          style: TextStyle(
                            color: CustomColor.greyColor,
                            fontSize: Dimensions.smallTextSize,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: Dimensions.heightSize * 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  messagingWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.marginSize,
          right: Dimensions.marginSize,
          top: 230.0,
          bottom: 100),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: MessageList.list().length,
            itemBuilder: (context, index) {
              Message message = MessageList.list()[index];
              return Padding(
                  padding: const EdgeInsets.only(
                    bottom: Dimensions.heightSize,
                  ),
                  child: message.type != 'sender'
                      ? Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: Dimensions.marginSize,
                                  left: Dimensions.marginSize),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: CustomColor.greenLightColor,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(30.0),
                                        bottomLeft: Radius.circular(30.0),
                                        bottomRight: Radius.circular(30.0))),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: Dimensions.marginSize,
                                        right: Dimensions.marginSize,
                                        top: Dimensions.heightSize,
                                        bottom: Dimensions.heightSize),
                                    child: Text(
                                      message.text,
                                      style: TextStyle(
                                        color: CustomColor.greyColor,
                                        fontSize: Dimensions.defaultTextSize,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: Dimensions.marginSize),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  'seen message',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.3),
                                    fontSize: Dimensions.extraSmallTextSize,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            )
                          ],
                        )
                      : Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      'assets/images/user.png',
                                      height: 20,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      message.name,
                                      style: TextStyle(
                                        color: CustomColor.redDarkColor,
                                        fontSize: Dimensions.smallTextSize,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                    Text(
                                      message.time,
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.3),
                                        fontSize: Dimensions.extraSmallTextSize,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: Dimensions.marginSize,
                                  right: Dimensions.marginSize),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: CustomColor.yellowLightColor,
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(30.0),
                                        bottomLeft: Radius.circular(30.0),
                                        bottomRight: Radius.circular(30.0))),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: Dimensions.marginSize,
                                        right: Dimensions.marginSize,
                                        top: Dimensions.heightSize,
                                        bottom: Dimensions.heightSize),
                                    child: Text(
                                      message.text,
                                      style: TextStyle(
                                        color: CustomColor.greyColor,
                                        fontSize: Dimensions.defaultTextSize,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ));
            }),
      ),
    );
  }

  Widget typeMessageWidget(BuildContext context) {
    return Positioned(
        bottom: 10,
        right: 0,
        left: 0,
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.marginSize),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                border: Border.all(
                  color: Colors.black.withOpacity(0.1),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: Dimensions.marginSize),
                  child: Row(
                    children: [
                      Icon(
                        Icons.emoji_emotions_outlined,
                        color: CustomColor.redDarkColor,
                        size: 20,
                      ),
                      Icon(
                        Icons.image,
                        color: CustomColor.redDarkColor,
                        size: 20,
                      ),
                      Form(
                          key: formKey,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: TextFormField(
                              style: CustomStyle.textStyle,
                              controller: messageController,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                hintText: Strings.typeMessage,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                labelStyle: CustomStyle.textStyle,
                                filled: true,
                                fillColor: Colors.white,
                                hintStyle: CustomStyle.textStyle,
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                IconButton(
                    icon: const Icon(
                      Icons.send,
                      color: CustomColor.primaryColor,
                      size: 18,
                    ),
                    onPressed: () {})
              ],
            ),
          ),
        ));
  }
}
