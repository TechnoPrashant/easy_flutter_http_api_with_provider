class SearchListResponse {
  String? _requestHash;
  bool? _requestCached;
  int? _requestCacheExpiry;
  bool? _aPIDEPRECATION;
  String? _aPIDEPRECATIONDATE;
  String? _aPIDEPRECATIONINFO;
  List<Results>? _results;
  int? _lastPage;

  SearchListResponse(
      {String? requestHash,
        bool? requestCached,
        int? requestCacheExpiry,
        bool? aPIDEPRECATION,
        String? aPIDEPRECATIONDATE,
        String? aPIDEPRECATIONINFO,
        List<Results>? results,
        int? lastPage}) {
    if (requestHash != null) {
      this._requestHash = requestHash;
    }
    if (requestCached != null) {
      this._requestCached = requestCached;
    }
    if (requestCacheExpiry != null) {
      this._requestCacheExpiry = requestCacheExpiry;
    }
    if (aPIDEPRECATION != null) {
      this._aPIDEPRECATION = aPIDEPRECATION;
    }
    if (aPIDEPRECATIONDATE != null) {
      this._aPIDEPRECATIONDATE = aPIDEPRECATIONDATE;
    }
    if (aPIDEPRECATIONINFO != null) {
      this._aPIDEPRECATIONINFO = aPIDEPRECATIONINFO;
    }
    if (results != null) {
      this._results = results;
    }
    if (lastPage != null) {
      this._lastPage = lastPage;
    }
  }

  String? get requestHash => _requestHash;
  set requestHash(String? requestHash) => _requestHash = requestHash;
  bool? get requestCached => _requestCached;
  set requestCached(bool? requestCached) => _requestCached = requestCached;
  int? get requestCacheExpiry => _requestCacheExpiry;
  set requestCacheExpiry(int? requestCacheExpiry) =>
      _requestCacheExpiry = requestCacheExpiry;
  bool? get aPIDEPRECATION => _aPIDEPRECATION;
  set aPIDEPRECATION(bool? aPIDEPRECATION) => _aPIDEPRECATION = aPIDEPRECATION;
  String? get aPIDEPRECATIONDATE => _aPIDEPRECATIONDATE;
  set aPIDEPRECATIONDATE(String? aPIDEPRECATIONDATE) =>
      _aPIDEPRECATIONDATE = aPIDEPRECATIONDATE;
  String? get aPIDEPRECATIONINFO => _aPIDEPRECATIONINFO;
  set aPIDEPRECATIONINFO(String? aPIDEPRECATIONINFO) =>
      _aPIDEPRECATIONINFO = aPIDEPRECATIONINFO;
  List<Results>? get results => _results;
  set results(List<Results>? results) => _results = results;
  int? get lastPage => _lastPage;
  set lastPage(int? lastPage) => _lastPage = lastPage;

  SearchListResponse.fromJson(Map<String, dynamic> json) {
    _requestHash = json['request_hash'];
    _requestCached = json['request_cached'];
    _requestCacheExpiry = json['request_cache_expiry'];
    _aPIDEPRECATION = json['API_DEPRECATION'];
    _aPIDEPRECATIONDATE = json['API_DEPRECATION_DATE'];
    _aPIDEPRECATIONINFO = json['API_DEPRECATION_INFO'];
    if (json['results'] != null) {
      _results = <Results>[];
      json['results'].forEach((v) {
        _results!.add(new Results.fromJson(v));
      });
    }
    _lastPage = json['last_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['request_hash'] = this._requestHash;
    data['request_cached'] = this._requestCached;
    data['request_cache_expiry'] = this._requestCacheExpiry;
    data['API_DEPRECATION'] = this._aPIDEPRECATION;
    data['API_DEPRECATION_DATE'] = this._aPIDEPRECATIONDATE;
    data['API_DEPRECATION_INFO'] = this._aPIDEPRECATIONINFO;
    if (this._results != null) {
      data['results'] = this._results!.map((v) => v.toJson()).toList();
    }
    data['last_page'] = this._lastPage;
    return data;
  }
}

class Results {
  int? _malId;
  String? _url;
  String? _imageUrl;
  String? _title;
  bool? _airing;
  String? _synopsis;
  String? _type;
  int? _episodes;
  String? _startDate;
  String? _endDate;
  int? _members;
  String? _rated;

  Results(
      {int? malId,
        String? url,
        String? imageUrl,
        String? title,
        bool? airing,
        String? synopsis,
        String? type,
        int? episodes,
        double? score,
        String? startDate,
        String? endDate,
        int? members,
        String? rated}) {
    if (malId != null) {
      this._malId = malId;
    }
    if (url != null) {
      this._url = url;
    }
    if (imageUrl != null) {
      this._imageUrl = imageUrl;
    }
    if (title != null) {
      this._title = title;
    }
    if (airing != null) {
      this._airing = airing;
    }
    if (synopsis != null) {
      this._synopsis = synopsis;
    }
    if (type != null) {
      this._type = type;
    }
    if (episodes != null) {
      this._episodes = episodes;
    }
    if (startDate != null) {
      this._startDate = startDate;
    }
    if (endDate != null) {
      this._endDate = endDate;
    }
    if (members != null) {
      this._members = members;
    }
    if (rated != null) {
      this._rated = rated;
    }
  }

  int? get malId => _malId;
  set malId(int? malId) => _malId = malId;
  String? get url => _url;
  set url(String? url) => _url = url;
  String? get imageUrl => _imageUrl;
  set imageUrl(String? imageUrl) => _imageUrl = imageUrl;
  String? get title => _title;
  set title(String? title) => _title = title;
  bool? get airing => _airing;
  set airing(bool? airing) => _airing = airing;
  String? get synopsis => _synopsis;
  set synopsis(String? synopsis) => _synopsis = synopsis;
  String? get type => _type;
  set type(String? type) => _type = type;
  int? get episodes => _episodes;
  set episodes(int? episodes) => _episodes = episodes;
  String? get startDate => _startDate;
  set startDate(String? startDate) => _startDate = startDate;
  String? get endDate => _endDate;
  set endDate(String? endDate) => _endDate = endDate;
  int? get members => _members;
  set members(int? members) => _members = members;
  String? get rated => _rated;
  set rated(String? rated) => _rated = rated;

  Results.fromJson(Map<String, dynamic> json) {
    _malId = json['mal_id'];
    _url = json['url'];
    _imageUrl = json['image_url'];
    _title = json['title'];
    _airing = json['airing'];
    _synopsis = json['synopsis'];
    _type = json['type'];
    _episodes = json['episodes'];
    _startDate = json['start_date'];
    _endDate = json['end_date'];
    _members = json['members'];
    _rated = json['rated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mal_id'] = this._malId;
    data['url'] = this._url;
    data['image_url'] = this._imageUrl;
    data['title'] = this._title;
    data['airing'] = this._airing;
    data['synopsis'] = this._synopsis;
    data['type'] = this._type;
    data['episodes'] = this._episodes;
    data['start_date'] = this._startDate;
    data['end_date'] = this._endDate;
    data['members'] = this._members;
    data['rated'] = this._rated;
    return data;
  }
}
