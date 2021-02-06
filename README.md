# cl-factorial
Tools for computing factorials. Nothing fancy.

## Usage

### iter
Usual, simple, factorial computation using iterative multiplication.

```common-lisp
(cl-factorial:iter n)
;; => n!
```

No memoization.

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
* https://en.wikipedia.org/wiki/Stirling%27s_approximation
