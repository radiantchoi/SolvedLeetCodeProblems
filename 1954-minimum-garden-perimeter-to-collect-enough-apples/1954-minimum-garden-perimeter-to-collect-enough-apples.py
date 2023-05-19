class Solution:
    def minimumPerimeter(self, neededApples: int) -> int:
        numbers = [0]
        
        x = 1
        while numbers[-1] < (10 ** 15) + 1:
            numbers.append((x ** 2) * 12 + numbers[x-1])
            x += 1
        
        left = 1
        right = len(numbers) - 1
        
        while left <= right:
            mid = (left + right) // 2
            target = numbers[mid]
            
            if target < neededApples:
                left = mid + 1
            elif target > neededApples:
                if numbers[mid-1] < neededApples:
                    return mid * 8
                else:
                    right = mid - 1
            else:
                return mid * 8
        
        return 0
        