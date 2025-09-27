class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        a = 0
        for i in nums:
            # print(i)
            if i == 0:
                nums.remove(i)
                # a = a+1
                nums.append(0)
                # print(a)
            # else:
            #     continue
        # for i in range(0,a):
        #     nums.append(0)
        # # nums.append(a)
        # print(a)
        # print(nums)