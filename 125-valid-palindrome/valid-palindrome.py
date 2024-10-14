class Solution(object):
    def isPalindrome(self, s):
        sh = ""
        for i in s:
            if i.isalnum():
                sh = sh + i

        print(sh.lower())
        sh = sh.lower()
        print(sh[::-1])
        if sh[::-1] == sh:
            return True
        else:
            return False
        