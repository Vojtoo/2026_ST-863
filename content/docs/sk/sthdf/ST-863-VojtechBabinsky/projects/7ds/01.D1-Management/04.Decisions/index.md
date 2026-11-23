---
# 🧩 Versioning – systém dopĺňa automaticky
fm_version: "1.0.1"

# Dátum buildu – generuje skript
fm_build: "2026-10-20T13:28:02.799483+00:00"

# Poznámka k verzii – voliteľné
fm_version_comment: ""


# 🆔 IDENTITY --------------------------------------------------------

# ID generuje CLI / skript

# Unikátne UUID – generuje skript
guid: "0b98cd17-ae79-4e51-8dfc-6315ddd95b47"


# 🧭 CONTEXT ---------------------------------------------------------

# DAO / doména (knife, sdlc, q12, 7ds...) dopĺňa skript
dao: "sthdf"

# Názov zápisu – dopĺňa používateľ
title: "04.Decisions"

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

# Decisions

Kľúčové rozhodnutia v návrhu a ich dôvody. Detail v
[K863001 – Teleskopická váza](../../../../../../knifes/K863001-projekt/index.md).

| # | Rozhodnutie | Dôvod | Alternatíva, ktorá bola zamietnutá |
| - | ----------- | ----- | ---------------------------------- |
| 1 | Bajonetové drážky v **samostatnom krúžku** so závitom | drážka v stene by prerušila tesniacu plochu O-krúžku | drážky priamo v stene, lepenie, odnímateľné dno |
| 2 | Krúžok **zarovno** so segmentom, závit vo vnútri steny (v2) | vzhľad, váza sa zloží úplne až na dno | krúžok obopínajúci segment zvonka (v1) |
| 3 | **Obrátená architektúra** – najväčší segment hore (v3) | požiadavka, vnútorný priemer max. 10 cm | – |
| 4 | O-krúžky **NBR 3 mm** (78×3, 90×3) | štandardné rozmery, 3 mm lepšie znáša nepresnosti tlače ako 2 mm | prierez 2 mm |
| 5 | Materiál **PETG** | lepšie spojenie vrstiev, lepšie znáša vodu | PLA |
| 6 | **Parametrický model** v OpenSCAD | zmena rozmerov úpravou čísel, model sám kontroluje limity | model bez parametrov |
| 7 | **Testovacia sada** pred tlačou celej vázy | overenie spoja za cca desatinu materiálu | tlač celej vázy hneď |
| 8 | **Rozoberateľná** konštrukcia | výmena O-krúžkov, umývanie, oprava | lepené spoje |

Ďalšie: [SWOT](./03.SWOT/index.md) · [Riziká](./04.Risks/index.md)

**Navigation:** [⬆️ Up](../index.md) · [🏠 Home](../../index.md)
