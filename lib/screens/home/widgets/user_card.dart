import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_custom_size.dart';
import '../../../common/custom_text_styles.dart';
import '../../../common/widgets/custom_chip.dart';
import '../../../common/widgets/image_list.dart';
import '../../../common/widgets/title_text.dart';
import '../../../helpers/enum.dart';
import '../../../models/user.dart';
import 'user_image_card.dart';

class UserCard extends StatelessWidget {
  final User user;
  final Widget header;

  const UserCard({super.key, required this.user, required this.header});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.black,
        body: CustomScrollView(slivers: [
          SliverAppBar(
            expandedHeight:
                MediaQuery.of(context).size.height, // Full screen height
            backgroundColor: Colors.black,
            flexibleSpace: UserImageCard(
              name: user.name,
              imageUrl: user.image,
              distance: user.distance,
              header: header,
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              SizedBox(
                height: CustomSize.getHeight(24),
              ),
              const TitleText(
                title: "Bio",
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: CustomSize.getWidth(16),
                        bottom: CustomSize.getHeight(32)),
                    child: ExpandableText(user.bio,
                        expandText: 'Read more',
                        maxLines: 5,
                        linkColor: AppColors.white,
                        linkStyle: CustomTextStyles.subHeaderStyle(
                            color: AppColors.white),
                        animation: true,
                        collapseText: 'Read less',
                        collapseOnTextTap: true,
                        style: CustomTextStyles.regularStyle(
                            color: AppColors.white)),
                  )),
              const TitleText(
                title: "About me",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: CustomSize.getWidth(16)),
                  CustomChip(
                    text: user.height,
                    chipType: ChipType.HEIGHT,
                  ),
                  CustomChip(
                    text: user.weight,
                    chipType: ChipType.WEIGHT,
                  )
                ],
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(
                        left: CustomSize.getWidth(16),
                      ),
                      child: const CustomChip(
                        text: "Undergraduate",
                        chipType: ChipType.EDUCATION,
                      ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: CustomSize.getWidth(16)),
                  CustomChip(
                    text: user.isSmoking ? "yes" : "No",
                    chipType: ChipType.SMOKE,
                  ),
                  CustomChip(
                    text: user.isDrinking ? "yes" : "No",
                    chipType: ChipType.ALCOHOL,
                  )
                ],
              ),
              SizedBox(
                  height: CustomSize.getHeight(272),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: CustomSize.getHeight(24)),
                    child: ImageList(
                      imageList: user.imageList,
                    ),
                  )),
              const TitleText(
                title: "My Passions",
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: CustomSize.getWidth(16),
                  ),
                  child: Wrap(
                      spacing: 8,
                      children: List.generate(
                        user.passionList.length,
                        (index) => CustomChip(
                          text: user.passionList[index],
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 8, bottom: 8),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: CustomSize.getHeight(32),
              ),
              InkWell(
                onTap: () {},
                splashColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'View Profile',
                      style: CustomTextStyles.subHeaderStyle(
                          color: AppColors.white),
                    ),
                    const Icon(Icons.arrow_forward_rounded)
                  ],
                ),
              ),
              SizedBox(
                height: CustomSize.getHeight(250),
              )
            ],
          ))
        ]));
  }
}
