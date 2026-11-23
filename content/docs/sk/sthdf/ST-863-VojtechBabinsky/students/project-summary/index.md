---
# 🧩 Versioning – systém dopĺňa automaticky
fm_version: "1.0.1"

# Dátum buildu – generuje skript
fm_build: "2026-10-20T13:28:07.751611+00:00"

# Poznámka k verzii – voliteľné
fm_version_comment: ""


# 🆔 IDENTITY --------------------------------------------------------

# ID generuje CLI / skript

# Unikátne UUID – generuje skript
guid: "42aedcd7-d1e9-44f0-bf4c-d9162f772134"


# 🧭 CONTEXT ---------------------------------------------------------

# DAO / doména (knife, sdlc, q12, 7ds...) dopĺňa skript
dao: "sthdf"

# Názov zápisu – dopĺňa používateľ
title: "Project Summary – Teleskopická váza"

# Krátky popis – dopĺňa používateľ (voliteľné)
description: "Zhrnutie projektu teleskopickej vázy z 3D tlače – cieľ, riešenie, plán, zákazník, výstupy a riziká."


# 👥 AUTHORSHIP ------------------------------------------------------

# Hlavný autor – z globálneho configu
author: "Vojtech Babinský"

# Zoznam autorov – generuje skript
authors:
  - "Vojtech Babinský"


# 🗂 CLASSIFICATION ---------------------------------------------------

# Nadradená kategória – môže doplniť používateľ
category: ""

# Typ dokumentu (guide, case, tutorial...) – používateľ (voliteľné)
type: ""

# Priorita (low/medium/high) – voliteľné
priority: ""

# Tagy – odporúča sa 2–6 tagov.
# Typy tagov:
#   - rámce: knife, 7ds, sdlc, q12
#   - účel: tutorial, guide, pattern, case-study
#   - téma: git, backup, ai, communication
#   - úroveň: beginner, intermediate, advanced
tags:
  - sthdf
  - project-summary
  - 3d-tlac
  - fablab


# 🌍 LOCALIZATION -----------------------------------------------------

# Jazyk dokumentu – doplní skript podľa štruktúry
locale: "sk"


# 🕒 LIFECYCLE --------------------------------------------------------

# Dátum vytvorenia – generuje skript
created: "2026-10-20 15:28"

# Dátum poslednej úpravy – dopĺňa človek
modified: "2026-11-23 18:00"

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

<!-- SDLC_INSTANCE_ID: ST-863-VojtechBabinsky -->

# 📝 Project Summary – Teleskopická váza

## 🔖 Identifikácia

## 1️⃣ Názov projektu

- **Názov projektu:** `PRJ_863_TeleskopickaVaza_ST_863`
- **Stručný popis:** Kompletná **dokumentácia teleskopickej vázy z 3D
  tlačiarne**, ktorá slúži ako **launchpad na prototyp a výrobu**. Váza
  má tri segmenty, ktoré sa zasúvajú do seba, zaisťujú sa **bajonetovým
  zámkom** a tesnia **O-krúžkami**. Dokumentácia obsahuje všetko potrebné
  na to, aby ju ktokoľvek mohol vytlačiť, zložiť, otestovať a vyrábať.

## 2️⃣ Členovia tímu

| ST ID  | Meno             | Rola v tíme                        | Kompetencie                                        |
| ------ | ---------------- | ---------------------------------- | -------------------------------------------------- |
| ST-863 | Vojtech Babinský | Project Lead, Designer, Developer  | CAD (Autodesk Inventor, OpenSCAD), 3D tlač, testovanie |

Projekt je **individuálny** – všetky roly (návrh, tlač, testovanie,
dokumentácia, prezentácia) zastáva jeden človek.

## 3️⃣ Motivácia tímu

- **Prečo tento projekt:** cieľom bolo vyrobiť na 3D tlačiarni
  **praktický darček** – nie iba dekoráciu, ale predmet, ktorý sa naozaj
  používa. Váza s reliéfom srdiečok spĺňa obe požiadavky.
- **Osobný a profesný zmysel:** projekt pokrýva celý cyklus digitálnej
  výroby – požiadavky, parametrický CAD model, iterácie podľa spätnej
  väzby, prototyp a testovanie.
- **Aký problém rieši:** bežná váza má jednu pevnú výšku a zaberá veľa
  miesta aj vtedy, keď sa nepoužíva. V malom byte alebo na internáte je
  každý centimeter drahý.
- **Prečo je dôležitý:** ukazuje, že aj z 3D tlače sa dá vyrobiť
  rozoberateľný, opraviteľný a **vodotesný** výrobok s pohyblivými
  dielmi.

## 4️⃣ Cieľ a pridaná hodnota projektu

**Finálny cieľ:** vytvoriť **dokumentáciu, ktorá je dobrým launchpadom
na prototyp a výrobu** teleskopickej vázy. Kto ju otvorí, má mať všetko
potrebné na to, aby mohol bez ďalšieho návrhu začať tlačiť prototyp
a následne vyrábať.

Dokumentácia má pokryť:

- **návrh a jeho zdôvodnenie** – prečo je konštrukcia taká, aká je
  (iterácie v1 → v3, rozhodnutia, spätná väzba),
- **parametrický model a súbory na tlač** – `.scad` a STL všetkých dielov
  aj testovacej sady,
- **kusovník** – diely na tlač, materiál, presné rozmery O-krúžkov a kde
  ich kúpiť,
- **postup tlače a montáže** – nastavenia tlače, poradie dielov, montáž
  krok za krokom,
- **testovanie** – ako overiť tesnosť a bajonet na testovacej sade,
- **vodotesnosť** – možnosti utesnenia steny (nastavenia tlače,
  impregnácia, dvojstenná stena),
- **riziká a známe problémy** – čo môže zlyhať a ako to riešiť.

Požiadavky na samotnú vázu, ktoré dokumentácia rieši:

- teleskopická konštrukcia z troch segmentov,
- zaistenie **bajonetovým zámkom**, tesnenie **O-krúžkami**,
- vysunutá výška **najviac 20 cm**,
- vnútorný priemer najväčšieho segmentu **najviac 10 cm**,
- dekorácia na vonkajšej strane.

**Pridaná hodnota:** namiesto jedného kusu vázy vzniká **opakovateľný
návod** – prototyp aj výrobu môže spustiť ktokoľvek, nielen autor.
Parametrický model navyše umožňuje rozmery prispôsobiť bez nového
návrhu.

**Ako spoznáme, že je projekt úspešný:**

- [ ] podľa dokumentácie sa dá **vytlačiť a zložiť prototyp** bez
  ďalších otázok na autora,
- [ ] dokumentácia obsahuje **všetky súbory** na tlač (STL, `.scad`)
  a **kompletný kusovník**,
- [ ] je popísaný **postup testovania** tesnosti a bajonetu,
- [ ] sú zmapované **riziká** a možnosti utesnenia pre výrobu.

## 5️⃣ Popis riešenia

| Časť         | Riešenie                                                           |
| ------------ | ------------------------------------------------------------------ |
| Konštrukcia  | 3 segmenty (spodok s pätkou, stred, vrch) + 2 krúžky so závitom    |
| Zámok        | bajonet – 3 kolíky, L-drážka, pootočenie o 30°, poistka 1 mm       |
| Tesnenie     | O-krúžky NBR 78×3 a 90×3 mm                                         |
| Vodotesnosť  | PETG + nastavenia tlače, prípadne impregnácia (dichtol AM Hydro)   |
| Rozmery      | 194 mm vysunutá, 85 mm zložená, pätka 120 mm                       |
| Dekorácia    | reliéf na vrchnom segmente (srdiečka alebo vlastný motív zo SVG)   |

**Nástroje a technológie:**

- **OpenSCAD** – parametrický 3D model (všetky rozmery sú premenné),
- **PrusaSlicer / Cura** – príprava tlače,
- **FDM 3D tlačiareň**, filament **PETG**,
- štandardné O-krúžky z obchodu.

## 6️⃣ Projektový plán

- Odhadovaný čas na prácu: _doplniť – x hodín / týždeň_
- Predpokladaný stav v čase prezentácie: **dokumentácia pripravená na
  prototyp a výrobu**
- Hlavné míľniky:
  - [x] Príprava – požiadavky, koncept, výber O-krúžkov
  - [x] Návrh – iterácie v1, v2, v3 a testovacia sada (zdokumentované
    v K863001)
  - [x] Prieskum vodotesnosti 3D tlače (K863003)
  - [ ] Doplnenie dokumentácie – kusovník, nastavenia tlače, postup
    montáže a testovania
  - [ ] Kontrola – prejsť dokumentáciu očami niekoho, kto vázu nevidel
  - [ ] Prezentácia

### 📅 Míľniky a výstupy

- **Do januára dodáme:**
  - [ ] dokumentáciu ako launchpad na prototyp a výrobu
  - [ ] súbory na tlač (STL, `.scad`)
  - [ ] prezentáciu

## 7️⃣ Zákazník a hodnoty

- **Kto:** ľudia v **bytoch a na internátoch**, ktorí majú obmedzený
  priestor.
- **Čo im to prinesie:**
  - menej zabratého miesta – zložená váza má menej ako polovicu výšky,
  - jeden predmet, viac použití – váza aj stojan na ceruzky,
  - opraviteľnosť – O-krúžky aj diely sa dajú vymeniť,
  - vlastný motív alebo farba na želanie.

## 8️⃣ Očakávané výstupy

- **Dokumentácia:**
  - [K863001 – Teleskopická váza](../../../../knifes/K863001-projekt/index.md) – návrh a iterácie,
  - [K863003 – Vodotesnosť 3D tlače](../../../../knifes/K863003-vodotesnost-3d-tlace/index.md) – prieskum utesnenia,
  - [Knowledge Contribution](../knowledge-contribution/index.md), [Pitch](../pitch-presentation/index.md).
- **Artefakty:**
  - parametrický model `teleskopicka_vaza.scad`,
  - STL súbory všetkých dielov a testovacej sady,
  - kusovník a postup tlače, montáže a testovania.

Hlavným výstupom je **dokumentácia** – prototyp a výroba na ňu
nadväzujú.

## 📚 Kontext

- [K863001 – Teleskopická váza](../../../../knifes/K863001-projekt/index.md)
- [K863003 – Vodotesnosť 3D tlače](../../../../knifes/K863003-vodotesnost-3d-tlace/index.md)
- [K863002 – Drone lab](../../../../knifes/K863002-drone-lab/index.md) – návšteva Drone Labu FEI a FCHPT STU

## 🧭 Riziká a závislosti

| Riziko                                   | Dopad                         | Opatrenie                                           |
| ---------------------------------------- | ----------------------------- | --------------------------------------------------- |
| Stena výtlačku presakuje                 | váza neudrží vodu             | nastavenia tlače, impregnácia, dvojstenná stena     |
| Nepresnosť tlače – zlá vôľa              | bajonet drhne alebo netesní   | testovacia sada, doladenie parametra `clr`          |
| Nedostupné O-krúžky presného rozmeru     | spoj netesní                  | štandardné rozmery, zmenšenie krúžku, TPU krúžok    |
| Naplnená váza je ťažká hore              | prevrátenie                   | pätka 120 mm s vysokou výplňou                      |

**Závislosti:** prístup k 3D tlačiarni, filament PETG, kúpa O-krúžkov,
prípadne tesniaci prípravok.

## 9️⃣ Reflexia a ďalšie kroky

**Čo sa očakáva naučiť:**

- parametrické modelovanie a navrhovanie podľa meniacich sa požiadaviek,
- tolerancie a vôle pri 3D tlači,
- návrh tesnenia s O-krúžkom a bajonetového zámku,
- testovanie na malom prototype pred tlačou celého výrobku.

**Ako by sa projekt mohol rozvíjať ďalej:**

- predaj cez **e-shop** s tlačou na objednávku,
- personalizácia – vlastný motív, farba, rozmer,
- ďalšie veľkosti a varianty (napr. čisto stojan na ceruzky).

## Navigácia
- [↩️ Späť](../index.md)
