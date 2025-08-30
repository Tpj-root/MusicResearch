#!/bin/bash
# Carnatic basic 7 notes (Sa–Ri2–Ga3–Ma1–Pa–Da2–Ni3–Sa)
# Frequencies approximate (equal temperament mapping with Sa=C4)

NOTES=(
  261.63  # Sa (C4)
  293.66  # Ri2 (D4)
  329.63  # Ga3 (E4)
  349.23  # Ma1 (F4)
  392.00  # Pa (G4)
  440.00  # Da2 (A4)
  493.88  # Ni3 (B4)
  523.25  # Sa (C5, next octave)
)

NAMES=("Sa" "Ri" "Ga" "Ma" "Pa" "Da" "Ni" "Sa")

for i in "${!NOTES[@]}"; do
  echo "Playing ${NAMES[$i]} -> ${NOTES[$i]} Hz"
  play -n synth 0.5 sine "${NOTES[$i]}"
done
