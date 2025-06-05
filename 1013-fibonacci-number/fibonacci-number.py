class Solution:
    def fib(self, n: int) -> int:
        sum = 0
        def test(n):
            if n == 0:
                return 0
            if n == 1:
                return 1
            return test(n-1) + test(n-2)
        return test(n)