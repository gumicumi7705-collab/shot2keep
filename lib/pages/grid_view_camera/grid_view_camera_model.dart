import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'grid_view_camera_widget.dart' show GridViewCameraWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class GridViewCameraModel extends FlutterFlowModel<GridViewCameraWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> uploadedPhotos = [];
  void addToUploadedPhotos(FFUploadedFile item) => uploadedPhotos.add(item);
  void removeFromUploadedPhotos(FFUploadedFile item) =>
      uploadedPhotos.remove(item);
  void removeAtIndexFromUploadedPhotos(int index) =>
      uploadedPhotos.removeAt(index);
  void insertAtIndexInUploadedPhotos(int index, FFUploadedFile item) =>
      uploadedPhotos.insert(index, item);
  void updateUploadedPhotosAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      uploadedPhotos[index] = updateFn(uploadedPhotos[index]);

  String galleryandroidPath = 'Pictures/Shot2Keep';

  FFUploadedFile? pickedFile;

  List<FFUploadedFile> uploadedPhotos2 = [];
  void addToUploadedPhotos2(FFUploadedFile item) => uploadedPhotos2.add(item);
  void removeFromUploadedPhotos2(FFUploadedFile item) =>
      uploadedPhotos2.remove(item);
  void removeAtIndexFromUploadedPhotos2(int index) =>
      uploadedPhotos2.removeAt(index);
  void insertAtIndexInUploadedPhotos2(int index, FFUploadedFile item) =>
      uploadedPhotos2.insert(index, item);
  void updateUploadedPhotos2AtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      uploadedPhotos2[index] = updateFn(uploadedPhotos2[index]);

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData2ni = false;
  FFUploadedFile uploadedLocalFile_uploadData2ni =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 0;

  bool isDataUploading_uploadDataNab = false;
  FFUploadedFile uploadedLocalFile_uploadDataNab =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Custom Action - saveImagesToLabelsLoop] action in Button widget.
  List<String>? loopOutput;
  // Stores action output result for [Custom Action - saveToGalleryUploadedFile] action in Button widget.
  String? savedGalleryFilePath;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
