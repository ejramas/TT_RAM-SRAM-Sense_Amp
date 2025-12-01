![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

# TT-RAM Sense Amplifier

- [Read the documentation for project](docs/info.md)

## Overview

This project is a sense amplifier design for the University of Waterloo's ECE298A Tiny-Tapout RAM group.

A sense amplifier is a specialized circuit in RAM that amplifies very small voltage differences on paired bitlines. During a read operation, memory cells apply a small differential voltage between the bitlines, which this circuit will convert into logic-level output that digital circuitry can reliably interpret. 

This specific design is a differential amplifier implemented using paired CMOS inverters and a A common-mode correction feedback network.

## Schematic
