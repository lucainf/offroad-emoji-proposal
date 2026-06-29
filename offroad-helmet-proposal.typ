// ============================================================
// Unicode Emoji Proposal - Typst template (de-facto ESC format)
// Compile: typst compile offroad-helmet-proposal.typ
// Replicates the Google-Docs look of recent successful proposals
// ============================================================

// ---------- config ----------
#let accent = rgb("#444444")
#let submitted = datetime.today().display("[year]-[month]-[day]")

// Image slots: set to a path string when the asset exists, or none for a placeholder
#let img-color-72 = "assets/MOTOCROSS HELMET EMOJI/Classic Sporty/72x72 PNG Transparent/Classic Sporty Color, with goggles.png"
#let img-bw-72    = "assets/MOTOCROSS HELMET OUTLINE ICON SET/With goggles/With black goggles/72x72 px With black goggles transparent.png"
#let img-color-18 = "assets/MOTOCROSS HELMET EMOJI/Classic Sporty/18x18 PNG Transparent/Classic Sporty Color, with goggles.png"
#let img-bw-18    = "assets/MOTOCROSS HELMET OUTLINE ICON SET/With goggles/With black goggles/18x18 px With black goggles transparent.png"

// Full-resolution SVG slots (Additional images section)
#let img-color-full    = "assets/MOTOCROSS HELMET EMOJI/Classic Sporty/SVG/Classic Sporty Color, with goggles.svg"
#let img-color-ng-full = "assets/MOTOCROSS HELMET EMOJI/Classic Sporty/SVG/Classic Sporty Color, without goggles.svg"
#let img-bw-full       = "assets/MOTOCROSS HELMET OUTLINE ICON SET/With goggles/With black goggles/With black goggles SVG.svg"
#let img-bw-ng-full    = "assets/MOTOCROSS HELMET OUTLINE ICON SET/Without goggles/Without goggles SVG.svg"

// NOTE: when two footnotes are adjacent, separate them with #super[,]
// (typographic standard: superscript comma between consecutive markers)
// ---------- helpers ----------
#let ph(w, h, label) = box(
  width: w, height: h, fill: rgb("#EEEEEE"), stroke: 0.5pt + rgb("#BBBBBB"),
  align(center + horizon, text(size: 6.5pt, fill: rgb("#888888"), label))
)
#let slot(path, w, h, label) = if path == none { ph(w, h, label) } else { image(path, width: w, alt: label, scaling: "pixelated") }
#let shot(path, caption, width: 88%) = figure(
  if path == none { ph(width, 9em, caption + "  [screenshot]") } else { image(path, width: width, alt: caption) },
  caption: text(size: 9pt, fill: accent, caption),
  supplement: none, numbering: none,
)

// ---------- page & text ----------
#set document(title: "Proposal for Emoji: OFF-ROAD HELMET", author: "Luca Milo")
#set page(paper: "us-letter", margin: (x: 1in, y: 0.9in))
#set text(font: ("Arimo", "Noto Color Emoji"), size: 10.5pt, lang: "en",
  // heavily penalize stray lines across page breaks (widows/orphans) and
  // very short last lines of paragraphs (runts)
  costs: (widow: 600%, orphan: 600%, runt: 300%))
#set par(justify: true, leading: 0.62em)
#show heading.where(level: 1): it => block(below: 0.5em, text(size: 19pt, weight: "bold", fill: black, it.body))
#show heading.where(level: 2): it => block(above: 1.6em, below: 0.7em, text(size: 15pt, weight: "bold", fill: accent, it.body))
#show heading.where(level: 3): it => block(above: 1.3em, below: 0.55em, text(size: 12pt, weight: "bold", fill: accent, it.body))
// links: blue, thin underline pushed below the descenders, never bold
#show link: it => text(fill: rgb("#1155CC"), weight: "regular", underline(offset: 2.2pt, stroke: 0.6pt + rgb("#1155CC"), evade: true, it))

// ============================================================
// PAGE 1 - everything below must stay on the first page
// ============================================================

= Proposal for Emoji: OFF-ROAD HELMET
#v(0.4em)
*Submitter:* Luca Milo#footnote[#box(baseline: 0.18em, image("assets/orcid-unauth.svg", height: 0.95em))#h(0.3em)#link("https://orcid.org/0009-0000-9709-299X")[0009-0000-9709-299X]] (main point of contact) \
*Date:* #submitted

== Identification

*CLDR Short Name:* off-road helmet \
*CLDR Keywords:* *motocross, enduro, downhill, aquabike, ATV*, supercross, supermoto, freestyle, BMX, PWC, jet ski, goggles, gear, rider, protection \
*Category:* Activities → sport; proposed to appear among the sports equipment, near 🛼~roller skates, 🛷~sled and 🥌~curling stone. \

== Images

#align(center, table(
  columns: (auto, auto, auto), align: center + horizon, stroke: none, column-gutter: 2.5em, row-gutter: 0.7em,
  [], [*Color*], [*Black & white*],
  [*72×72*], slot(img-color-72, 72pt, 72pt, "color 72px"), slot(img-bw-72, 72pt, 72pt, "b&w 72px"),
  [*18×18*], slot(img-color-18, 18pt, 18pt, "18"), slot(img-bw-18, 18pt, 18pt, "18"),
))

== License

#grid(columns: (auto, 1fr), column-gutter: 1em, align: horizon,
  image("assets/cc-zero.svg", width: 60pt, alt: "CC0 Public Domain badge"),
  [The off-road helmet artwork and this document are released under a #link("https://creativecommons.org/publicdomain/zero/1.0/")[CC0 1.0 public domain dedication]. The images are original work created for this proposal; the submitter owns all rights and licenses them accordingly.]
)

#pagebreak()

// ============================================================
// FACTORS FOR INCLUSION
// ============================================================

== Factors for Inclusion

=== Expresses multiple concepts <multi-concepts>

The off-road helmet --- distinguished by its peak (sun visor), elongated chin bar, and open port worn with goggles --- is the shared icon of an entire family of sports and of everyday riding culture:

- *The off-road sports family:* motocross, supercross, enduro, freestyle motocross, ATV/quad racing, snow-bike, downhill and freeride mountain biking, BMX racing, aquabike racing#h(0.12em)#footnote[The UIM-ABP Aquabike World Championship, governed by the Union Internationale Motonautique (#link("https://www.aquabike.net/")); colloquially "jet ski" racing, after the genericized Kawasaki trademark. Competitors wear motocross/off-road helmets: Kevin Shaw, _Real Review: Fly Racing F2 Acetylene Helmet_ (a motocross helmet reviewed for PWC use), The Watercraft Journal, #link("https://watercraftjournal.com/real-review-fly-racing-f2-acetylene-helmet/").]; the helmets of all these disciplines share the same design, a single character could cover them all.
- *Everyday riding:* the off-road helmet is a mass consumer product well beyond competition. The global motorcycle helmet market was valued at \~USD 3.35 billion in 2024 and is projected to reach USD 4.52 billion by 2030 (CAGR 5.1%), with off-road/racing helmets a distinct product segment#h(0.12em)#footnote[Grand View Research, _Motorcycle Helmet Market Size, Share & Trends Analysis Report, 2025–2030_, #link("https://www.grandviewresearch.com/industry-analysis/motorcycle-helmet-market"). "Off-road/Racing Helmets" is one of the report's product-type segments.]; for the off-road segment specifically, the off-road motorcycle accessories market, including helmets and goggles, is projected to reach USD 3.32 billion by 2034 (CAGR 5.1%)#h(0.12em)#footnote[Fact.MR, _Off-Road Motorcycle Accessories Market_, 2024–2034 (USD 2,020.1 million in 2024 → USD 3,322.0 million by 2034), via GlobeNewswire, #link("https://www.globenewswire.com/news-release/2024/11/11/2978189/0/en/Off-Road-Motorcycle-Accessories-Market-Set-to-Surge-at-5-1-CAGR-to-Reach-US-3-322-0-Million-by-2034-Fact-MR-Report.html").]. On the road it is the helmet of choice of the supermoto scene, MX-style helmets are in regular street use#h(0.12em)#footnote[Michael Parrotte (founder of AGV Sports Group; former Vice-President of AGV Helmets America), _Can I Use a MX Style Motocross Dirt Bike Helmet on the Road for Street Riding?_, AGVSPORT, #link("https://agvsport.com/blog/most-popular/dirt-bike-helmet-for-road.html").], and the MX-derived "dual-sport" helmet is treated as a mainstream on/off-road street category#h(0.12em)#footnote[Kurt Spurlock, _7 Best Dual Sport Helmets_, RIDE Adventures, #link("https://www.rideadv.com/ride-adventures-tour-and-rentals-blog/best-dual-sport-helmets"); and RoadRUNNER, _9 Best Motorcycle Helmets for Dual Sport Riding_, #link("https://www.roadrunner.travel/products/9-best-motorcycle-helmets-for-dual-sport-riding/"). Both treat the MX-derived dual-sport helmet as a versatile street/off-road category.]. In Southern Europe and Latin America, motocross-style helmets are everyday wear on motorcycles and even scooters#h(0.12em)#footnote[Passion Moto Sécurité#super[\[fr\]], _Les différents types de casques moto_, #link("https://moto-securite.fr/types-casques/"). The cross helmet is "prisé des jeunes conducteurs urbains de cyclomoteurs" ("popular with young urban moped riders").]#super[,#h(0.12em)]#footnote[La Bécanerie#super[\[fr\]], _Casque moto_, #link("https://www.la-becanerie.com/casque/"). Cross helmets are "fréquent \[...\] sur de jeunes pilotes de 50 à boîte" ("common \[...\] on young riders of geared 50cc mopeds").]#super[,#h(0.12em)]#footnote[Inducascos#super[\[es\]], _La moda del casco cross se traslada de la pista a la ciudad_ ("the cross-helmet trend moves from the track to the city"), 2022, #link("https://www.inducascos.com/blog/post/casco-cross-como-usar").]. The object reads as "rider", not only "off-road racer"#h(0.12em)#footnote[Expanded in #link(<helmet-identity>)[§_Helmet as identity_], under #link(<other-information>)[§_Other information_].]<fn-idexp>.
- *Protective gear / safety:* the helmet is the universal symbol of rider protection ("wear your helmet", "all the gear, all the time").
- *Adventure and grit:* off-road riding metaphors → getting dirty, rough terrain, "send it".
- *Preparation / gearing up:* putting on the helmet → about to start, committing to action.

=== Use in sequences

- 🏍 + \[off-road helmet\] → motocross / enduro riding (vs. 🏍 alone = road riding)
- 🚵 + \[off-road helmet\] → downhill / freeride MTB (vs. 🚵 alone = cross-country)
- 🌊 + \[off-road helmet\] → personal-watercraft racing (PWC / aquabike / "jet ski")
- \[off-road helmet\] + ⛰ / 🏜 / 🌲 → trail, desert, woods riding
- \[off-road helmet\] + 💦 → freestyle on the water
- \[off-road helmet\] + 🏁 → race day
- 🛵 + \[off-road helmet\] → "gear up", everyday commute
- 🧤 + \[off-road helmet\] → "gearing up" / pre-ride ritual
- \[off-road helmet\] + 💨 → riding fast, roosting

=== Breaks new ground

*Yes.* The off-road helmet is to its sports what skis are to skiing or the snowboard to snowboarding: the single most idiomatic piece of equipment, the object that identifies the discipline. It would be:

+ The first symbol for the off-road riding cluster (motocross, enduro, downhill, BMX, ATV) and for aquabike (personal-watercraft) racing, a family of sports with zero current emoji representation. 🏍~depicts a road racing motorcycle, 🚵~cross-country mountain biking and no aquatic emoji depicts aquabike riding or racing.
+ An _equipment_ symbol carrying meanings the activity emoji cannot (gear, safety, identity, anticipation)#h(0.12em)#footnote(<fn-idexp>), in the role that the ball, the skis or the board play for other sports.
+ Not a variant of anything encoded: the only existing helmets, 🪖 and ⛑, are occupational objects with unrelated meanings.

=== Distinctiveness

The off-road helmet has the most recognizable helmet silhouette in sport: the protruding *peak/sun visor*, the *elongated chin bar*, and the *goggle strap* across the shell. This three-element signature is unique among helmets: full-face road helmets have no peak and an integrated visor; bicycle and ski helmets are open-faced; 🪖 and ⛑ are visually unrelated. The silhouette survives at 18×18 pixels, as shown by the example images above.

=== Usage level: evidence of frequency <usage-level>

The concept carries an active family of names, each strongest in a different measurement context: *"off-road helmet"*, the proposed name, is the category/retail term and by far the strongest in web search; *"motocross helmet"* and *"dirt bike helmet"* are the colloquial discipline names (≈1:1 with each other on Google Trends#h(0.12em)#footnote[See #link(<breakdown-fig>)[§_Google Trends: discipline-term breakdown (motocross / dirt bike / mx / enduro / downhill helmet)_].]) and the strongest in interest-over-time data. Each tool below is therefore reported with its strongest term, with synonyms as supplements; all queries are listed and reproducible.

- Google Search \[off-road-helmet\] (the proposed name): *187,000,000 results; 34% of "elephant"* (546,000,000); synonyms \[dirt-bike-helmet\]: *54,700,000*; \[motocross-helmet\]: *25,100,000*
- Google Video Search \[off-road-helmet\]: *24,200,000 results; 43% of "elephant"* (55,900,000)

#shot("../research/screenshots/E1a-web-offroad.png", "Google Search: off-road-helmet (187,000,000 results)")
#shot("../research/screenshots/E1b-search-elephant.png", "Google Search: elephant (546,000,000 results)")
#shot("../research/screenshots/E1c-web-dirtbike.png", "Google Search: dirt-bike-helmet (54,700,000 results)")
#shot("../research/screenshots/E1d-web-motocross.png", "Google Search: motocross-helmet (25,100,000 results)")
#shot("../research/screenshots/E2a-vid-offroad.png", "Google Video Search: off-road-helmet (24,200,000 results)")
#shot("../research/screenshots/E2b-vid-elephant.png", "Google Video Search: elephant (55,900,000 results)")

*Scale and context.* On the guidelines' calibration scale, the proposed concept reaches *34% of "elephant" on web search and 43% on video search*. For a single piece of sports equipment measured against one of the world's most iconic animals. The video share of its footprint (13% of results vs 10% for elephant) also slightly over-indexes, consistent with how off-road riding is communicated, usually through images and video on social platforms, precisely the messaging-adjacent environments where emoji are used. By contrast, interest-over-time and book-corpus baselines are structurally unfavorable to a modern two-word gear compound vs a millennia-old single common noun: the Trends and Ngram charts below are included per the guidelines and should be read with that calibration in mind.

#shot("../research/screenshots/C1-trends-web-elephant.png", "Google Trends (Web Search, worldwide, 2004–present): motocross helmet vs elephant")
#shot("../research/screenshots/C2-trends-image-elephant.png", "Google Trends (Image Search, worldwide, 2008–present): motocross helmet vs elephant")
#shot("../research/screenshots/E5-ngram-elephant.png", "Google Books Ngram: motocross helmet vs elephant")

*The semantic field, measured against the calibration term.* This emoji would be the sole symbol for an entire family of disciplines, none of which has any emoji today. Their combined worldwide search interest, `motocross + enduro + supermoto + motard + supercross`, deliberately excluding ambiguous terms (downhill) and disciplines partially covered by existing emoji (MTB/🚵), averages *38 against elephant's 55 (≈70%)* over the full Trends range (2004–present). The object-term charts above measure one name of one object; this chart measures the size of the semantic territory the single grapheme would serve.

#shot("../research/screenshots/C5-trends-semantic-field.png", "Google Trends: motocross + enduro + supermoto + motard + supercross vs elephant (38 vs 55)")

*Further calibration.* On Google Trends, "motocross helmet" tracks *≈1:1 with "military helmet"* (🪖 U+1FA96, encoded 2020) across the full range.

#shot("../research/screenshots/C3-trends-military.png", "Google Trends: motocross helmet vs military helmet (≈1:1)")
#shot("../research/screenshots/C6-trends-breakdown.png", "Google Trends: discipline-term breakdown (motocross / dirt bike / mx / enduro / downhill helmet)") <breakdown-fig>

*Non-English usage.* Same methodology in Italian and Spanish: \[casco-da-cross\] (it): *13,700,000 results*; \[casco-de-motocross\] (es): *10,400,000*; calibration term \[elefante\]: *47,900,000* (same session; "elefante" is shared by Italian, Spanish and Portuguese). The Italian-only helmet term stands at *29%* of it, mirroring the English-language ratios.

#shot("../research/screenshots/E7a-casco-da-cross.png", "Google Search: casco-da-cross (13,700,000 results)")
#shot("../research/screenshots/E7b-casco-de-motocross.png", "Google Search: casco-de-motocross (10,400,000 results)")
#shot("../research/screenshots/E7c-elefante.png", "Google Search: elefante (47,900,000 results)")

=== Completeness

The Activities/sport category represents sports through their idiomatic equipment (⚽🏀🏈🎾🛹🛼⛸🥊🎿). For the off-road riding family, that object is the helmet: one character would give the whole family its icon.

=== Compatibility

n/a

#pagebreak()

// ============================================================
// FACTORS FOR EXCLUSION
// ============================================================

== Factors for Exclusion

=== Not already represented

No emoji or sequence conveys off-road riding or its sports:

- 🏍 _motorcycle_ is a road racing bike; it cannot indicate off-road, and adding terrain emoji (🏍⛰) reads as "riding _to_ the mountains", not motocross.
- 🚵 _person mountain biking_ depicts cross-country cycling with an open bicycle helmet; it cannot represent downhill/freeride, let alone any motorized discipline.
- Aquatic emoji (🌊 water wave, 💦 sweat droplets, 🚤 speedboat, 🛥 motor boat, 🏄 surfing) depict water, boats, or other water sports; the aquatic-emoji cluster does not depict aquabike (personal-watercraft) riding or racing, nor does any combination of them.
- 🪖 _military helmet_ and ⛑ _rescue worker's helmet_ are occupational objects with strong, unrelated meanings.

=== Not overly specific

The off-road helmet is the _category_ object. One shape shared across motorized (MX, enduro, ATV, aquabike racing) and gravity (DH MTB, BMX) sports, plus everyday riding. It is the paradigm, exactly as 🍣 represents all sushi.

=== Not open-ended

This proposal does not start a series. Sports whose identity rests on other equipment already have their icons (🏈 American football, ⛷🎿 skiing, ⛸ skating). The off-road helmet is proposed precisely because for its sport family the helmet _is_ the icon, the only piece of equipment shared by the entire category.

=== Not transient

Motocross has existed for over a century: the first recorded off-road "scramble" race was the Southern Scott Scramble at Camberley, England, on 29 March 1924#h(0.12em)#footnote[Racer X, _A Rare Old Scramble at Camberley Heath_, #link("https://racerxonline.com/2024/11/12/a-rare-old-scramble-at-camberley-heath"). Wikipedia, _Motocross_, #link("https://en.wikipedia.org/wiki/Motocross").], and the FIM Motocross World Championship has run continuously since 1957. The gravity disciplines are similarly established: the UCI Mountain Bike World Championships have included downhill since their first edition (Durango, 1990)#h(0.12em)#footnote[Wikipedia, _1990 UCI Mountain Bike World Championships_, #link("https://en.wikipedia.org/wiki/1990_UCI_Mountain_Bike_World_Championships"). UCI, _30 years of UCI Mountain Bike World Championships_, #link("https://www.uci.org/article/30-years-of-uci-mountain-bike-world-championships/5Hwc43UPVOWiHnxYmmNMHE").], BMX racing has been an Olympic discipline since Beijing 2008 and BMX freestyle since Tokyo 2020#h(0.12em)#footnote[Olympics, _Cycling BMX Racing_ and _Cycling BMX Freestyle_, #link("https://www.olympics.com/en/sports/cycling-bmx-racing/") and #link("https://www.olympics.com/en/sports/cycling-bmx-freestyle/").]. Media presence has been equally continuous, from the Academy Award-nominated documentary _On Any Sunday_ (1971)#h(0.12em)#footnote[Wikipedia, _On Any Sunday_, #link("https://en.wikipedia.org/wiki/On_Any_Sunday").] to a living catalogue of video games#h(0.12em)#footnote[See, e.g., the titles under Steam's "Motocross" tag: #link("https://store.steampowered.com/tags/en/Motocross/").]. A century of continuous and growing practice that has only become more institutionalized and widespread, alongside a still-growing consumer market (see #link(<multi-concepts>)[§Expresses multiple concepts]), is the antithesis of a passing trend.



=== No faulty comparison

This proposal stands on its own evidence of frequency, distinctiveness, and category gap. No argument herein relies on the existence of other emoji as justification.

// ============================================================
// OTHER INFORMATION
// ============================================================

== Other information <other-information>

#block(breakable: false)[*A note on cultural embedding.* A motocross starting line has sat in the canonical reference set of image processing for three decades: kodim05 ("several motocross racers ready to begin") of the Kodak Lossless True Color Image Suite (\~1993)#h(0.12em)#footnote[Kodak Lossless True Color Image Suite, image 05, #link("http://r0k.us/graphics/kodak/kodim05.html").] still anchors the standard image-compression benchmark today#h(0.12em)#footnote[Papers with Code, _Image Compression on Kodak_ benchmark, #link("https://web.archive.org/web/20240416173213/https://paperswithcode.com/sota/image-compression-on-kodak"). Also see: #link("https://orkg.org/benchmarks/PWC_KODAK_BENCHMARK_DATASET/problem/PWC_IMAGE_COMPRESSION_PROBLEM").], among others.]

#block(breakable: false)[*Helmet as identity.* The helmet is a distinctive piece of the rider's identity and sense of self within the community#h(0.12em)#footnote[Roach-Higgins, M. E. and Eicher, J. B., _Dress and Identity_, Clothing and Textiles Research Journal 10(4), 1992, pp. 1–8, #link("https://doi.org/10.1177/0887302X9201000401"). Dress, defined as the supplements to and modifications of the body (the helmet among them), constitutes and communicates identity.]#super[,#h(0.12em)]#footnote[Motorcycling culture and identity sustain a dedicated peer-reviewed journal, the _International Journal of Motorcycle Studies_, published since 2005: #link("https://motorcyclestudies.org").]#super[,#h(0.12em)]#footnote[For the off-road disciplines specifically, the ethnographic fieldwork in Hagen, S., _The Downhill Mountain Bike Subculture in New Zealand_, MPhEd thesis, University of Otago, 2013, #link("https://ourarchive.otago.ac.nz/handle/10523/4042"), documents the subculture's dress and identity codes.]. Online spaces have a long tradition of creators who communicate --- and thus exist there --- through their helmet rather than their face#h(0.12em)#footnote[Wikipedia, _Motovlog_, #link("https://en.wikipedia.org/wiki/Motovlog").].] <helmet-identity>

*Design considerations for vendors:*

- Side or three-quarter view maximizes the signature silhouette (peak + chin bar + goggle strap).
- Neutral, vendor-flexible colorway; the example images use a colorway chosen purely for legibility.
- Goggles may be drawn worn (over the shell) or omitted without losing recognizability, as the peak and chin bar alone carry the silhouette#h(0.12em)#footnote[Both variants are shown in #link(<additional-images>)[§_Additional images_].].

#pagebreak()

== Additional images <additional-images>

Full-resolution renderings of the proposed emoji, in both variants#h(0.12em)#footnote[Artwork by Keshav (#link("https://www.fiverr.com/keshav138")). Other variants can be found at #link("https://github.com/lucainf/offroad-emoji-proposal/blob/master/VARIANTS.md").].

#let muted = body => text(size: 10pt, fill: rgb("#888888"), body)

#grid(columns: (1fr, 1fr), column-gutter: 2em, row-gutter: 1.5em, align: center + horizon,
  muted[with goggles], muted[without goggles],
  [#slot(img-color-full, 180pt, 180pt, "color --- with goggles (full resolution)")],
  [#slot(img-color-ng-full, 180pt, 180pt, "color --- without goggles (full resolution)")],
  [#slot(img-bw-full, 180pt, 180pt, "black & white --- with goggles (full resolution)")],
  [#slot(img-bw-ng-full, 180pt, 180pt, "black & white --- without goggles (full resolution)")],
)
