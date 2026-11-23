---
# 🧩 Versioning – systém dopĺňa automaticky
fm_version: "1.0.1"

# Dátum buildu – generuje skript
fm_build: "2026-10-20T13:28:03.605033+00:00"

# Poznámka k verzii – voliteľné
fm_version_comment: ""


# 🆔 IDENTITY --------------------------------------------------------

# ID generuje CLI / skript

# Unikátne UUID – generuje skript
guid: "601d6be4-8c00-4ae2-9090-88a4317bee32"


# 🧭 CONTEXT ---------------------------------------------------------

# DAO / doména (knife, sdlc, q12, 7ds...) dopĺňa skript
dao: "sthdf"

# Názov zápisu – dopĺňa používateľ
title: "04.Risks"

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

# Risks

| # | Riziko | Pravdepodobnosť | Dopad | Opatrenie |
| - | ------ | --------------- | ----- | --------- |
| 1 | Stena výtlačku presakuje | stredná | váza neudrží vodu | PETG + nastavenia tlače, impregnácia dichtol AM Hydro, dvojstenná stena ([K863003](../../../../../../../knifes/K863003-vodotesnost-3d-tlace/index.md)) |
| 2 | Nepresná tlač – zlá vôľa | stredná | bajonet drhne alebo spoj netesní | testovacia sada, doladenie parametra `clr` (0,3 mm) |
| 3 | Impregnácia zmení tesniacu plochu | nízka | O-krúžok netesní alebo drhne | overiť na testovacej sade pred použitím na celej váze |
| 4 | O-krúžok presného rozmeru nie je dostupný | nízka | spoj netesní | štandardné rozmery, zmenšenie väčšieho krúžku, krúžok z TPU |
| 5 | Naplnená váza je ťažká hore | stredná | prevrátenie | pätka 120 mm s výplňou 50–100 % |
| 6 | Nedostatok zdrojov (tlačiareň, materiál, prípravok) | stredná | oneskorenie prototypu | [Call to action v pitchi](../../../../../students/pitch-presentation/index.md) |

**Navigation:** [⬆️ Up](../index.md) · [🏠 Home](../../../index.md)
