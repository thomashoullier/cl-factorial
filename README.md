# cl-factorial
Tools for computing factorials. Nothing fancy.

## Usage

### Exact: iter
Usual, simple, factorial computation using iterative multiplication.
This will go into `bignum` territory.

```common-lisp
(cl-factorial:iter n)
;; => n!
```

No memoization.

### Double-float: stirling
The first term of the Stirling expansion.

```common-lisp
(cl-factorial:stirling n)
;; => (* (sqrt (* 2 pi n)) (expt (/ n e) n))
```

## Notes on fixed length arithmetics
In IEEE double-precision [2]:
* Factorials up to 22! included can be represented exactly.
* 171! overflows.

## Dependencies
* `cl-factorial`: None.
* `cl-factorial/test`:
  * [rove](https://github.com/fukamachi/rove)

## Test
Launch tests with:

```common-lisp
(asdf:test-system "cl-factorial")
```

## References
1. https://en.wikipedia.org/wiki/Stirling%27s_approximation
2. Numerical recipes 3rd edition
