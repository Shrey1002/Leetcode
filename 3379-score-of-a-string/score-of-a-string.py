class Solution(object):
    def scoreOfString(self, s):
        """
        :type s: str
        :rtype: int
        """
        l = []
        sum = 0
        for i in range(0,len(s)):
            if i != len(s) -1:
                # sum = sum abs(ord(s[i]) - sum)
                sum = sum + abs(ord(s[i+1]) - ord(s[i]))
                # print(sum)
            # print(s[i+1])
            # l.append(ord(i))
        return sum
        # print(sum)    
        