import 'dart:async';

import 'package:flutter/material.dart';

/// Полоса рекламы — показывает список AdModel по очереди
//class AdBanner extends StatefulWidget {
//  final List<AdModel> ads;
//
//  /// Высота/ширина полосы в % от экрана (0.0 - 1.0)
//  /// Например 0.2 = 20% экрана
//  final double sizePercent;
//
//  /// Позиция полосы
//  final AdPosition position;
//
//  const AdBanner({
//    super.key,
//    required this.ads,
//    this.sizePercent = 0.2,
//    this.position = AdPosition.bottom,
//  });
//
//  @override
//  State<AdBanner> createState() => _AdBannerState();
//}
//
//class _AdBannerState extends State<AdBanner> {
//  int _currentIndex = 0;
//  Timer? _timer;
//  VideoPlayerController? _videoController;
//
//  @override
//  void initState() {
//    super.initState();
//    if (widget.ads.isNotEmpty) {
//      _showCurrent();
//    }
//  }
//
//  @override
//  void didUpdateWidget(AdBanner oldWidget) {
//    super.didUpdateWidget(oldWidget);
//    if (oldWidget.ads != widget.ads && widget.ads.isNotEmpty) {
//      _currentIndex = 0;
//      _showCurrent();
//    }
//  }
//
//  @override
//  void dispose() {
//    _timer?.cancel();
//    _videoController?.dispose();
//    super.dispose();
//  }
//
//  void _showCurrent() {
//    _timer?.cancel();
//    _videoController?.dispose();
//    _videoController = null;
//
//    final ad = widget.ads[_currentIndex];
//
//    if (ad.type == AdType.video) {
//      _initVideo(ad.content);
//    } else {
//      _timer = Timer(ad.duration, _next);
//    }
//
//    if (mounted) setState(() {});
//  }
//
//  void _next() {
//    if (!mounted || widget.ads.isEmpty) return;
//    setState(() {
//      _currentIndex = (_currentIndex + 1) % widget.ads.length;
//    });
//    _showCurrent();
//  }
//
//  Future<void> _initVideo(String url) async {
//    _videoController = VideoPlayerController.networkUrl(Uri.parse(url));
//    await _videoController!.initialize();
//    _videoController!.addListener(() {
//      if (_videoController!.value.position >=
//          _videoController!.value.duration) {
//        _next();
//      }
//    });
//    _videoController!.play();
//    if (mounted) setState(() {});
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    if (widget.ads.isEmpty) return const SizedBox.shrink();
//
//    final size = MediaQuery.of(context).size;
//    final isHorizontal = widget.position == AdPosition.bottom ||
//        widget.position == AdPosition.top;
//
//    final bannerSize = isHorizontal
//        ? size.height * widget.sizePercent
//        : size.width * widget.sizePercent;
//
//    return SizedBox(
//      width: isHorizontal ? double.infinity : bannerSize,
//      height: isHorizontal ? bannerSize : double.infinity,
//      child: _buildContent(widget.ads[_currentIndex]),
//    );
//  }
//
//  Widget _buildContent(AdModel ad) {
//    return AnimatedSwitcher(
//      duration: const Duration(milliseconds: 500),
//      child: KeyedSubtree(
//        key: ValueKey(ad.id),
//        child: switch (ad.type) {
//          AdType.image => _buildImage(ad),
//          AdType.video => _buildVideo(),
//          AdType.text => _buildText(ad),
//        },
//      ),
//    );
//  }
//
//  Widget _buildImage(AdModel ad) {
//    return Image.network(
//      ad.content,
//      fit: BoxFit.cover,
//      width: double.infinity,
//      height: double.infinity,
//      errorBuilder: (_, __, ___) => const ColoredBox(
//        color: Colors.black12,
//        child: Center(child: Icon(Icons.broken_image)),
//      ),
//    );
//  }
//
//  Widget _buildVideo() {
//    if (_videoController == null || !_videoController!.value.isInitialized) {
//      return const ColoredBox(
//        color: Colors.black,
//        child: Center(child: CircularProgressIndicator()),
//      );
//    }
//    return FittedBox(
//      fit: BoxFit.cover,
//      child: SizedBox(
//        width: _videoController!.value.size.width,
//        height: _videoController!.value.size.height,
//        child: VideoPlayer(_videoController!),
//      ),
//    );
//  }
//
//  Widget _buildText(AdModel ad) {
//    return ColoredBox(
//      color: Colors.black87,
//      child: Center(
//        child: Padding(
//          padding: const EdgeInsets.symmetric(horizontal: 24),
//          child: Text(
//            ad.content,
//            style: const TextStyle(
//              color: Colors.white,
//              fontSize: 32,
//              fontWeight: FontWeight.w500,
//            ),
//            textAlign: TextAlign.center,
//            maxLines: 3,
//            overflow: TextOverflow.ellipsis,
//          ),
//        ),
//      ),
//    );
//  }
//}
