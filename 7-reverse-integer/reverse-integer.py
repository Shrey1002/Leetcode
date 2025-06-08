class Solution(object):
    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """
        # print(x.bit_length())
        # if x >= (2**31)
        # print(x.bit_length())
        # x = str(x)
        # if x[0] == '-':
        #     x = x[1:]
        #     x = x[::-1]
        #     x = int(x)
        #     if x >= -(2**31) and x < (2**31):
        #         return x*-1
        #     else:
        #         return 0
        # else:
        #     x = x[::-1]
        #     x = int(x)
        #     if x >= -(2**31) and x < (2**31):
        #         return x
        #     else:
        #         return 0
        min_int = (2**31)*-1
        max_int = (2**31) -1
        negative = x<0
        x = abs(x)
        reverse_num = 0

        while(x>0):
            num = x % 10
            x = x//10
            reverse_num = (reverse_num*10) + num
        # return reverse_num*-1
        if reverse_num < min_int or reverse_num > max_int:
            return 0
        elif negative:
            return reverse_num*-1
        else:
            return reverse_num



        # print(ans)
        # return int(a)
        