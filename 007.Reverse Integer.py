class Solution:
    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """
        str_x = str(x)
        if str_x[0] != '-':
            str_x = str_x[::-1]
            return(int(str_x) if int(str_x) < 2**31-1 else 0)
        else:
            str_x = str_x[::-1][:-1]
            return(-int(str_x) if int(str_x) < 2**31 else 0)
