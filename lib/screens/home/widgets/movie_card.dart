import 'package:date_me/screens/home/widgets/cast_list_tile.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_custom_size.dart';
import '../../../common/custom_text_styles.dart';
import '../../../common/widgets/custom_chip.dart';
import '../../../common/widgets/image_list.dart';
import '../../../common/widgets/rating_bar.dart';
import '../../../common/widgets/title_text.dart';
import '../../../models/movie.dart';
import 'user_image_card.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  final Widget header;

  const MovieCard({super.key, required this.movie, required this.header});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height,
            backgroundColor: Colors.black,
            flexibleSpace: UserImageCard(
              name: movie.name,
              imageUrl: movie.image,
              header: header,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: CustomSize.getHeight(24)),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: CustomSize.getWidth(16),
                            bottom: CustomSize.getHeight(32)),
                        child: Row(
                          children: [
                            const CommonRatingBar(
                              initialRating: 4,
                              isDisabled: true,
                              itemSize: 15,
                            ),
                            SizedBox(
                              width: CustomSize.getWidth(16),
                            ),
                            Text("4/5 star rating",
                                style: CustomTextStyles.subHeaderStyle(
                                    fontSize: 12, color: AppColors.white))
                          ],
                        ))),
                const TitleText(
                  title: "Description",
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: CustomSize.getWidth(16),
                          bottom: CustomSize.getHeight(32)),
                      child: ExpandableText(movie.description,
                          expandText: 'see more',
                          maxLines: 5,
                          linkColor: AppColors.white,
                          linkStyle: CustomTextStyles.subHeaderStyle(
                              color: AppColors.white),
                          animation: true,
                          collapseText: 'see less',
                          collapseOnTextTap: true,
                          style: CustomTextStyles.regularStyle(
                              color: AppColors.white)),
                    )),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Watch Trailer',
                        style: CustomTextStyles.subHeaderStyle(
                            color: AppColors.white),
                      ),
                      const Icon(Icons.arrow_forward_rounded)
                    ],
                  ),
                ),
                SizedBox(
                  height: CustomSize.getHeight(32),
                ),
                const TitleText(
                  title: "Photos",
                  isEnableSeeAll: true,
                ),
                SizedBox(
                  height: CustomSize.getHeight(272),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: CustomSize.getHeight(24)),
                    child: ImageList(
                      imageList: movie.imageList,
                    ),
                  ),
                ),
                const TitleText(
                  title: "Cast",
                  isEnableSeeAll: true,
                ),
                SizedBox(
                  height: CustomSize.getHeight(90),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: CustomSize.getWidth(16),
                        ),
                        child: ListView.builder(
                            itemCount: movie.castList.length,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemBuilder: (context, int index) {
                              return CastListTile(cast: movie.castList[index]);
                            }),
                      )),
                ),
                SizedBox(
                  height: CustomSize.getHeight(32),
                ),
                const TitleText(
                  title: "Tags",
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
                          movie.tags.length,
                          (index) => CustomChip(
                            text: movie.tags[index],
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.only(right: 8, bottom: 8),
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: CustomSize.getHeight(250),
                )
              ],
            ),
          ),
        ],
      ),
    );
    // Scaffold(
    //     backgroundColor: Colors.black,
    //     body: SingleChildScrollView(
    //         physics: const ClampingScrollPhysics(),
    //         child: Column(
    //           children: [
    //             UserImageCard(
    //               name: movie.name,
    //               imageUrl: movie.image,
    //               header: header,
    //             ),
    //             SizedBox(
    //               height: CustomSize.getHeight(24),
    //             ),
    //             Align(
    //                 alignment: Alignment.centerLeft,
    //                 child: Padding(
    //                     padding: EdgeInsets.only(
    //                         left: CustomSize.getWidth(16),
    //                         bottom: CustomSize.getHeight(32)),
    //                     child: Row(
    //                       children: [
    //                         const CommonRatingBar(
    //                           initialRating: 4,
    //                           isDisabled: true,
    //                           itemSize: 15,
    //                         ),
    //                         SizedBox(
    //                           width: CustomSize.getWidth(16),
    //                         ),
    //                         Text("4/5 star rating",
    //                             style: CustomTextStyles.subHeaderStyle(
    //                                 fontSize: 12, color: AppColors.white))
    //                       ],
    //                     ))),
    //             const TitleText(
    //               title: "Description",
    //             ),
    //             Align(
    //                 alignment: Alignment.centerLeft,
    //                 child: Padding(
    //                   padding: EdgeInsets.only(
    //                       left: CustomSize.getWidth(16),
    //                       bottom: CustomSize.getHeight(32)),
    //                   child: ExpandableText(movie.description,
    //                       expandText: 'see more',
    //                       maxLines: 5,
    //                       linkColor: AppColors.white,
    //                       linkStyle: CustomTextStyles.subHeaderStyle(
    //                           color: AppColors.white),
    //                       animation: true,
    //                       collapseText: 'see less',
    //                       collapseOnTextTap: true,
    //                       style: CustomTextStyles.regularStyle(
    //                           color: AppColors.white)),
    //                 )),
    //             InkWell(
    //               onTap: () {},
    //               splashColor: Colors.transparent,
    //               splashFactory: NoSplash.splashFactory,
    //               child: Row(
    //                 mainAxisSize: MainAxisSize.min,
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   Text(
    //                     'Watch Trailer',
    //                     style: CustomTextStyles.subHeaderStyle(
    //                         color: AppColors.white),
    //                   ),
    //                   const Icon(Icons.arrow_forward_rounded)
    //                 ],
    //               ),
    //             ),
    //             SizedBox(
    //               height: CustomSize.getHeight(32),
    //             ),
    //             const TitleText(
    //               title: "Photos",
    //               isEnableSeeAll: true,
    //             ),
    //             Consumer<UserProvider>(builder: (context, userProvider, index) {
    //               return Visibility(
    //                 visible: !userProvider.imageLoading,
    //                 child: SizedBox(
    //                   height: CustomSize.getHeight(272),
    //                   child: Padding(
    //                     padding:
    //                         EdgeInsets.only(bottom: CustomSize.getHeight(24)),
    //                     // child: ImageList(
    //                     //   imageList: movie.imageList,
    //                     // ),
    //                   ),
    //                 ),
    //               );
    //             }),
    //             const TitleText(
    //               title: "Cast",
    //               isEnableSeeAll: true,
    //             ),
    //             SizedBox(
    //               height: CustomSize.getHeight(90),
    //               child: Align(
    //                   alignment: Alignment.centerLeft,
    //                   child: Padding(
    //                     padding: EdgeInsets.only(
    //                       left: CustomSize.getWidth(16),
    //                     ),
    //                     child: ListView.builder(
    //                         itemCount: movie.castList.length,
    //                         scrollDirection: Axis.horizontal,
    //                         shrinkWrap: true,
    //                         physics: const ClampingScrollPhysics(),
    //                         itemBuilder: (context, int index) {
    //                           return CastListTile(cast: movie.castList[index]);
    //                         }),
    //                   )),
    //             ),
    //             SizedBox(
    //               height: CustomSize.getHeight(32),
    //             ),
    //             const TitleText(
    //               title: "Tags",
    //             ),
    //             Align(
    //               alignment: Alignment.centerLeft,
    //               child: Padding(
    //                 padding: EdgeInsets.only(
    //                   left: CustomSize.getWidth(16),
    //                 ),
    //                 child: Wrap(
    //                     spacing: 8,
    //                     children: List.generate(
    //                       movie.tags.length,
    //                       (index) => CustomChip(
    //                         text: movie.tags[index],
    //                         padding: const EdgeInsets.all(8),
    //                         margin: const EdgeInsets.only(right: 8, bottom: 8),
    //                       ),
    //                     )),
    //               ),
    //             ),
    //             SizedBox(
    //               height: CustomSize.getHeight(250),
    //             )
    //           ],
    //         )));
  }
}
