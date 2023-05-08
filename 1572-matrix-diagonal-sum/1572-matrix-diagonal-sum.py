class Solution:
    def diagonalSum(self, mat: List[List[int]]) -> int:
        result = 0
        
        row = 0
        col = 0
        
        while row < len(mat) and col < len(mat):
            result += mat[row][col]
            result += mat[len(mat)-1-row][col]
            
            row += 1
            col += 1
        
        if len(mat) % 2 == 1:
            mid = len(mat) // 2
            result -= mat[mid][mid]
        
        return result
