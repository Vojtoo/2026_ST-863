---
# 🧩 Versioning – systém dopĺňa automaticky
fm_version: "1.0.1"

# Dátum buildu – generuje skript
fm_build: "2026-10-20T13:28:07.578160+00:00"

# Poznámka k verzii – voliteľné
fm_version_comment: ""


# 🆔 IDENTITY --------------------------------------------------------

# ID generuje CLI / skript

# Unikátne UUID – generuje skript
guid: "b98bd6af-073c-4dd9-bf7c-782443c98600"


# 🧭 CONTEXT ---------------------------------------------------------

# DAO / doména (knife, sdlc, q12, 7ds...) dopĺňa skript
dao: "sthdf"

# Názov zápisu – dopĺňa používateľ
title: "Knowledge Contribution – Vodotesný bajonetový spoj z 3D tlače"

# Krátky popis – dopĺňa používateľ (voliteľné)
description: "Prenositeľné poznatky z KNIFE K863001 a K863003 – bajonetový zámok, tesnenie O-krúžkom, vodotesnosť steny, testovacia sada a parametrický návrh pre 3D tlačené diely."


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
  - knife
  - 3d-tlac
  - bajonet
  - o-kruzok
  - vodotesnost
  - fablab


# 🌍 LOCALIZATION -----------------------------------------------------

# Jazyk dokumentu – doplní skript podľa štruktúry
locale: "sk"


# 🕒 LIFECYCLE --------------------------------------------------------

# Dátum vytvorenia – generuje skript
created: "2026-10-20 15:28"

# Dátum poslednej úpravy – dopĺňa človek
modified: "2026-11-23 17:30"

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

# 📚 Knowledge Contribution – Vodotesný bajonetový spoj z 3D tlače

Knowledge contribution tvoria dva KNIFE:

| KNIFE | Obsah |
| ----- | ----- |
| 🏺 [K863001 – Teleskopická váza](../../../../knifes/K863001-projekt/index.md) | bajonetový zámok, tesnenie O-krúžkom, iterácie návrhu, testovacia sada |
| 💧 [K863003 – Vodotesnosť 3D tlače](../../../../knifes/K863003-vodotesnost-3d-tlace/index.md) | ako utesniť samotnú stenu výtlačku |

Táto stránka z nich vyberá **poznatky, ktoré sa dajú použiť aj mimo
vázy** – v každom 3D tlačenom diele, ktorý sa skladá z viacerých častí
a má držať vodu (nádoba, kvetináč, kryt, dóza, puzdro).

## 🔖 Názov a stručný popis

- **Téma:** ako navrhnúť rozoberateľný a vodotesný spoj dvoch 3D
  tlačených dielov – bajonetový zámok + O-krúžok + vodotesná stena.
- **Prečo je dôležitá:** vodu treba udržať na dvoch miestach naraz –
  **v spoji** aj **v stene**. Riešenie jedného často ovplyvní druhé
  (drážka bajonetu môže prerušiť tesnenie, náter môže zmeniť vôľu).

## 🔒 1. Bajonetový zámok

Bajonet spojí dva diely pootočením – rýchlo, bez skrutiek a opakovane.

| Prvok        | Riešenie                                              |
| ------------ | ----------------------------------------------------- |
| Kolíky       | 3 kolíky po 120° – diel sa nevychýli do strany        |
| Drážka       | tvar **L** – zasunúť dole, pootočiť o **30°**         |
| Poistka      | na konci drážky kolík padne o **1 mm** nižšie, takže sa zámok sám neodkrúti |
| Umiestnenie  | drážky v **samostatnom krúžku** so závitom, nie v stene dielu |

**Kľúčový poznatok:** drážka vyrezaná priamo v stene by prerušila plochu,
o ktorú tesní O-krúžok – voda by vytiekla drážkou. Preto sú drážky
v samostatnom krúžku, ktorý sa do dielu zaskrutkuje. Krúžok zároveň
umožňuje diely rozobrať a vymeniť tesnenie.

Ďalšie poznatky:

- Krúžok **zarovno s dielom** (nie obopínajúci zvonka) vyzerá lepšie
  a umožní diely zasunúť úplne do seba.
- **Drážky otvorené smerom od tesnenia** – tesniaca plocha zostane
  súvislá po celom obvode.
- **Zrazená hrana pod závitom** – O-krúžok sa pri montáži nezachytí.

## ⭕ 2. Tesnenie O-krúžkom

| Parameter              | Hodnota / pravidlo                                   |
| ---------------------- | ---------------------------------------------------- |
| Materiál               | NBR, tvrdosť 70 Shore A                              |
| Prierez                | **3 mm** – lepšie znáša nepresnosti 3D tlače ako 2 mm |
| Stlačenie              | cca 20 %                                             |
| Hĺbka drážky           | cca 75–80 % prierezu                                 |
| Natiahnutie na priemer | cca 2–3 %                                            |
| Tesnenie               | **radiálne** o hladkú valcovú plochu                 |

**Kľúčový poznatok:** najprv kúpiť O-krúžky, až potom kresliť drážky.
Drážka sa navrhuje k reálnemu krúžku, nie naopak. Štandardné metrické
rozmery (napr. 78×3, 90×3) sú bežne dostupné.

Ak presný rozmer nie je k dispozícii:

- **zmenšiť väčší krúžok** – prestrihnúť, skrátiť na dĺžku
  π × (vnútorný priemer + prierez) a zlepiť vteřinovým lepidlom (napr.
  Loctite O-ring splicing kit),
- **vytlačiť krúžok z TPU** – alternatíva priamo vo FabLabe.

## 💧 3. Vodotesná stena

FDM výtlačok sám od seba vodotesný nie je – medzi vrstvami a perimetrami
zostávajú póry. Tri úrovne riešenia (detail v
[K863003](../../../../knifes/K863003-vodotesnost-3d-tlace/index.md)):

| Úroveň     | Riešenie                                                         |
| ---------- | ---------------------------------------------------------------- |
| Pri tlači  | PETG, 4–6 perimetrov, vyššia teplota, mierne vyšší flow          |
| Po tlači   | impregnácia **dichtol AM Hydro** (póry < 0,2 mm, na vodnej báze) |
| V návrhu   | **dvojstenná stena** – presak cez jednu stenu zastaví druhá      |

**Pozor na súvislosť so spojom:** akýkoľvek náter alebo impregnácia môže
zmeniť rozmer tesniacej plochy pre O-krúžok. Treba to overiť na
testovacej sade.

## 🧪 4. Testovacia sada

Namiesto tlače celého výrobku sa vytlačí **iba krátky kus spoja** –
spodný diel s dnom, krúžok, horný diel a jeden O-krúžok.

- spotrebuje sa približne **desatina materiálu** celého výrobku,
- overí sa tesnosť (naplniť vodou, nechať pár hodín na papierovej
  utierke), chod bajonetu aj vôľa,
- vôľa medzi dielmi (napr. **0,3 mm**) závisí od tlačiarne – doladí sa
  podľa testu.

## 📐 5. Parametrický návrh

Model v OpenSCAD má všetky rozmery ako premenné:

- zmena výšky výrobku = úprava **dvoch čísel** a nový export,
- model si **sám kontroluje limity** (napr. maximálny vnútorný priemer)
  a pri prekročení vypíše chybu,
- dekorácia sa vymení parametrom (vlastný motív aj zo súboru SVG).

Vďaka tomu sa návrh dá rýchlo prispôsobiť novým požiadavkám bez
kreslenia od začiatku.

## 💡 Najdôležitejšie zhrnutie

1. **Spoj a stena sú jeden systém** – drážky, tesnenie, náter aj vôľa sa
   navzájom ovplyvňujú.
2. **Drážky bajonetu nikdy cez tesniacu plochu** – dať ich do
   samostatného krúžku.
3. **Najprv O-krúžok, potom drážka.**
4. **Najprv testovacia sada, potom celý výrobok.**
5. **Rozoberateľnosť je výhoda** – tesnenie sa dá vymeniť, výrobok
   opraviť a umyť.

## 🗂️ Taxonómia KNIFE

- **ID:** K863001, K863003
- **Kategória:** fablab
- **Typ:** case-study
- **Tagy:** knife, 3d-tlac, bajonet, o-kruzok, vodotesnost, cad, fablab

## 🌍 Referencie

- [K863001 – Teleskopická váza](../../../../knifes/K863001-projekt/index.md) – návrh, iterácie, O-krúžky, súbory STL a SCAD
- [K863003 – Vodotesnosť 3D tlače](../../../../knifes/K863003-vodotesnost-3d-tlace/index.md) – utesnenie steny
- 3D Printer Academy: [Are 3D prints water tight?](https://www.youtube.com/watch?v=J_dwsXqRONA) (YouTube)
- DIAMANT Polymer GmbH: [Make 3D Prints WATERPROOF in 5 MINUTES](https://www.youtube.com/watch?v=eckya5VxU40) (YouTube)
- DIAMANT Polymer GmbH: [dichtol AM Hydro – produktová stránka](https://diamant-polymer.de/en/shop/dichtol/am-hydro/)

## Navigácia
- [↩️ Späť](../index.md)
