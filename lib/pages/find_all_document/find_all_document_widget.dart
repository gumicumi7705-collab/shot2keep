import '/components/popup_s2_k_delete_confirm_widget.dart';
import '/components/popup_s2_k_export_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'find_all_document_model.dart';
export 'find_all_document_model.dart';

class FindAllDocumentWidget extends StatefulWidget {
  const FindAllDocumentWidget({super.key});

  static String routeName = 'FindAllDocument';
  static String routePath = '/findAllDocument';

  @override
  State<FindAllDocumentWidget> createState() => _FindAllDocumentWidgetState();
}

class _FindAllDocumentWidgetState extends State<FindAllDocumentWidget> {
  late FindAllDocumentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FindAllDocumentModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryText,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 80.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent1,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed(
                                          HomepageWidget.routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 100),
                                            ),
                                          },
                                        );
                                      },
                                      text: 'Quit',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.transparent,
                                        textStyle: GoogleFonts.inter(
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.0,
                                          shadows: [
                                            Shadow(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .warning,
                                              offset: Offset(4.0, 4.0),
                                              blurRadius: 10.0,
                                            ),
                                            Shadow(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              offset: Offset(3.0, 3.0),
                                              blurRadius: 1.0,
                                            )
                                          ],
                                        ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: FFAppState().isPro ? 1.0 : 0.3,
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Builder(
                                        builder: (context) => FFButtonWidget(
                                          onPressed: !FFAppState().isPro
                                              ? null
                                              : () async {
                                                  await showDialog(
                                                    barrierDismissible: false,
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    dialogContext)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child:
                                                              PopupS2KExportWidget(),
                                                        ),
                                                      );
                                                    },
                                                  );

                                                  if (FFAppState().Exportok
                                                      ? true
                                                      : false) {
                                                    _model.zipoutput =
                                                        await actions
                                                            .zipWithFlutterArchive(
                                                      FFAppState()
                                                          .selFolderImagePath
                                                          .toList(),
                                                      'Shot2Keep-${FFAppState().selectedFolder}${dateTimeFormat("yMMMd", getCurrentTimestamp)}' +
                                                          '.zip',
                                                    );
                                                    await actions
                                                        .moveZipToDownloads(
                                                      _model.zipoutput!,
                                                      'Shot2Keep',
                                                    );
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Export completed',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .warning,
                                                      ),
                                                    );
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Export Failed',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                      ),
                                                    );
                                                  }

                                                  safeSetState(() {});
                                                },
                                          text: 'Export folder',
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Colors.transparent,
                                            textStyle: GoogleFonts.inter(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .warning,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22.0,
                                              shadows: [
                                                Shadow(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .warning,
                                                  offset: Offset(4.0, 4.0),
                                                  blurRadius: 10.0,
                                                ),
                                                Shadow(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  offset: Offset(3.0, 3.0),
                                                  blurRadius: 1.0,
                                                )
                                              ],
                                            ),
                                            elevation: 0.0,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .warning,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final uploadedpix = _model.uploadedpictures.toList();
                      if (uploadedpix.isEmpty) {
                        return Image.asset(
                          'assets/images/Nvtelen_terv_(21).png',
                          width: MediaQuery.sizeOf(context).width * 3.0,
                          height: 400.0,
                          fit: BoxFit.contain,
                        );
                      }

                      return Container(
                        width: 300.0,
                        height: 400.0,
                        child: CarouselSlider.builder(
                          itemCount: uploadedpix.length,
                          itemBuilder: (context, uploadedpixIndex, _) {
                            final uploadedpixItem =
                                uploadedpix[uploadedpixIndex];
                            return Stack(
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: FlutterFlowExpandedImageView(
                                          image: Image.memory(
                                            uploadedpixItem.bytes ??
                                                Uint8List.fromList([]),
                                            fit: BoxFit.contain,
                                            errorBuilder:
                                                (context, error, stackTrace) =>
                                                    Image.asset(
                                              'assets/images/error_image.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          allowRotation: false,
                                          tag: 'imageTag1',
                                          useHeroAnimation: true,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: 'imageTag1',
                                    transitionOnUserGestures: true,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.memory(
                                        uploadedpixItem.bytes ??
                                            Uint8List.fromList([]),
                                        width: double.infinity,
                                        height: 400.0,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                Image.asset(
                                          'assets/images/error_image.png',
                                          width: double.infinity,
                                          height: 400.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Opacity(
                                                      opacity: 0.8,
                                                      child: Builder(
                                                        builder: (context) =>
                                                            FFButtonWidget(
                                                          onPressed: () async {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (dialogContext) {
                                                                return Dialog(
                                                                  elevation: 0,
                                                                  insetPadding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  alignment: AlignmentDirectional(
                                                                          0.0,
                                                                          0.0)
                                                                      .resolve(
                                                                          Directionality.of(
                                                                              context)),
                                                                  child:
                                                                      GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              dialogContext)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        PopupS2KDeleteConfirmWidget(),
                                                                  ),
                                                                );
                                                              },
                                                            );

                                                            if (FFAppState()
                                                                    .deleteConfirmDefFalse
                                                                ? true
                                                                : false) {
                                                              _model.deleteConfirm =
                                                                  false;
                                                              // a törlendő kép indexe megszerzése
                                                              _model.deleteIndex =
                                                                  uploadedpixIndex;
                                                              _model.deletePath =
                                                                  FFAppState()
                                                                      .selFolderImagePath
                                                                      .elementAtOrNull(
                                                                          _model
                                                                              .deleteIndex!);
                                                              _model.deletepath =
                                                                  await actions
                                                                      .deleteFileAtPath(
                                                                _model
                                                                    .deletePath!,
                                                              );
                                                              _model.deletePathxx =
                                                                  _model
                                                                      .deletepath;
                                                              // Delete boolen beállitása
                                                              _model.deletepathbol =
                                                                  _model.deletePathxx !=
                                                                              null &&
                                                                          _model.deletePathxx !=
                                                                              ''
                                                                      ? true
                                                                      : false;
                                                              if (_model
                                                                      .deletepathbol!
                                                                  ? true
                                                                  : false) {
                                                                _model.removeAtIndexFromUploadedpictures(
                                                                    _model
                                                                        .deleteIndex!);
                                                              } else {
                                                                ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                  SnackBar(
                                                                    content:
                                                                        Text(
                                                                      'Delete Failed',
                                                                      style:
                                                                          TextStyle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            4000),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .error,
                                                                  ),
                                                                );
                                                              }
                                                            }

                                                            safeSetState(() {});
                                                          },
                                                          text:
                                                              'Delete this picture',
                                                          options:
                                                              FFButtonOptions(
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: Colors
                                                                .transparent,
                                                            textStyle:
                                                                GoogleFonts
                                                                    .interTight(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 16.0,
                                                              shadows: [
                                                                Shadow(
                                                                  color: Color(
                                                                      0xFFCC040D),
                                                                  offset:
                                                                      Offset(
                                                                          2.0,
                                                                          2.0),
                                                                  blurRadius:
                                                                      2.0,
                                                                ),
                                                                Shadow(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  offset:
                                                                      Offset(
                                                                          2.0,
                                                                          2.0),
                                                                  blurRadius:
                                                                      1.0,
                                                                )
                                                              ],
                                                            ),
                                                            elevation: 0.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 1.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        _model.outPath =
                                                            await actions
                                                                .saveToGalleryUploadedFile(
                                                          uploadedpixItem,
                                                          'S2K-${FFAppState().selectedFolder}-${dateTimeFormat("d/M/y", getCurrentTimestamp)}-${FFAppState().countexportpictures.toString()}',
                                                          FFAppState()
                                                              .galleryAndroidPath,
                                                        );
                                                        FFAppState()
                                                                .countexportpictures =
                                                            FFAppState()
                                                                    .countexportpictures +
                                                                1;
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Images saved to the Gallery (Shot2Keep folder)',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .warning,
                                                          ),
                                                        );

                                                        safeSetState(() {});
                                                      },
                                                      text: 'Send this picture',
                                                      options: FFButtonOptions(
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            Colors.transparent,
                                                        textStyle: GoogleFonts
                                                            .interTight(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .warning,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16.0,
                                                          shadows: [
                                                            Shadow(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .warning,
                                                              offset: Offset(
                                                                  2.0, 2.0),
                                                              blurRadius: 2.0,
                                                            ),
                                                            Shadow(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              offset: Offset(
                                                                  2.0, 2.0),
                                                              blurRadius: 1.0,
                                                            )
                                                          ],
                                                        ),
                                                        elevation: 0.0,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(18.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                          carouselController: _model.carouselController1 ??=
                              CarouselSliderController(),
                          options: CarouselOptions(
                            initialPage: max(0, min(0, uploadedpix.length - 1)),
                            viewportFraction: 0.7,
                            disableCenter: true,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                            enableInfiniteScroll: true,
                            scrollDirection: Axis.horizontal,
                            autoPlay: false,
                            onPageChanged: (index, _) =>
                                _model.carouselCurrentIndex1 = index,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 180.0),
                  child: Builder(
                    builder: (context) {
                      final allCategoreis =
                          (FFAppState().activeCategorieToViewer
                                  ? FFAppState().enabledCatLIst
                                  : FFAppState().newCustomCategories)
                              .toList();

                      return Container(
                        width: double.infinity,
                        height: 180.0,
                        child: CarouselSlider.builder(
                          itemCount: allCategoreis.length,
                          itemBuilder: (context, allCategoreisIndex, _) {
                            final allCategoreisItem =
                                allCategoreis[allCategoreisIndex];
                            return Container(
                              width: 100.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Opacity(
                                    opacity:
                                        FFAppState().selectedCarouselCategory ==
                                                allCategoreisItem
                                            ? 1.0
                                            : 0.5,
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          FFAppState()
                                                  .selectedCarouselCategory =
                                              allCategoreisItem;
                                          FFAppState().selectedFolder =
                                              allCategoreisItem;
                                          _model.finalpath2 =
                                              await actions.getS2KBasePath();
                                          // a kiválaszott könyvtár utvnala
                                          _model.selectedPath =
                                              '${_model.finalpath2}${FFAppState().selectedFolder}';
                                          _model.photostoview2 =
                                              await actions.readDirList(
                                            _model.selectedPath!,
                                          );
                                          FFAppState().selFolderImagePath =
                                              _model.photostoview2!
                                                  .toList()
                                                  .cast<String>();
                                          _model.uploaddFiless2 = await actions
                                              .pathsToUploadedFiles(
                                            FFAppState()
                                                .selFolderImagePath
                                                .toList(),
                                          );
                                          _model.uploadedpictures = _model
                                              .uploaddFiless2!
                                              .toList()
                                              .cast<FFUploadedFile>();
                                          safeSetState(() {});

                                          safeSetState(() {});
                                        },
                                        text: allCategoreisItem,
                                        options: FFButtonOptions(
                                          width: 220.0,
                                          height: 50.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FFAppState()
                                                      .selectedCarouselCategory ==
                                                  allCategoreisItem
                                              ? Color(0x33E2B74A)
                                              : FlutterFlowTheme.of(context)
                                                  .accent1,
                                          textStyle: GoogleFonts.interTight(
                                            color: FFAppState()
                                                        .selectedCarouselCategory ==
                                                    allCategoreisItem
                                                ? FlutterFlowTheme.of(context)
                                                    .warning
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24.0,
                                          ),
                                          elevation: 0.0,
                                          borderSide: BorderSide(
                                            color: FFAppState()
                                                        .selectedCarouselCategory ==
                                                    allCategoreisItem
                                                ? FlutterFlowTheme.of(context)
                                                    .warning
                                                : FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            width: FFAppState()
                                                        .selectedCarouselCategory ==
                                                    allCategoreisItem
                                                ? 3.0
                                                : 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          carouselController: _model.carouselController2 ??=
                              CarouselSliderController(),
                          options: CarouselOptions(
                            initialPage:
                                max(0, min(0, allCategoreis.length - 1)),
                            viewportFraction: 0.3,
                            disableCenter: true,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.45,
                            enableInfiniteScroll: true,
                            scrollDirection: Axis.vertical,
                            autoPlay: false,
                            onPageChanged: (index, _) =>
                                _model.carouselCurrentIndex2 = index,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
