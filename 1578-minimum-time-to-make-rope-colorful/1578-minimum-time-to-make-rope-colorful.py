class Solution:
    def minCost(self, colors: str, neededTime: List[int]) -> int:
        result = 0
        index = 0
        current = []
        
        while index < len(neededTime):
            if len(current) != 0 and colors[index] != current[-1][1]:
                current = sorted(current, key=lambda x: -x[0])
                while len(current) > 1:
                    item = current.pop()
                    result += item[0]
                
                current = []
            
            current.append((neededTime[index], colors[index]))
            index += 1
        
        current = sorted(current, key=lambda x: -x[0])
        while len(current) > 1:
            item = current.pop()
            result += item[0]
        
        return result