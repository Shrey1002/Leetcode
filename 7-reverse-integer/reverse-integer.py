class Solution(object):
    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """
        # print(x.bit_length())
        # if x >= (2**31)
        # print(x.bit_length())
        x = str(x)
        if x[0] == '-':
            x = x[1:]
            x = x[::-1]
            x = int(x)
            if x >= -(2**31) and x < (2**31):
                return x*-1
            else:
                return 0
        else:
            x = x[::-1]
            x = int(x)
            if x >= -(2**31) and x < (2**31):
                return x
            else:
                return 0


        # print(ans)
        # return int(a)
        