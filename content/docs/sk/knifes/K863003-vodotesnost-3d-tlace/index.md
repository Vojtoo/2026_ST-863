---
# 🧩 Versioning – systém dopĺňa automaticky
fm_version: "1.0.1"

# Dátum buildu – generuje skript
fm_build: "2026-11-23T15:09:26.391185+00:00"

# Poznámka k verzii – voliteľné
fm_version_comment: "Prieskum vodotesnosti ako príprava na prototyp vázy"


# 🆔 IDENTITY --------------------------------------------------------

# ID generuje CLI / skript
id: "K863003"

# Unikátne UUID – generuje skript
guid: "9d19ff26-c681-40a0-9292-37fb7cbe9a18"


# 🧭 CONTEXT ---------------------------------------------------------

# DAO / doména (knife, sdlc, q12, 7ds...) dopĺňa skript
dao: "knife"

# Názov zápisu – dopĺňa používateľ
title: "K863003 – Vodotesnosť 3D tlače"

# Krátky popis – dopĺňa používateľ (voliteľné)
description: "Prieskum, ako spraviť 3D tlačený diel vodotesný – nastavenia tlače, impregnácia prípravkom dichtol AM Hydro a dvojstenná konštrukcia – ako príprava na prototyp teleskopickej vázy (K863001)."


# 👥 AUTHORSHIP ------------------------------------------------------

# Hlavný autor – z globálneho configu
author: "Vojtech Babinský"

# Zoznam autorov – generuje skript
authors:
  - "Vojtech Babinský"


# 🗂 CLASSIFICATION ---------------------------------------------------

# Nadradená kategória – môže doplniť používateľ
category: "fablab"

# Typ dokumentu (guide, case, tutorial...) – používateľ (voliteľné)
type: "case-study"

# Priorita (low/medium/high) – voliteľné
priority: ""

# Tagy – odporúča sa 2–6 tagov.
# Typy tagov:
#   - rámce: knife, 7ds, sdlc, q12
#   - účel: tutorial, guide, pattern, case-study
#   - téma: git, backup, ai, communication
#   - úroveň: beginner, intermediate, advanced
tags:
  - knife
  - case-study
  - 3d-tlac
  - vodotesnost
  - fablab
  - beginner


# 🌍 LOCALIZATION -----------------------------------------------------

# Jazyk dokumentu – doplní skript podľa štruktúry
locale: "sk"


# 🕒 LIFECYCLE --------------------------------------------------------

# Dátum vytvorenia – generuje skript
created: "2026-11-23 16:09"

# Dátum poslednej úpravy – dopĺňa človek
modified: "2026-11-23 16:09"

# Stav dokumentu – default "backlog"
status: "in-progress"

# Viditeľnosť – default "public"
privacy: "public"


# ⚖ INTELLECTUAL PROPERTY -------------------------------------------

# Držiteľ práv k obsahu – dopĺňa skript
rights_holder_content: "Vojtech Babinský"

# Systémový vlastník práv
rights_holder_system: "CAA / KNIFE / LetItGrow"

# Licencia
license: "CC-BY-NC-SA-4.0"

# Disclaimer
disclaimer: "Use at your own risk. Methods provided as-is; participation is voluntary and context-aware."

# Copyright
copyright: "© 2026 Vojtech Babinský"


# 🔗 ORIGIN / PROVENANCE ---------------------------------------------

# Repozitár pôvodu
origin_repo: ""

# URL pôvodného repozitára
origin_repo_url: ""

# Commit pôvodu
origin_commit: ""

# Branch pôvodu
origin_branch: ""

# Systém pôvodu (CAA/KNIFE/STHDF…)
origin_system: "CAA"

# Pôvodný autor
origin_author: "Vojtech Babinský"

# Importovaný zdroj
origin_imported_from: ""

# Dátum importu
origin_import_date: ""


# 🧱 RESERVED ---------------------------------------------------------

fm_reserved1: ""
fm_reserved2: ""
---

# 💧 Vodotesnosť 3D tlače

## 🎯 Čo rieši (účel, cieľ)

Teleskopická váza z projektu [K863001 – Teleskopická váza](../K863001-projekt/index.md)
musí udržať vodu. Spoje medzi segmentmi tesnia O-krúžky, ale to nestačí:
vodotesná musí byť aj **samotná stena** vytlačeného dielu. Bežná FDM tlač
vodotesná nie je – voda si nájde cestu cez drobné medzery medzi vrstvami
a perimetrami.

Prieskum slúži ako **príprava na prototyp** – cieľom je vedieť ešte pred
tlačou celej vázy, či a ako sa dá stena utesniť. Tlač celej vázy trvá veľa
hodín a minie veľa materiálu, preto je lepšie mať možnosti zmapované
vopred.

Otázky prieskumu:

- Prečo 3D výtlačky presakujú?
- Dá sa výtlačok utesniť dodatočne?
- Dá sa vodotesnosť vyriešiť už v návrhu?

## 🧩 Ako to rieši (princíp)

FDM tlačiareň skladá diel z tenkých vláken (perimetrov) a vrstiev. Medzi
nimi zostávajú **mikroskopické póry a kanáliky**. Jednotlivo sú malé, ale
cez stenu sa môžu spojiť do cesty, ktorou voda pomaly presiakne.

Existujú tri prístupy, ktoré sa dajú kombinovať:

1. **Nastavenia tlače** – menej pórov už pri tlači (viac perimetrov,
   lepšie spojenie vrstiev).
2. **Impregnácia (sealing)** – póry sa dodatočne vyplnia tekutým
   prípravkom, napr. **dichtol AM Hydro**.
3. **Dvojstenná konštrukcia** – stena má dve samostatné vrstvy, takže
   presak cez jednu nepokračuje cez druhú.

## 🧪 Ako to použiť (aplikácia)

1. Vytlačiť **testovaciu sadu** z K863001 s nastaveniami pre tesnosť.
2. Naplniť vodou a nechať niekoľko hodín stáť na papierovej utierke.
3. Ak presakuje, utesniť ju prípravkom a test zopakovať.
4. Ak nepomôže ani to, upraviť návrh na dvojstennú stenu.
5. Až potom tlačiť celú vázu.

---

## ⚡ Rýchly návod (Top)

| Prístup                | Ako                                                  | Plusy                                           | Mínusy                                               |
| ---------------------- | ---------------------------------------------------- | ----------------------------------------------- | ---------------------------------------------------- |
| 🖨️ Nastavenia tlače     | PETG, 4–6 perimetrov, vyššia teplota, pomalšie       | bez ďalšieho materiálu a práce                  | nie je zaručené – závisí od tlačiarne                |
| 🧴 dichtol AM Hydro     | máčanie / štetec / sprej, min. 5 min mokrý povrch    | utesní aj už hotový diel, na vodnej báze        | ďalšia cena (od 24,94 € / 0,25 l), schnutie          |
| 🧱 Dvojstenná stena     | dve samostatné steny v modeli                        | bez chémie, rieši sa v návrhu                   | hrubšia stena, viac materiálu, zmena modelu          |

## 📜 Detailný článok

### 1. Prečo riešiť vodotesnosť steny

Návrh vázy sa doteraz sústredil hlavne na spoje – bajonet, krúžky
a O-krúžky. Aj keby boli spoje dokonalé, voda môže presiaknuť **priamo
cez stenu**. Pred tlačou prototypu je preto dobré vedieť, s čím počítať.

### 2. Sú 3D výtlačky vodotesné?

Túto otázku rieši video
[Are 3D prints water tight? (3D Printer Academy)](https://www.youtube.com/watch?v=J_dwsXqRONA).
Odpoveď: **automaticky nie**. Či diel vodu udrží, závisí od toho, ako je
vytlačený.

Čo pomáha už pri tlači:

- **viac perimetrov** – každá ďalšia stena je ďalšia prekážka pre vodu,
- **vyššia teplota trysky a pomalšia tlač** – vrstvy sa lepšie spoja,
- **mierne vyšší prietok (flow)** – vlákna sa viac prekrývajú a medzery
  sa zmenšia,
- **materiál** – PETG sa medzi vrstvami spája lepšie ako PLA (preto je
  aj v K863001 zvolené PETG).

Aj s dobrými nastaveniami sa môže stať, že diel trochu presakuje. Preto
má zmysel poznať aj spôsoby, ako ho utesniť dodatočne.

### 3. Možnosť A – impregnácia prípravkom dichtol AM Hydro

Druhé video
[Make 3D Prints WATERPROOF in 5 MINUTES (DIAMANT Polymer)](https://www.youtube.com/watch?v=eckya5VxU40)
ukazuje utesnenie výtlačku prípravkom
[dichtol AM Hydro](https://diamant-polymer.de/en/shop/dichtol/am-hydro/)
od nemeckej firmy DIAMANT Polymer.

Čo o ňom uvádza výrobca:

- jednozložkový polymérový tesniaci prípravok **určený pre 3D tlač**,
- utesní **jemné póry menšie ako 0,2 mm**,
- je **na vodnej báze, bez VOC** (neobsahuje prchavé rozpúšťadlá),
- tesní proti rôznym kvapalinám aj plynom,
- funguje so všetkými bežnými technológiami a materiálmi tlače.

Spôsoby nanášania:

| Spôsob    | Na čo                     | Postup                                                      |
| --------- | ------------------------- | ----------------------------------------------------------- |
| Máčanie   | malé a zložité diely      | ponoriť, nechať cca 5 min, vybrať, nechať odkvapkať a schnúť |
| Štetec    | veľké plochy, časť dielu  | povrch držať mokrý aspoň 5 min, prípadne viac vrstiev        |
| Sprej     | väčšie diely              | striekať opakovane, aby bol povrch mokrý aspoň 5 min         |
| Striekačka | diery a úzke kanáliky    | naplniť, po 5 min prebytok vyliať                            |

Schnutie: na povrchu suchý **po cca 60 minútach**, úplne vytvrdne za
**cca 1 hodinu na každý mm hrúbky steny** (pri stene okolo 4 mm teda
približne 4 hodiny). V rúre sa dá vytvrdzovanie skrátiť.

Cena: balenie 0,25 l **od 24,94 €** (+ poštovné), existuje aj 1 l.

Pre vázu by stačilo **vyliať prípravok dovnútra segmentu**, nechať
pôsobiť a vyliať späť – tesniť treba hlavne vnútornú stranu, ktorá je vo
vode.

Na čo si dať pozor (výrobca na stránke neuvádza):

- či prípravok **nezmení rozmery tesniacej plochy** pre O-krúžok –
  treba overiť na testovacej sade,
- či **zmení vzhľad** povrchu (lesk, farbu),
- či je **bezpečný pre potraviny** – pri váze to nevadí, pri hrnčeku by
  to bolo dôležité.

### 4. Možnosť B – dvojstenná konštrukcia

Druhý prístup nepotrebuje žiadnu chémiu – vodotesnosť sa rieši
**v návrhu**. Stena sa nenavrhne ako jedna hrubá stena, ale ako **dve
samostatné steny** (vnútorná a vonkajšia).

Prečo to pomáha: presak v FDM tlači vzniká na náhodných miestach.
Pravdepodobnosť, že sa chyba vo vnútornej stene stretne s chybou vo
vonkajšej stene na tom istom mieste, je veľmi malá. Voda, ktorá prejde
cez vnútornú stenu, sa zastaví na vonkajšej.

Pri teleskopickej váze to má ale nevýhody:

- stena je **hrubšia**, takže sa zmenšuje vnútorný priemer alebo sa
  zväčšuje vonkajší (limit 10 cm z v3),
- spotrebuje sa **viac materiálu** a tlač je dlhšia,
- treba upraviť **parametrický model** v OpenSCAD.

Model je parametrický, takže zmena hrúbky steny je hlavne úprava
parametrov – nie úplne nový návrh.

### 5. Porovnanie a plán pre prototyp

| Kritérium                  | Nastavenia tlače | dichtol AM Hydro | Dvojstenná stena |
| -------------------------- | ---------------- | ---------------- | ---------------- |
| Cena navyše                | žiadna           | od 24,94 €       | viac filamentu   |
| Zmena modelu               | nie              | nie              | áno              |
| Dá sa použiť na hotový diel | nie             | áno              | nie              |
| Spoľahlivosť               | stredná          | vysoká (póry < 0,2 mm) | vysoká     |

Plán pre prototyp:

1. Vytlačiť testovaciu sadu z PETG s nastaveniami pre tesnosť.
2. Otestovať vodou.
3. Ak presakuje, utesniť ju dichtolom a otestovať znova (aj chod
   O-krúžku po utesnení).
4. Dvojstennú stenu nechať ako zálohu, ak by prvé dve možnosti nestačili.

## 💡 Tipy a poznámky

- **Testovať na malom kuse.** Tesnosť sa oplatí overiť na testovacej
  sade, nie na celej váze.
- **Test vodou na papierovej utierke.** Aj malý presak je na utierke
  hneď vidieť.
- **Tesniaca plocha O-krúžku je citlivá.** Akýkoľvek náter alebo
  impregnáciu treba overiť aj na nej – nesmie zmeniť vôľu.
- **Prípravky na vodnej báze sú do FabLabu vhodnejšie** – bez
  rozpúšťadiel a zápachu.
- **Kombinácia funguje najlepšie:** dobré nastavenia tlače znížia počet
  pórov a prípadný zvyšok doplní impregnácia.

### Zdroje

- 3D Printer Academy: [Are 3D prints water tight?](https://www.youtube.com/watch?v=J_dwsXqRONA) (YouTube)
- DIAMANT Polymer GmbH: [Make 3D Prints WATERPROOF in 5 MINUTES](https://www.youtube.com/watch?v=eckya5VxU40) (YouTube)
- DIAMANT Polymer GmbH: [dichtol AM Hydro – produktová stránka](https://diamant-polymer.de/en/shop/dichtol/am-hydro/)

## ✅ Hodnota / Zhrnutie

FDM výtlačok sám od seba vodotesný nie je. Vodotesnosť sa dá riešiť na
troch úrovniach: **pri tlači** (nastavenia a materiál), **po tlači**
(impregnácia, napr. dichtol AM Hydro) alebo **v návrhu** (dvojstenná
stena). Každá možnosť má inú cenu – peniaze, materiál alebo zmenu modelu.

Prieskum vznikol ako príprava na prototyp teleskopickej vázy
([K863001](../K863001-projekt/index.md)). Vďaka nemu je dopredu jasné, čo
robiť, ak testovacia sada presakuje, a netreba to riešiť až pri hotovej
váze.

<!-- body:start -->

<!-- nav:knifes -->
> [⬅ KNIFES – Prehľad](../knifes_overview/KNIFE_Overview_Blog.md) • [Zoznam](../knifes_overview/KNIFE_Overview_List.md) • [Detaily](../knifes_overview/KNIFE_Overview_Details.md)
---
