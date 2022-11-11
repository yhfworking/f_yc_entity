class FYcEntitysRemoteConfig {
  final FYcEntitysRemoteConfigAd? ad;
  final FYcEntitysRemoteConfigShare? share;
  final FYcEntitysRemoteConfigVersion? version;
  final List? apps;

  const FYcEntitysRemoteConfig({this.ad, this.share, this.version, this.apps});

  factory FYcEntitysRemoteConfig.fromJson(Map<String, dynamic> json) =>
      FYcEntitysRemoteConfig(
          ad: FYcEntitysRemoteConfigAd.fromJson(json["ad"] ?? {}),
          share: FYcEntitysRemoteConfigShare.fromJson(json["share"] ?? {}),
          version:
              FYcEntitysRemoteConfigVersion.fromJson(json["version"] ?? {}),
          apps: json['apps']);

  Map<String, dynamic> toJson() => {
        "ad": ad!.toJson(),
        "share": share!.toJson(),
        "version": version!.toJson(),
        "apps": apps!.toList()
      };
}

class FYcEntitysRemoteConfigVersion {
  final String? title;
  final String? note;
  final String? url;
  final String? version;

  const FYcEntitysRemoteConfigVersion(
      {this.title, this.note, this.url, this.version});

  factory FYcEntitysRemoteConfigVersion.fromJson(Map<String, dynamic> json) =>
      FYcEntitysRemoteConfigVersion(
          title: json["title"] ?? '',
          note: json["note"] ?? '',
          url: json["url"] ?? '',
          version: json["version"] ?? '');

  Map<String, dynamic> toJson() =>
      {"title": title, "note": note, "url": url, "version": version};
}

class FYcEntitysRemoteConfigShare {
  final String? title;
  final String? des;
  final String? url;
  final String? logo;

  const FYcEntitysRemoteConfigShare(
      {this.title, this.des, this.url, this.logo});

  factory FYcEntitysRemoteConfigShare.fromJson(Map<String, dynamic> json) =>
      FYcEntitysRemoteConfigShare(
          title: json["title"] ?? "",
          des: json["des"] ?? "",
          url: json["url"] ?? "",
          logo: json["logo"] ?? "");

  Map<String, dynamic> toJson() =>
      {"title": title, "des": des, "url": url, "logo": logo};
}

class FYcEntitysRemoteConfigAd {
  final int? interstitialAdIntervalSec;
  final int? rewardAdIntervalSec;

  const FYcEntitysRemoteConfigAd(
      {this.interstitialAdIntervalSec, this.rewardAdIntervalSec});

  factory FYcEntitysRemoteConfigAd.fromJson(Map<String, dynamic> json) =>
      FYcEntitysRemoteConfigAd(
          interstitialAdIntervalSec: json["interstitialAdIntervalSec"] ?? 0,
          rewardAdIntervalSec: json["rewardAdIntervalSec"] ?? 0);

  Map<String, dynamic> toJson() => {
        "interstitialAdIntervalSec": interstitialAdIntervalSec,
        "rewardAdIntervalSec": rewardAdIntervalSec
      };
}
