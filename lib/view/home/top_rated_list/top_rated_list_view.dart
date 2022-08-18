import 'package:architecture_demos/data/response/status.dart';
import 'package:architecture_demos/res/style/text_style.dart';
import 'package:architecture_demos/view/home/up_coming_list/movie_list_item.dart';
import 'package:architecture_demos/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../res/color.dart';

class TopRatedListView extends StatefulWidget {
  const TopRatedListView({Key? key}) : super(key: key);

  @override
  State<TopRatedListView> createState() => _TopRatedListViewState();
}

class _TopRatedListViewState extends State<TopRatedListView> {
  HomeViewViewModel homeViewViewModel = HomeViewViewModel();

  @override
  void initState() {
    homeViewViewModel.fetchTopRateListApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ChangeNotifierProvider<HomeViewViewModel>(
                create: (BuildContext context) => homeViewViewModel,
                child:
                    Consumer<HomeViewViewModel>(builder: (context, value, _) {
                  switch (value.topRatedList.status) {
                    case Status.LOADING:
                      return SizedBox(
                        height: height,
                        child: const Center(child: CircularProgressIndicator()),
                      );
                    case Status.ERROR:
                      return Text(value.topRatedList.toString());
                    case Status.COMPLETED:
                      return Column(children: [
                        const HomeListTittleWidget(text: "Top Rated Film List"),
                        SizedBox(
                          height: height * .02,
                        ),
                        _upComingMovieList(height, value)
                      ]);
                    default:
                      return const Text("No Daat Found");
                  }
                })),
          ],
        ),
      ),
    );
  }

  SizedBox _upComingMovieList(double height, HomeViewViewModel value) {
    return SizedBox(
      height: height * .4,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: value.topRatedList.data!.results!.length,
          itemBuilder: (context, index) {
            return ListItem(movies: value.topRatedList.data!.results![index]);
          }),
    );
  }
}

class HomeListTittleWidget extends StatelessWidget {
  final String text;
  const HomeListTittleWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyle.instance.h5Bold,
        ),
        Text("See all",
            style: AppStyle.instance.h5Bold.copyWith(
              color: AppColors.redColor,
            )),
      ],
    );
  }
}
