Require Extraction.

Inductive factorial_spec : nat -> nat -> Prop :=
| factorial_spec_base : factorial_spec 0 1
| factorial_spec_step : forall n res,
    factorial_spec n res ->
    factorial_spec (S n) (S n * res).

Fixpoint factorial (n : nat) : nat :=
  match n with
  | 0 => 1
  | S n' => n * factorial n'
  end.

Lemma factorial_correct : forall n,
  factorial_spec n (factorial n).
Proof.
  intros n.
  induction n as [|n' IHn'].
  - simpl. constructor.
  - simpl. constructor. apply IHn'.
Qed.

(* Extraction commands for Haskell *)
Extraction Language Haskell.
Extraction "Factorial.hs" factorial.
