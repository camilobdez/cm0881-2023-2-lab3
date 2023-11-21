# cm0881-2023-2-lab3
- Juan Camilo Bermúdez Colorado
- Windows 11 Home, version	22H2
- The Glorious Glasgow Haskell Compilation System, version 9.6.2
- The Coq Proof Assistant, version 8.17.1
  

## Coq formalisation

In the Coq script `factorial-verification.v`, I formalized the factorial function and proved its correctness using the Coq Proof Assistant. The key elements include:

- **Formal Specification (`factorial_spec`):**
  - Defines an inductive relation capturing the expected properties of the factorial function for natural numbers.

- **Factorial Function (`factorial`):**
  - Implementation of the factorial function.

- **Correctness Proof (`factorial_correct`):**
  - Proof of the correctness of the factorial function using inductive reasoning.

## Haskell Extraction

The Coq proof was then used to automatically generate Haskell code for the factorial function. The extracted Haskell code (`Factorial.hs`) includes definitions for the `Nat` type, as well as functions for addition (`add`), multiplication (`mul`), and the `factorial` function.

A Haskell main program (`Main.hs`) was created to test the extracted factorial function. The main program includes helper functions for converting between integers and the Nat type, and it tests the factorial function with a range of values.

## Running the formalisation

You must run the Coq script `factorial-verification.v` in the CoqIDE. After completing the proof, the file  `Factorial.hs` will be created by extraction. You must use `Main.hs` to test the extracted factorial function.

Compile the Haskell main program:
```
ghc -o Main Main.hs
```
And run it to see the results:
```
./Main
```
