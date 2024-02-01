import 'package:flutter/material.dart';

class CustomNetworkImageWidget extends StatelessWidget {
  final String image;
  final String? errorImage;
  final Widget? loadingWidget;
  final Widget? errorWidget;
  final double? height;
  final double? width;
  final double? radius;
  final BoxFit? fit;
  const CustomNetworkImageWidget({
    super.key, required this.image, this.errorImage, this.loadingWidget,  this.height,  this.width,  this.radius, this.errorWidget, this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius??0),
      child: Image.network(
        fit:fit ??BoxFit.contain ,
        image,      height:height?? 50,
        width: width??50,
        errorBuilder: (context, error, stackTrace) {
          return errorWidget??  Image.asset(
          errorImage??'' ,
            height:height?? 50,
            width: width??50,
          );
        },
        
        loadingBuilder: (context, child, loadingProgress) {
          return loadingWidget?? const CircularProgressIndicator();
        },
      ),
    );
  }
}