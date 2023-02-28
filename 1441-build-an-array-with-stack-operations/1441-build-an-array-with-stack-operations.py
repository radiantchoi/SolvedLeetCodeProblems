class Solution:
    def buildArray(self, target: List[int], n: int) -> List[str]:
        result = []
        stack = []
        verified = 0
        
        for i in range(1, n+1):
            stack.append(i)
            result.append("Push")
            
            if len(stack) <= len(target) and stack[verified] == target[verified]:
                verified += 1
                if verified == len(target):
                    break
            else:
                stack.pop()
                result.append("Pop")
        
        return result