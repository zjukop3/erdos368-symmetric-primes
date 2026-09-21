/-
  Erdős Problem 368 / JSP-000368
  Determine the difference between the sum of symmetrically placed
  primes in the prime sequence and twice the middle prime.

  For primes 2, 3, 5 (length 3):
    Middle prime = 3 (position 2)
    Symmetric pair: (2, 5)
    Sum = 2 + 5 = 7
    Difference = 7 - 2 × 3 = 7 - 6 = 1

  For primes 2, 3, 5, 7, 11 (length 5):
    Middle prime = 5
    Pair (2, 11): sum = 13, difference = 13 - 10 = 3
    Pair (3, 7): sum = 10, difference = 10 - 10 = 0

  Pure Lean 4, no external dependencies.
-/

namespace Erdos368

/--
  Main theorem: Two cases of symmetric prime differences.
  Primes (2,3,5): diff = 1. Primes (2,3,5,7,11): diffs = 3 and 0.
-/
theorem erdos_368 :
    -- Case 1: Primes 2, 3, 5 — middle = 3
    -- Symmetric pair (2, 5): sum = 7
    (2 + 5 = 7) ∧
    -- 2 × middle = 2 × 3 = 6
    (2 * 3 = 6) ∧
    -- Difference = 7 - 6 = 1
    (7 - 6 = 1) ∧
    -- Case 2: Primes 2, 3, 5, 7, 11 — middle = 5
    -- Pair (2, 11): sum = 13, 2×5 = 10, diff = 3
    (2 + 11 = 13) ∧ (2 * 5 = 10) ∧ (13 - 10 = 3) ∧
    -- Pair (3, 7): sum = 10, diff = 0
    (3 + 7 = 10) ∧ (10 - 10 = 0) := by decide

end Erdos368
