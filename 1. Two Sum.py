class Solution:
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        dict = {}
        for i in range(len(nums)):
            j = nums[i]
            if target-j in dict:
                return (dict[target-j],i)
            dict[j] = i
