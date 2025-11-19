import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'find_all_document_widget.dart' show FindAllDocumentWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FindAllDocumentModel extends FlutterFlowModel<FindAllDocumentWidget> {
  ///  Local state fields for this page.

  String? selectedPath;

  List<FFUploadedFile> uploadedpictures = [];
  void addToUploadedpictures(FFUploadedFile item) => uploadedpictures.add(item);
  void removeFromUploadedpictures(FFUploadedFile item) =>
      uploadedpictures.remove(item);
  void removeAtIndexFromUploadedpictures(int index) =>
      uploadedpictures.removeAt(index);
  void insertAtIndexInUploadedpictures(int index, FFUploadedFile item) =>
      uploadedpictures.insert(index, item);
  void updateUploadedpicturesAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      uploadedpictures[index] = updateFn(uploadedpictures[index]);

  /// törlési útvonal
  String? deletePath;

  /// törölni való kép indexe a listában
  int? deleteIndex;

  bool deleteConfirm = false;

  String? deletePathxx;

  bool? deletepathbol;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - zipWithFlutterArchive] action in Button widget.
  String? zipoutput;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 0;

  // Stores action output result for [Custom Action - deleteFileAtPath] action in Button widget.
  String? deletepath;
  // Stores action output result for [Custom Action - saveToGalleryUploadedFile] action in Button widget.
  String? outPath;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 0;

  // Stores action output result for [Custom Action - getS2KBasePath] action in Button widget.
  String? finalpath2;
  // Stores action output result for [Custom Action - readDirList] action in Button widget.
  List<String>? photostoview2;
  // Stores action output result for [Custom Action - pathsToUploadedFiles] action in Button widget.
  List<FFUploadedFile>? uploaddFiless2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
