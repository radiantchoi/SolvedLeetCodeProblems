class Solution:
    def checkRecord(self, s: str) -> bool:
        absent = 0
        lates = 0
        
        for attendance in s:
            if attendance == "A":
                lates = 0
                absent += 1
                if absent >= 2:
                    return False
            elif attendance == "L":
                lates += 1
                if lates >= 3:
                    return False
            elif attendance == "P":
                lates = 0
        
        return True