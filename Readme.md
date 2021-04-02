# pf-ugen

Purely functional formalization of Unit Generator for sound programming.

## Goal

- Simple Notation of connection between UGens with referencial transparancy.
- Different from Faust and Kronos, it aims to be more strictly pure-functional formalization neither with block algebra nor meta-construction of audio graph, but with a lambda calculus
- Its final goal is to be able to describe Upsampling/Downsampling/Multirate Processing/Delay/Table Lookup without using any special primitives in addition to describing stateful function.
- Considered to be used as an intermediate representation for sound programming language.

## Roadmap

- [ ] Implement Prototype with haskell
 - [x] express recursion
 - [x] describe sequencial connection
 - [x] UGen runner which takes input data stream as list
 - [ ] split/merge data flow
 - [ ] compose many UGens with high order function
 - [ ] delay/ringbuffer/table lookup
 - [ ] multirate
   - [ ] down/upsample
   - [ ] vector processing like FFT
   - [ ] combination with functional reactive programming
- [ ] Make translater to lower-level expression like LLVM IR
  - [ ] optimization
  - [ ] make interpreter
  - [ ] realtime processing

## References

- E. Brandt, “Temporal type constructors for computer music programming,” School of Computer Science, Carnegie Mellon University, 2002.
- B. R. Gaster, N. Renney, and T. Mitchell, “OUTSIDE THE BLOCK SYNDICATE: TRANSLATING FAUST’S ALGEBRA OF BLOCKS TO THE ARROWS FRAMEWORK,”,Proceedings of the 1st International Faust Conference, 2018.
- R. B. Dannenberg, “UGG: A Unit Generator Generator”, Proceedings of the 2018 International Computer Music Conference, International Computer Music Association, 2018.
- V. Norilo, “[Kronos: A Declarative Metaprogramming Language for Digital Signal Processing](https://doi.org/10.11/COMJ_a_00330),” Computer Music Journal, vol. 39, no. 4, pp. 30–48, 2015, doi: 10.1162/10.11.
- B. T. y Widemann and M. Lepper, “Foundations of Total Functional Data-Flow Programming,” Jun. 2014, doi: 10.4204/eptcs.153.10.
- C. Reach, “[INCREMENTAL FUNCTIONAL REACTIVE PROGRAMMING FOR INTERACTIVE MUSIC SIGNAL PROCESSING](http://dafx13.nuim.ie/papers/49.dafx2013_submission_60.pdf)”, Proc. of the 16th Int. Conference on Digital Audio Effects (DAFx-13), 2013.


## License

Copyright Tomoya Matsuura 2021
https://matsuuratomoya.com

MIT License.