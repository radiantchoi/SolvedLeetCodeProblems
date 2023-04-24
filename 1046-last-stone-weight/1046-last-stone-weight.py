class Solution:
    def lastStoneWeight(self, stones: List[int]) -> int:
        if len(stones) < 1:
            return 0
        elif len(stones) < 2:
            return stones[0]
        
        weights = stones.sort()
        biggest = stones[-1]
        vice = stones[-2]
        
        first = -1
        second = -1
        
        for i in range(len(stones)):
            if first < 0 and stones[i] == biggest:
                first = i
                break
        
        for j in range(len(stones)):
            if second < 0 and j != first and stones[j] == vice:
                second = j
                break
        
        stones[first] = biggest - vice
        stones[second] = 0
        
        return self.lastStoneWeight(list(filter(lambda x: x > 0, stones)))