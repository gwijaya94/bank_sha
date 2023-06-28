import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/index.dart';
import 'package:bank_sha/utils/index.dart';
import 'package:flutter/material.dart';

class PinPage extends StatelessWidget {
  const PinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = getScreenSize(context);
    double padHorizontal = 58;
    double gap = 40;

    return Screen(
      backgroundColor: darkBgColor,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: padHorizontal,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sha Pin",
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 72,
              ),
              SizedBox(
                width: screenSize.width - padHorizontal * 2,
                child: TextFormField(
                  obscureText: true,
                  cursorColor: greyColor,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16,
                  ),
                  maxLength: 6,
                  textAlign: TextAlign.center,
                  obscuringCharacter: "*",
                ),
              ),
              const SizedBox(
                height: 66,
              ),
              Wrap(
                spacing: gap,
                runSpacing: gap,
                children: [
                  CustomInputButton(
                    title: "1",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: "2",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: "3",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: "4",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: "5",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: "6",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: "7",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: "8",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    title: "9",
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CustomInputButton(
                    title: "0",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    onTap: () {},
                    contentWidget: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
