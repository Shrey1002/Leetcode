class Solution(object):
    sum = 0
    def fib(self, n):
        if n==1:
            return 1
        elif n==0:
            return 0
        else:
            return self.fib(n-1) + self.fib(n-2)
        