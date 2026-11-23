---
# 🧩 Versioning – systém dopĺňa automaticky
fm_version: "1.0.1"

# Dátum buildu – generuje skript
fm_build: "2026-10-20T13:28:02.029928+00:00"

# Poznámka k verzii – voliteľné
fm_version_comment: ""


# 🆔 IDENTITY --------------------------------------------------------

# ID generuje CLI / skript

# Unikátne UUID – generuje skript
guid: "84b41854-fac2-4a9b-a778-e4c9b48f933f"


# 🧭 CONTEXT ---------------------------------------------------------

# DAO / doména (knife, sdlc, q12, 7ds...) dopĺňa skript
dao: "sthdf"

# Názov zápisu – dopĺňa používateľ
title: "03.D3 Analysis"

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

# D3 – Analysis

## 📥 Vstupy

- požiadavky – pozri [Goals & Expectations](../01.D1-Management/01.Goals-Expectation/index.md),
- spätná väzba k návrhu v1 („prečo je tam ten krúžok?“) –
  [K863001](../../../../../knifes/K863001-projekt/index.md), kapitola 3.

## 🔍 Analýzy

| Oblasť | Zistenie | Dôsledok pre návrh |
| ------ | -------- | ------------------ |
| Vodotesnosť 3D tlače | FDM výtlačok sám od seba vodotesný nie je | PETG, viac perimetrov, prípadne impregnácia alebo dvojstenná stena – [K863003](../../../../../knifes/K863003-vodotesnost-3d-tlace/index.md) |
| Umiestnenie bajonetu | drážka v stene preruší tesnenie | drážky v samostatnom krúžku |
| Montáž | pevný krúžok by nedovolil vložiť segment | krúžok musí byť samostatný a zaskrutkovaný |
| O-krúžky | 78×3 a 90×3 sú štandardné rozmery (Hansa-Flex, Tameson, predajne tesnení) | drážky navrhnuté k reálnym krúžkom |
| Prierez O-krúžku | 3 mm lepšie znáša nepresnosti tlače ako 2 mm | prierez 3 mm vo v3 |
| Materiál | PETG lepšie spája vrstvy a znáša vodu ako PLA | tlač z PETG |
| Režim tlače | vázový režim (spiral vase) sa nedá použiť kvôli drážkam a kolíkom | bežná tlač s perimetrami |
| Stabilita | obrátená váza s vodou je ťažká hore | pätka 120 mm s vysokou výplňou |

## 📚 Zdroje

- [Resources](./01.Resources/index.md)
- [K863002 – Drone lab](../../../../../knifes/K863002-drone-lab/index.md)

**Navigation:** [⬆️ Up](../index.md) · [🏠 Home](../index.md)
