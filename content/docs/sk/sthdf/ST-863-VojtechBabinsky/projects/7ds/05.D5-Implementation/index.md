---
# 🧩 Versioning – systém dopĺňa automaticky
fm_version: "1.0.1"

# Dátum buildu – generuje skript
fm_build: "2026-10-20T13:28:02.141287+00:00"

# Poznámka k verzii – voliteľné
fm_version_comment: ""


# 🆔 IDENTITY --------------------------------------------------------

# ID generuje CLI / skript

# Unikátne UUID – generuje skript
guid: "908b948a-923e-46ef-9f67-50c3250bd9b3"


# 🧭 CONTEXT ---------------------------------------------------------

# DAO / doména (knife, sdlc, q12, 7ds...) dopĺňa skript
dao: "sthdf"

# Názov zápisu – dopĺňa používateľ
title: "05.D5 Implementation"

# Krátky popis – dopĺňa používateľ (voliteľné)
description: "{{DESCRIPTION}}"


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
tags: []


# 🌍 LOCALIZATION -----------------------------------------------------

# Jazyk dokumentu – doplní skript podľa štruktúry
locale: "sk"


# 🕒 LIFECYCLE --------------------------------------------------------

# Dátum vytvorenia – generuje skript
created: "2026-10-20 15:28"

# Dátum poslednej úpravy – dopĺňa človek
modified: "2026-11-23 18:30"

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

# D5 – Implementation

Všetko potrebné na **tlač a zostavenie prototypu**.

## 📁 Súbory

Umiestnenie v repozitári: `content/docs/assets/project/`

| Súbor | Popis |
| ----- | ----- |
| `teleskopicka_vaza.scad` | parametrický model (OpenSCAD) |
| `stl/bottom.stl` | spodok s pätkou |
| `stl/middle.stl` | stred |
| `stl/top.stl` | vrch s dekoráciou |
| `stl/top_bez_dekoracie.stl` | vrch bez dekorácie |
| `stl/ring_bottom.stl` | krúžok spodok / stred |
| `stl/ring_middle.stl` | krúžok stred / vrch |
| `stl/test_lower.stl`, `stl/test_upper.stl` | testovacia sada (spolu s `ring_bottom`) |

## 🧾 Kusovník

| # | Položka | Ks | Poznámka |
| - | ------- | -- | -------- |
| 1 | bottom (spodok s pätkou) | 1 | PETG |
| 2 | middle (stred) | 1 | PETG |
| 3 | top alebo top_bez_dekoracie (vrch) | 1 | PETG |
| 4 | ring_bottom | 1 | PETG |
| 5 | ring_middle | 1 | PETG |
| 6 | O-krúžok NBR 70 Shore A 78×3 mm | 1 | spoj spodok / stred |
| 7 | O-krúžok NBR 70 Shore A 90×3 mm | 1 | spoj stred / vrch |
| 8 | dichtol AM Hydro | – | voliteľné, ak stena presakuje |

**Testovacia sada:** test_lower + ring_bottom + test_upper + 1× O-krúžok 78×3.

## 🖨️ Nastavenia tlače

| Parameter | Hodnota |
| --------- | ------- |
| Materiál | PETG |
| Perimetre | 4–6 |
| Orientácia | segmenty postojačky |
| Výplň pätky | 50–100 % (stabilita) |
| Vázový režim | **nepoužiť** (drážky a kolíky) |
| Vôľa `clr` v modeli | 0,3 mm – doladiť podľa testovacej sady |

## 🔧 Montáž

Poradie dielov zdola nahor: spodok → krúžok → O-krúžok 78×3 → stred →
krúžok → O-krúžok 90×3 → vrch.

1. Vložiť O-krúžok 78×3 do golieru stredu.
2. Nasunúť stred zhora na spodok.
3. Cez otvor stredu naskrutkovať `ring_bottom`.
4. Vložiť O-krúžok 90×3 do golieru vrchu.
5. Nasunúť vrch na stred a naskrutkovať `ring_middle`.
6. Vysunúť segmenty a pootočiť o 30° – zamknuté.

## 🔀 Postup od súborov k prototypu

1. Vytlačiť **testovaciu sadu** a otestovať vodou.
2. Podľa výsledku upraviť `clr`, prípadne utesniť stenu
   ([K863003](../../../../../knifes/K863003-vodotesnost-3d-tlace/index.md)).
3. Vyexportovať STL a vytlačiť všetky diely.
4. Zostaviť podľa postupu vyššie.

## ⚙️ Úprava rozmerov

Rozmery sa menia premennými v `teleskopicka_vaza.scad` (výšky segmentov,
priemery, `clr`, `motif`, `hearts_count`…). Model sám skontroluje limit
vnútorného priemeru 10 cm.

**Navigation:** [⬆️ Up](../index.md) · [🏠 Home](../index.md)
