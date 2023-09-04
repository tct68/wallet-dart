class Chain {
  String? name;
  String? chain;
  String? icon;
  List<String>? rpc;
  List<Features>? features;
  List<String>? faucets;
  NativeCurrency? nativeCurrency;
  String? infoURL;
  String? shortName;
  int? chainId;
  int? networkId;
  int? slip44;
  Ens? ens;
  List<Explorers>? explorers;
  String? title;
  List<String>? redFlags;
  Parent? parent;
  String? status;

  Chain(
      {this.name,
      this.chain,
      this.icon,
      this.rpc,
      this.features,
      this.faucets,
      this.nativeCurrency,
      this.infoURL,
      this.shortName,
      this.chainId,
      this.networkId,
      this.slip44,
      this.ens,
      this.explorers,
      this.title,
      this.redFlags,
      this.parent,
      this.status});

  Chain.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    chain = json['chain'];
    icon = json['icon'];
    rpc = json['rpc'].cast<String>();
    if (json['features'] != null) {
      features = <Features>[];
      json['features'].forEach((v) {
        features!.add(new Features.fromJson(v));
      });
    }
    faucets = json['faucets'].cast<String>();
    nativeCurrency = json['nativeCurrency'] != null ? new NativeCurrency.fromJson(json['nativeCurrency']) : null;
    infoURL = json['infoURL'];
    shortName = json['shortName'];
    chainId = json['chainId'];
    networkId = json['networkId'];
    slip44 = json['slip44'];
    ens = json['ens'] != null ? new Ens.fromJson(json['ens']) : null;
    if (json['explorers'] != null) {
      explorers = <Explorers>[];
      json['explorers'].forEach((v) {
        explorers!.add(new Explorers.fromJson(v));
      });
    }
    title = json['title'];
    redFlags = json['redFlags'].cast<String>();
    parent = json['parent'] != null ? new Parent.fromJson(json['parent']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['chain'] = this.chain;
    data['icon'] = this.icon;
    data['rpc'] = this.rpc;
    if (this.features != null) {
      data['features'] = this.features!.map((v) => v.toJson()).toList();
    }
    data['faucets'] = this.faucets;
    if (this.nativeCurrency != null) {
      data['nativeCurrency'] = this.nativeCurrency!.toJson();
    }
    data['infoURL'] = this.infoURL;
    data['shortName'] = this.shortName;
    data['chainId'] = this.chainId;
    data['networkId'] = this.networkId;
    data['slip44'] = this.slip44;
    if (this.ens != null) {
      data['ens'] = this.ens!.toJson();
    }
    if (this.explorers != null) {
      data['explorers'] = this.explorers!.map((v) => v.toJson()).toList();
    }
    data['title'] = this.title;
    data['redFlags'] = this.redFlags;
    if (this.parent != null) {
      data['parent'] = this.parent!.toJson();
    }
    data['status'] = this.status;
    return data;
  }
}

class Features {
  String? name;

  Features({this.name});

  Features.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}

class NativeCurrency {
  String? name;
  String? symbol;
  int? decimals;

  NativeCurrency({this.name, this.symbol, this.decimals});

  NativeCurrency.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    symbol = json['symbol'];
    decimals = json['decimals'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['decimals'] = this.decimals;
    return data;
  }
}

class Ens {
  String? registry;

  Ens({this.registry});

  Ens.fromJson(Map<String, dynamic> json) {
    registry = json['registry'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['registry'] = this.registry;
    return data;
  }
}

class Explorers {
  String? name;
  String? url;
  String? standard;
  String? icon;

  Explorers({this.name, this.url, this.standard, this.icon});

  Explorers.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    standard = json['standard'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    data['standard'] = this.standard;
    data['icon'] = this.icon;
    return data;
  }
}

class Parent {
  String? type;
  String? chain;
  List<Bridges>? bridges;

  Parent({this.type, this.chain, this.bridges});

  Parent.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    chain = json['chain'];
    if (json['bridges'] != null) {
      bridges = <Bridges>[];
      json['bridges'].forEach((v) {
        bridges!.add(new Bridges.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['chain'] = this.chain;
    if (this.bridges != null) {
      data['bridges'] = this.bridges!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Bridges {
  String? url;

  Bridges({this.url});

  Bridges.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}
