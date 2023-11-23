# cm0881-2023-2-lab3
- Juan Camilo Bermúdez Colorado
- Windows 11 Home, version	22H2
- The Glorious Glasgow Haskell Compilation System, version 9.6.2
- The Coq Proof Assistant, version 8.17.1
  

## Coq formalisation

In the Coq script `factorial-verification.v`, I formalized the factorial function and proved its correctness using the Coq Proof Assistant. The key elements include:

- **Formal Specification (`factorial_spec`):**
  - Defined an inductive relation capturing the expected properties of the factorial function for natural numbers.
  - `factorial_spec_base`: The factorial of 0 is 1.
  - `factorial_spec_step`: If the factorial of `n` is `res`, then the factorial of `n + 1` is `(n + 1) * res`.

- **Factorial Function (`factorial`):**
  - Implementation of the factorial function.
  - `Fixpoint` allows us to define recursive functions, which is a natural choice for the factorial function that inherently involves recursion.
  - **Pattern Matching:** The `match` construct within the `Fixpoint` definition enables pattern matching on the input, simplifying the definition for different cases.

- **Correctness Proof (`factorial_correct`):**
  - The correctness proof employs mathematical induction to demonstrate that the function adheres to its formal specification.
  - The proof starts by establishing the base case, demonstrating that the factorial of 0 is 1, as specified in `factorial_spec`.
  - Subsequently, it uses induction to assume that if the function is correct for some natural number `n`, it will also be correct for `n + 1`.
  - This recursive reasoning, guided by the inductive hypothesis, ensures that the `factorial` function satisfies the expected properties defined in the specification for all possible natural numbers, providing rigorous validation of the implementation's correctness.

## Haskell extraction

After completing the proof, the Haskell code for the factorial function is generated. The extracted Haskell code (`Factorial.hs`) includes definitions for the `Nat` type and relevant functions.

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
## References
- [Bauer, Andrej (2011). How to use CoqIDE.](https://www.youtube.com/watch?v=7sk8hPWAMSw)
- [Bauer, Andrej (2011). A first proof with Coq.](https://www.youtube.com/watch?v=z861PoZPGqk)
- [Bauer, Andrej (2011). Induction and recursion.](https://www.youtube.com/watch?v=fbt0TcLzrNg&list=PLDD40A96C2ED54E99&index=9)
- [Coq web page. A short introduction to Coq.](https://coq.inria.fr/a-short-introduction-to-coq)
- [Coq web page. Induction.](https://coq.inria.fr/tutorial/2-induction)
- [Coq web page. Extraction.](https://coq.inria.fr/refman/addendum/extraction.html)
