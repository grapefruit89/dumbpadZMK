# PROJEKT-VERFASSUNG: DUMBPAD ZMK MIGRATION

## 1. HARDWARE-KERNFAKTEN (UNUMSTÖSSLICH)
- **Controller:** nice!nano V2 (nRF52840).
- **Board-ID (ZMK 4.1):** `nice_nano//zmk` (Alias für Revision 2.0.0).
- **Tastatur:** Dumbpad 4x4 (Hotswap RGB Version).
- **Features:** 4x4 Matrix, 1 Rotary Encoder, WS2812 RGB Underglow/Per-Key.
- **VERBOTEN:** Kein OLED! (Hardware-Konflikt mit Pins).

## 2. PIN-MAPPING (VERIFIZIERT FÜR RGB VERSION)
- **Spalten (5):** Pro Micro Pins 5, 6, 7, 8, 9.
- **Zeilen (4):** Pro Micro Pins 21 (A3), 20 (A2), 19 (A1), 18 (A0).
- **RGB (WS2812):** Pin 2 (SDA / P0.17).
- **Encoder:** Pin 16 (MOSI / P0.10) und Pin 4 (P0.08).

## 3. SOFTWARE-KONTEXT
- **ZMK Version:** Branch `main` (Unterstützt Zephyr 4.1 / Hardware Model V2).
- **Build-System:** GitHub Actions (Remote).
- **OS:** Windows 11 (Laufwerk D: für UF2).

## 4. MANDATE FÜR DIE KI
1. **Keine Vermutungen:** Wenn ein Pin oder Feature unklar ist, erst in QMK/ZMK-Primärquellen suchen oder den User fragen.
2. **Keine OLED-Module:** Ignoriere alle PRs oder Tutorials, die OLEDs für das Dumbpad beschreiben.
3. **HWMv2 Struktur:** Halte dich strikt an die Trennung von `overlay` und `layouts.dtsi`.
