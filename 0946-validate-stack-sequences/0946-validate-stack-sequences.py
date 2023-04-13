class Solution:
    def validateStackSequences(self, pushed: List[int], popped: List[int]) -> bool:
        stack = []
        popped = list(reversed(popped))
        
        for number in pushed:
            stack.append(number)
            
            while len(stack) > 0 and len(popped) > 0 and stack[-1] == popped[-1]:
                stack.pop()
                popped.pop()
            
            if len(popped) == 0 and len(stack) == 0:
                return True
        
        return False