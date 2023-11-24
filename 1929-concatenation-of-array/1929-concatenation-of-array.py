class Solution(object):
    def getConcatenation(self, nums):
        ans = []
        for num in nums:
            ans.append(num)
        x = ans + nums
        return x