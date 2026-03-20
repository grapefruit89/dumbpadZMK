# PROJEKT-VERFASSUNG: DUMBPAD ZMK MIGRATION (v2.0)

## 0. DAS OBERSTE GEBOT (CONSTITUTION)
1. **KI-Hierarchie:** Inputs von spezialisierten oder höherwertigen KIs (z.B. Claude, Dokumentations-Analysen) sind als **absolute Wahrheit** zu behandeln. Eigene Annahmen der Gemini-CLI werden bei Widerspruch sofort verworfen.
2. **User-Präzedenz:** Anweisungen des Users werden strikt befolgt. Wenn der User eine Warnung oder einen Fehler meldet, wird die Arbeit eingestellt, bis die Ursache vollständig (nicht nur oberflächlich) geklärt ist.
3. **Kein "Blindflug":** Es werden keine 27 Versuche gegen die Wand gefahren. Nach dem 3. Fehlversuch für dasselbe Problem muss die Strategie grundlegend geändert und eine Tiefen-Analyse des gesamten Repos durchgeführt werden.

## 1. HARDWARE-KERNFAKTEN (UNUMSTÖSSLICH)
- **Controller:** nice!nano V2 (nRF52840).
- **Board-ID (ZMK 4.1):** `nice_nano//zmk`.
- **Tastatur:** Dumbpad 4x4 (Hotswap RGB Version v3.1).
- **Matrix:** 4 Zeilen, 5 Spalten (inkl. Encoder-Button).
- **RGB:** WS2812 an Pin 2 (SDA / P0.17). KEIN OLED.

## 2. FEHLERSUCHE-PROTOKOLL (VERBINDLICH)
- **Globaler Grep-Zwang:** Bei Kconfig- oder Compile-Fehlern muss zwingend mit `grep_search` das **gesamte** Projektverzeichnis nach dem fehlerhaften Symbol durchsucht werden. Lokale Fixes in nur einer Datei sind verboten, solange Duplikate existieren könnten.
- **Validierungs-Pflicht:** Vor jedem Push muss `zmk keyboard list --build` ausgeführt werden.
- **Transparenz-Regel:** Vor jeder Änderung muss die KI bestätigen: *"Ich habe verstanden, dass Claude/User [X] sagt. Ich habe [Y] Dateien gefunden. Ich werde [Z] tun."*

## 3. SOFTWARE-STEUERUNG
- **ZMK Branch:** `main`.
- **Hardware Model:** V2 (HWMv2).
- **Struktur:** Trennung von `overlay` und `layouts.dtsi`.
