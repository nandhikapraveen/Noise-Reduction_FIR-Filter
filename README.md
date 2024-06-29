# FIR Filter Noise Reduction Using MATLAB

## Problem Statement

Design an FIR filter to reduce noise in a given signal using MATLAB.

## FIR Filters Overview

### Advantages
- *Stability*: FIR filters are inherently stable.
- *Design Flexibility*: They can be designed for various responses such as low-pass, high-pass, band-pass, and band-stop filters.
- *Linear Phase Response*: This property is crucial for applications like audio and image processing.
- *Ease of Implementation*: FIR filters are simpler to implement, requiring only a sequence of multiplications.

### Disadvantages
- *Latency*: FIR filters introduce a fixed delay, problematic in real-time processing.
- *Memory Requirements*: They typically require more memory for longer filter lengths compared to IIR filters.

## Implementation Details

*Tools Used*: MATLAB

### Algorithm
1. User inputs parameters like sampling frequency and signal amplitude.
2. Generate a noisy signal and design an FIR filter using the Hamming window method.
3. Apply the filter to the noisy signal and plot both the original and filtered signals.

## Results

FIR filtering effectively reduces noise, demonstrating the filter's capabilities in enhancing signal clarity.

## Execution and Testing

Tests conducted with various noise levels confirmed the robustness of our FIR filter design:

- *Test 1*: High noise level.
- *Test 2*: Moderate noise level.
- *Test 3*: Low noise level.

## Applications

FIR filters are used extensively in areas such as wireless communications, video, and audio processing due to their stability and linear phase properties.

## Conclusion

This project demonstrates the practical application of FIR filter design in MATLAB to reduce noise, highlighting the importance of digital signal processing in real-world scenarios.

## Acknowledgements

Thanks to the DSP course staff at PES University for their guidance and support throughout this project.
