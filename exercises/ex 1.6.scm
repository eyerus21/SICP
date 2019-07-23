Since new-if is a function, and not a special form, each parameters subexpressions will be evaluated before the procedure is applied. It means that when evaluating:

      guess
      (sqrt-iter (improve guess x) x))
the predicate and the two alternatives will always be evaluated, whatever if (good-enough? guess x) is evaluated to. Since the second alternative is calling the function itself recursively, the function will be stuck in an infinite loop.