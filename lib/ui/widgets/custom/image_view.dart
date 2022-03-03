part of '../widget.dart';

class ImageView extends StatelessWidget {
  final String urlImage;
  // final String idPicture;
  final double width;
  final double height;

  const ImageView(
      {required this.urlImage,
      required this.width,
      required this.height,
      // required this.idPicture,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      '$urlImage',
      width: width,
      height: height,
      fit: BoxFit.cover,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;
        return Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.white,
          child: Container(
            width: width,
            height: height,
            color: blackColor,
          ),
        );
      },
      errorBuilder:
          (BuildContext context, Object? exception, StackTrace? stackTrace) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image_not_supported_outlined,
                color: greyColor,
              ),
              Text(
                'No Image\nAvailable',
                style:
                    regularTextStyle.copyWith(fontSize: 13, color: greyColor),
              ),
            ],
          ),
        );
      },
    );
  }
}
