class Solution:
    def isPalindrome(self, x: int) -> bool:
        # negative = x<0
        if x<0:
            return False
        else:
            dup = x
            reverse_num = 0
            while(x >0):
                num = x %10
                reverse_num = (reverse_num*10) + num
                x = x//10
            if(dup == reverse_num):
                return True
            else:
                return False
