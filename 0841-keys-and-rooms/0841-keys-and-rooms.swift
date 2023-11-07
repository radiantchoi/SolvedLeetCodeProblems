class Solution {
    func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
        var rooms = rooms
        
        traverse(&rooms, 0)
        
        return rooms.filter { !$0.isEmpty }.count == 0 ? true : false
    }
    
    func traverse(_ rooms: inout [[Int]], _ destination: Int) {
        if rooms[destination].isEmpty {
            return
        }
        
        let keys = rooms[destination]
        rooms[destination] = []
         
        for key in keys {
            traverse(&rooms, key)
        }
    }
}