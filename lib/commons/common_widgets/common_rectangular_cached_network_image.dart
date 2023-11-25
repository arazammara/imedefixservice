import 'package:cached_network_image/cached_network_image.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/loading.dart';

class CachedRectangularNetworkImageWidget extends StatelessWidget {
  const CachedRectangularNetworkImageWidget({
    super.key,
    required this.image, required this.width, required this.height,
  });

  final String image;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: CachedNetworkImage(
        imageUrl: image,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5.r),
            image: DecorationImage(
                image: imageProvider, fit: BoxFit.cover),
          ),
        ),
        placeholder: (context, url) => const Center(
            child: LoadingWidget()),
        errorWidget: (context, url, error) => Center(
            child: SizedBox(
                width: 20.w,
                height: 20.h,
                child: const Icon(Icons.error))),
      ),
    );
  }
}
