/* lexical grammar */
%lex

%options flex
%%

\s+                   /* skip whitespace */
[0-9]+\b                  return 'NUMBER'
([0-9]{1,3})?("."[0-9]{1,3})?("."[0-9]{1,3})?("."[0-9]{1,3})?("/"[0-9]{1,2})?(":"[0-9]{1,5})?\b return 'IPMATCH'
"asn"                     return 'asn'
"asn.dns"                 return 'asn.dns'
"asn.dst"                 return 'asn.dst'
"asn.src"                 return 'asn.src'
"asn.xff"                 return 'asn.xff'
"asn.email"               if (!yy.emailSearch) throw "email searches disabled for user"; return 'asn.email'
"bytes"                   return 'bytes'
"cert.alt.cnt"            return "cert.alt.cnt"
"cert.alt"                return "cert.alt"
"cert.cnt"                return "cert.cnt"
"cert.issuer.cn"          return "cert.issuer.cn"
"cert.issuer.on"          return "cert.issuer.on"
"cert.serial"             return "cert.serial"
"cert.subject.cn"         return "cert.subject.cn"
"cert.subject.on"         return "cert.subject.on"
"country"                 return 'country'
"country.dns"             return 'country.dns'
"country.dst"             return 'country.dst'
"country.src"             return 'country.src'
"country.xff"             return 'country.xff'
"country.email"           if (!yy.emailSearch) throw "email searches disabled for user"; return 'country.email'
"databytes"               return 'databytes'
"email.ct.cnt"            if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.ct.cnt'
"email.ct"                if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.ct'
"email.dst.cnt"           if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.dst.cnt'
"email.dst"               if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.dst'
"email.fn.cnt"            if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.fn.cnt'
"email.fn"                if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.fn'
"email.id.cnt"            if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.id.cnt'
"email.id"                if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.id'
"email.md5.cnt"           if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.md5.cnt'
"email.md5"               if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.md5'
"email.mv.cnt"            if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.mv.cnt'
"email.mv"                if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.mv'
"email.src.cnt"           if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.src.cnt'
"email.src"               if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.src'
"email.subject.cnt"       if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.subject.cnt'
"email.subject"           if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.subject'
"email.ua.cnt"            if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.ua.cnt'
"email.ua"                if (!yy.emailSearch) throw "email searches disabled for user"; return 'email.ua'
"file"                    return "file"
"header.dst.cnt"          return "header.dst.cnt"
"header.dst"              return "header.dst"
"header"                  return "header"
"header.src.cnt"          return "header.src.cnt"
"header.src"              return "header.src"
"host.dns.cnt"            return "host.dns.cnt"
"host.dns"                return "host.dns"
"host.email.cnt"          return "host.email.cnt"
"host.email"              return "host.email"
"host.http.cnt"           return "host.http.cnt"
"host.http"               return "host.http"
"host"                    return "host"
"http.md5.cnt"            return "http.md5.cnt"
"http.md5"                return "http.md5"
"http.uri.cnt"            return "http.uri.cnt"
"http.uri"                return "http.uri"
"http.ua.cnt"             return "http.ua.cnt"
"http.ua"                 return "http.ua"
"icmp"                    return "icmp"
"\"icmp\""                return "icmp"
"id"                      return "id"
"ip.dns.cnt"              return "ip.dns.cnt"
"ip.dns"                  return "ip.dns"
"ip.dst"                  return "ip.dst"
"ip"                      return "ip"
"ip.src"                  return "ip.src"
"ip.xff.cnt"              return "ip.xff.cnt"
"ip.xff"                  return "ip.xff"
"ip.email.cnt"            if (!yy.emailSearch) throw "email searches disabled for user"; return "ip.email.cnt"
"ip.email"                if (!yy.emailSearch) throw "email searches disabled for user"; return "ip.email"
"node"                    return 'node'
"oldheader"               return "oldheader"
"packets"                 return 'packets'
"port.dst"                return 'port.dst'
"port"                    return 'port'
"port.src"                return 'port.src'
"protocol"                return 'protocol'
"rootId"                  return "rootId"
"ssh.key.cnt"             return "ssh.key.cnt"
"ssh.key"                 return "ssh.key"
"ssh.ver.cnt"             return "ssh.ver.cnt"
"ssh.ver"                 return "ssh.ver"
"tags.cnt"                return 'tags.cnt'
"tags"                    return 'tags'
"tcp"                     return "tcp"
"\"tcp\""                 return "tcp"
"ua.cnt"                  return "http.ua.cnt"
"ua"                      return "http.ua"
"udp"                     return "udp"
"\"udp\""                 return "udp"
"uri.cnt"                 return "http.uri.cnt"
"uri"                     return "http.uri"
"user.cnt"                return "user.cnt"
"user"                    return "user"
[/\w*._:-]+               return 'ID'
\"[^"\\]*(?:\\.[^"\\]*)*\" return 'QUOTEDSTR'
\/[^/\\]*(?:\\.[^/\\]*)*\/ return 'REGEXSTR'
"<="                      return 'lte'
"<"                       return 'lt'
">="                      return 'gte'
">"                       return 'gt'
"!="                      return '!='
"=="                      return '=='
"="                       return '=='
"||"                      return '||'
"|"                       return '||'
"&&"                      return '&&'
"&"                       return '&&'
"("                       return '('
")"                       return ')'
"!"                       return '!'
<<EOF>>                   return 'EOF'
.                         return 'INVALID'

/lex

/* operator associations and precedence */

%left '!'
%left '<' '<=' '>' '>=' '==' '!=' 
%left '||'
%left '&&'
%left UMINUS

%start expressions

%% /* language grammar */

expressions
    : e EOF
        { return $1; }
    ;

LTA : lt  {$$ = 'lt'}
    | lte {$$ = 'lte'}
    ;

GTA : gt  {$$ = 'gt'}
    | gte {$$ = 'gte'}
    ;

GTLT: LTA
    | GTA
    ;

IPNUM: IPMATCH
     | NUMBER
     ;

RANGEFIELD: databytes           {$$ = 'db'}
          | bytes               {$$ = 'by'}
          | packets             {$$ = 'pa'}
          | 'port.src'          {$$ = 'p1'}
          | 'port.dst'          {$$ = 'p2'}
          | 'http.uri.cnt'      {$$ = 'uscnt'}
          | 'cert.cnt'          {$$ = 'tlscnt'}
          | 'ip.dns.cnt'        {$$ = 'dnsipcnt'}
          | 'ip.email.cnt'      {$$ = 'eipcnt'}
          | 'ip.xff.cnt'        {$$ = 'xffscnt'}
          | 'http.md5.cnt'      {$$ = 'hmd5cnt'}
          | 'http.ua.cnt'       {$$ = 'uacnt'}
          | 'user.cnt'          {$$ = 'usercnt'}
          | 'host.dns.cnt'      {$$ = 'dnshocnt'}
          | 'host.email.cnt'    {$$ = 'ehocnt'}
          | 'host.http.cnt'     {$$ = 'hocnt'}
          | 'header.src.cnt'    {$$ = 'hh1cnt'}
          | 'header.dst.cnt'    {$$ = 'hh2cnt'}
          | 'tags.cnt'          {$$ = 'tacnt'}
          | 'email.ct.cnt'      {$$ = 'ectcnt'}
          | 'email.dst.cnt'     {$$ = 'edstcnt'}
          | 'email.fn.cnt'      {$$ = 'efncnt'}
          | 'email.id.cnt'      {$$ = 'eidcnt'}
          | 'email.md5.cnt'     {$$ = 'emd5cnt'}
          | 'email.mv.cnt'      {$$ = 'emvcnt'}
          | 'email.src.cnt'     {$$ = 'esrccnt'}
          | 'email.subject.cnt' {$$ = 'esubcnt'}
          | 'email.ua.cnt'      {$$ = 'euacnt'}
          | 'cert.alt.cnt'      {$$ = 'tls.altcnt'}
          | 'ssh.key.cnt'       {$$ = 'sshkeycnt'}
          | 'ssh.ver.cnt'       {$$ = 'sshvercnt'}
          ;

LOTERMFIELD  : node              {$$ = 'no'}
             | 'host.dns'        {$$ = 'dnsho'}
             | 'host.email'      {$$ = 'eho'}
             | 'host.http'       {$$ = 'ho'}
             | user              {$$ = 'user'}
             | 'email.dst'       {$$ = 'edst'}
             | 'email.src'       {$$ = 'esrc'}
             | 'cert.subject.cn' {$$ = 'tls.sCn'}
             | 'cert.issuer.cn'  {$$ = 'tls.iCn'}
             | 'cert.serial'     {$$ = 'tls.sn'}
             | 'cert.alt'        {$$ = 'tls.alt'}
             | 'ssh.ver'         {$$ = 'sshver'}
             ;

TERMFIELD  : 'id'        {$$ = '_id'}
           | 'ssh.key'   {$$ = 'sshkey'}
           | 'email.id'  {$$ = 'eid'}
           | 'email.md5' {$$ = 'emd5'}
           | 'email.mv'  {$$ = 'emv'}
           | 'email.fn'  {$$ = 'efn'}
           | 'email.ct'  {$$ = 'ect'}
           | 'http.md5'  {$$ = 'hmd5'}
           | 'rootId'    {$$ = 'ro'}
           ;

UPTERMFIELD  : 'country.src'   {$$ = 'g1'}
             | 'country.dst'   {$$ = 'g2'}
             | 'country.xff'   {$$ = 'gxff'}
             | 'country.email' {$$ = 'geip'}
             | 'country.dns'   {$$ = 'gdnsip'}
             ;

LOTEXTFIELD  : 'asn.src'         {$$ = 'as1'}
             | 'asn.dst'         {$$ = 'as2'}
             | 'asn.dns'         {$$ = 'asdnsip'}
             | 'asn.xff'         {$$ = 'asxff'}
             | 'asn.email'       {$$ = 'aseip'}
             | 'email.subject'   {$$ = 'esub'}
             | 'email.ua'        {$$ = 'eua'}
             | 'cert.subject.on' {$$ = 'tls.sOn'}
             | 'cert.issuer.on'  {$$ = 'tls.iOn'}
             ;

TEXTFIELD  : 'http.uri'        {$$ = 'us'}
           | 'http.ua'         {$$ = 'ua'}
           ;

IPFIELD  : 'ip'       {$$ = 0}
         | 'ip.src'   {$$ = 1}
         | 'ip.dst'   {$$ = 2}
         | 'ip.xff'   {$$ = 3}
         | 'ip.dns'   {$$ = 4}
         | 'ip.email' {$$ = 5}
         ;

STR : ID
    | asn
    | asn.dns
    | asn.dst
    | asn.email
    | asn.src
    | asn.xff
    | bytes
    | cert.alt
    | cert.alt.cnt
    | cert.cnt
    | cert.issuer.cn
    | cert.issuer.on
    | cert.serial
    | cert.subject.cn
    | cert.subject.on
    | country
    | country.dns
    | country.dst
    | country.email
    | country.src
    | country.xff
    | email.dst
    | email.dst.cnt
    | email.src
    | email.src.cnt
    | email.subject
    | email.subject.cnt
    | email.ua
    | email.ua.cnt
    | header
    | header.dst
    | header.dst.cnt
    | header.src
    | header.src.cnt
    | host
    | host.cnt
    | http.md5
    | http.md5.cnt
    | http.ua
    | http.ua.cnt
    | http.uri
    | http.uri.cnt
    | icmp
    | ip
    | ip.dns
    | ip.dns.cnt
    | ip.dst
    | ip.email
    | ip.email.cnt
    | ip.src
    | ip.xff
    | ip.xff.cnt
    | node
    | packets
    | port
    | port.dst
    | port.src
    | protocol
    | QUOTEDSTR
    | REGEXSTR
    | ssh.key
    | ssh.key.cnt
    | ssh.ver
    | ssh.ver.cnt
    | tags
    | tags.cnt
    | tcp
    | ua
    | ua.cnt
    | udp
    | uri
    | uri.cnt
    ;
 
e
    : e '&&' e
        {$$ = {and: [$1, $3]};}
    | e '||' e
        {$$ = {or: [$1, $3]};}
    | '!' e %prec UMINUS
        {$$ = {not: $2};}
    | '-' e %prec UMINUS
        {$$ = -$2;}
    | '(' e ')'
        {$$ = $2;}
    | RANGEFIELD GTLT NUMBER
        {$$ = {range: {}};
         $$.range[$1] = {};
         $$.range[$1][$2] = $3;}
    | RANGEFIELD '==' NUMBER
        {$$ = {term: {}};
         $$.term[$1] = $3;}
    | RANGEFIELD '!=' NUMBER
        {$$ = {not: {term: {}}};
         $$.not.term[$1] = $3;}
    | protocol '==' 'icmp'
        {$$ = {term: {pr: 1}};}
    | protocol '==' 'tcp'
        {$$ = {term: {pr: 6}};}
    | protocol '==' 'udp'
        {$$ = {term: {pr: 17}};}
    | protocol '==' NUMBER
        {$$ = {term: {pr: $3}};}
    | protocol '!=' 'icmp'
        {$$ = {not: {term: {pr: 1}}};}
    | protocol '!=' 'tcp'
        {$$ = {not: {term: {pr: 6}}};}
    | protocol '!=' 'udp'
        {$$ = {not: {term: {pr: 17}}};}
    | protocol '!=' NUMBER
        {$$ = {not: {term: {pr: $3}}};}
    | 'port' GTLT NUMBER
        {$$ = {or: [{range: {p1: {}}}, {range: {p2: {}}}]};
         $$.or[0].range.p1[$2] = $3;
         $$.or[1].range.p2[$2] = $3;}
    | LOTERMFIELD '!=' STR
        {$$ = {not: str2Query($1, "term", $3.toLowerCase())};}
    | LOTERMFIELD '==' STR
        {$$ = str2Query($1, "term", $3.toLowerCase());}
    | TERMFIELD '!=' STR
        {$$ = {not: str2Query($1, "term", $3)};}
    | TERMFIELD '==' STR
        {$$ = str2Query($1, "term", $3);}
    | UPTERMFIELD '!=' STR
        {$$ = {not: str2Query($1, "term", $3.toUpperCase())};}
    | UPTERMFIELD '==' STR
        {$$ = str2Query($1, "term", $3.toUpperCase());}
    | LOTEXTFIELD '!=' STR
        {$$ = {not: str2Query($1, "text", $3.toLowerCase())};}
    | LOTEXTFIELD '==' STR
        {$$ = str2Query($1, "text", $3.toLowerCase());}
    | TEXTFIELD '!=' STR
        {$$ = {not: str2Query($1, "text", $3)};}
    | TEXTFIELD '==' STR
        {$$ = str2Query($1, "text", $3);}
    | 'port' '==' NUMBER
        {$$ = {or: [{term: {p1: $3}}, {term: {p2: $3}}]};}
    | 'port' '!=' NUMBER
        {$$ = {not: {or: [{term: {p1: $3}}, {term: {p2: $3}}]}};}
    | IPFIELD '==' IPNUM
        {$$ = parseIpPort(yy, $3,$1);}
    | IPFIELD '!=' IPNUM
        {$$ = {not: parseIpPort(yy, $3,$1)};}
    | tags '==' STR
        { var tag = stripQuotes($3);
          $$ = {term: {ta: tag}};
        }
    | tags '!=' STR
        { var tag = stripQuotes($3);
          $$ = {not: {term: {ta: tag}}};
        }
    | file '==' STR
        { var file = stripQuotes($3);
          $$ = {fileand: file};
        }
    | file '!=' STR
        { var file = stripQuotes($3);
          $$ = {not: {fileand: file}};
        }
    | oldheader '==' STR
        { var tag = stripQuotes($3);
          $$ = {term: {hh: tag}};
        }
    | header '==' STR
        { var tag = stripQuotes($3);
          $$ = {or: [{term: {hh1: tag}}, {term:{hh2: tag}}]};
        }
    | 'header.src' '==' STR
        { var tag = stripQuotes($3);
          $$ = {term: {hh1: tag}};
        }
    | 'header.dst' '==' STR
        { var tag = stripQuotes($3);
          $$ = {term: {hh2: tag}};
        }
    | oldheader '!=' STR
        { var tag = stripQuotes($3);
          $$ = {not: {term: {hh1: tag}}};
        }
    | header '!=' STR
        { var tag = stripQuotes($3);
          $$ = {not: {or: [{term: {hh1: tag}}, {term:{hh2: tag}}]}};
        }
    | 'header.src' '!=' STR
        { var tag = stripQuotes($3);
          $$ = {not: {term: {hh1: tag}}};
        }
    | 'header.dst' '!=' STR
        { var tag = stripQuotes($3);
          $$ = {not: {term: {hh2: tag}}};
        }
    | country '==' STR 
        { var str = $3.toUpperCase();
          $$ = {or: [str2Query("g1", "term", str),
                     str2Query("g2", "term", str),
                     str2Query("gxff", "term", str),
                     str2Query("gdnsip", "term", str),
                     str2Query("geip", "term", str)
                    ]
               };
        }
    | country '!=' STR 
        { var str = $3.toUpperCase();
          $$ = {or: [str2Query("g1", "term", str),
                     str2Query("g2", "term", str),
                     str2Query("gxff", "term", str),
                     str2Query("gdnsip", "term", str),
                     str2Query("geip", "term", str)
                    ]
               };
          $$ = {not: $$};
        }
    | asn '==' STR 
        { var str = $3.toLowerCase();
          
          $$ = {or: [str2Query("as1", "text", str),
                     str2Query("as2", "text", str),
                     str2Query("asxff", "text", str),
                     str2Query("asdnsip", "text", str),
                     str2Query("aseip", "text", str)
                    ]
               };
        }
    | asn '!=' STR 
        { var str = $3.toLowerCase();
          $$ = {or: [str2Query("as1", "text", str),
                     str2Query("as2", "text", str),
                     str2Query("asxff", "text", str),
                     str2Query("asdnsip", "text", str),
                     str2Query("aseip", "text", str)
                    ]
               };
          $$ = {not: $$};
        }
    | host '!=' STR
        { var str = $3.toLowerCase();

          $$ = {or: [str2Query("ho", "term", str),
                     str2Query("dnsho", "term", str),
                     str2Query("eho", "term", str)
                    ]
               };
          $$ = {not: $$};
        }
    | host '==' STR
        { var str = $3.toLowerCase();

          $$ = {or: [str2Query("ho", "term", str),
                     str2Query("dnsho", "term", str),
                     str2Query("eho", "term", str)
                    ]
               };
        }
    ;
%%

function parseIpPort(yy, ipPortStr, which) {
  ipPortStr = ipPortStr.trim();
  // Support '10.10.10/16:4321'

  var ip1 = -1, ip2 = -1;
  var colons = ipPortStr.split(':');
  var slash = colons[0].split('/');
  var dots = slash[0].split('.');
  var port = -1;
  if (colons[1]) {
    port = parseInt(colons[1], 10);
  }

  if (dots.length === 4) {
    ip1 = ip2 = (parseInt(dots[0], 10) << 24) | (parseInt(dots[1], 10) << 16) | (parseInt(dots[2], 10) << 8) | parseInt(dots[3], 10);
  } else if (dots.length === 3) {
    ip1 = (parseInt(dots[0], 10) << 24) | (parseInt(dots[1], 10) << 16) | (parseInt(dots[2], 10) << 8);
    ip2 = (parseInt(dots[0], 10) << 24) | (parseInt(dots[1], 10) << 16) | (parseInt(dots[2], 10) << 8) | 255;
  } else if (dots.length === 2) {
    ip1 = (parseInt(dots[0], 10) << 24) | (parseInt(dots[1], 10) << 16);
    ip2 = (parseInt(dots[0], 10) << 24) | (parseInt(dots[1], 10) << 16) | (255 << 8) | 255;
  } else if (dots.length === 1 && dots[0].length > 0) {
    ip1 = (parseInt(dots[0], 10) << 24);
    ip2 = (parseInt(dots[0], 10) << 24) | (255 << 16) | (255 << 8) | 255;
  }

  // Can't shift by 32 bits in javascript, who knew!
  if (slash[1] && slash[1] !== '32') {
     var s = parseInt(slash[1], 10);
     ip1 = ip1 & (0xffffffff << (32 - s));
     ip2 = ip2 | (0xffffffff >>> s);
  }

  var t1 = {and: []};
  var t2 = {and: []};
  var xff;
  var dns;
  var email;

  if (ip1 !== -1) {
    if (ip1 === ip2) {
        t1.and.push({term: {a1: ip1>>>0}});
        t2.and.push({term: {a2: ip1>>>0}});
        dns   = {term: {dnsip: ip1>>>0}};
        email = {term: {eip: ip1>>>0}};
        xff   = {term: {xff: ip1>>>0}};
    } else {
        t1.and.push({range: {a1: {from: ip1>>>0, to: ip2>>>0}}});
        t2.and.push({range: {a2: {from: ip1>>>0, to: ip2>>>0}}});
        dns =    {range: {dnsip: {from: ip1>>>0, to: ip2>>>0}}};
        email =  {range: {eip: {from: ip1>>>0, to: ip2>>>0}}};
        xff =    {range: {xff: {from: ip1>>>0, to: ip2>>>0}}};
    }
  }

  if (port !== -1) {
    t1.and.push({term: {p1: port}});
    t2.and.push({term: {p2: port}});
  }

  if (t1.and.length === 1) {
      t1 = t1.and[0];
      t2 = t2.and[0];
  }

  switch(which) {
  case 0:
    var ors = [t1, t2];

    if (xff)
        ors.push(xff);
    if (dns)
        ors.push(dns);
    if (yy.emailSearch === true && email)
        ors.push(email);

    return {or: ors};
  case 1:
    return t1;
  case 2:
    return t2;
  case 3:
    if (!xff)
        throw "xff doesn't support port only";
    return xff;
  case 4:
    if (!dns)
        throw "dns doesn't support port only";
    return dns;
  case 5:
    if (!email)
        throw "email doesn't support port only";
    return email;
  }
}

function stripQuotes (str) {
  if (str[0] === "\"") {
    str =  str.substring(1, str.length-1);
  }
  return str;
}

var field2RawField = {
    us: "rawus",
    ua: "rawua",
    as1: "rawas1",
    as2: "rawas2",
    asxff: "rawasff",
    asdnsip: "rawasdnsip",
    iOn: "rawiOn",
    eua: "raweua",
    esub: "rawesub",
    aseip: "rawaseip"
}

function str2Query(field, kind, str)
{
    var obj;

    if (str[0] === "/" && str[str.length -1] === "/") {
        field = field2RawField[field] || field;
        obj = {query: {regexp: {}}};
        obj.query.regexp[field] = str.substring(1, str.length-1).replace(/\\(.)/g, "$1");
        return obj;
    }

    if (str[0] === "\"" && str[str.length -1] === "\"") {
        str = str.substring(1, str.length-1).replace(/\\(.)/g, "$1");
    }

    if (str.indexOf("*") !== -1) {
        field = field2RawField[field] || field;
        obj = {query: {wildcard: {}}};
        obj.query.wildcard[field] = str;
    } else if (kind === "text") {
        obj = {query: {text: {}}};
        obj.query.text[field] = {query: str, type: "phrase", operator: "and"}
    } else if (kind === "term") {
        obj = {term: {}};
        obj.term[field] = str;
    }
    return obj;
}
