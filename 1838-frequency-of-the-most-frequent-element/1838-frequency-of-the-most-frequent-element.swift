class Solution {
    func maxFrequency(_ nums: [Int], _ k: Int) -> Int {
        let nums = nums.sorted()
        let n = nums.count
        
        var result = 1
        var leftIndex = 0
        var k = k
        
        for rightIndex in 0..<n {
            // k는 동작 가능 횟수이기도 하지만, 현재 주어진 값에 더해진 수로도 볼 수 있다.
            // 일종의 sum 카운터라고도 볼 수 있는 거다.
            k += nums[rightIndex]
            
            // 지금 값에 대한 최대의 frequency보다 sum 카운터가 작다면, 작은 수부터 빼 준다.
            // 영구적으로 바뀌어도 유효한 게, 다음 인덱스에서 같은 현상이 발생한다면 어차피 조건을 만족시키지 못할 수다.
            // 그리고 진짜 sum이 아니라 k와 현재 수를 사용하는 이유는, 결국 frequency의 조건을 만족시키려면 이게 돼야 하기 때문.
            while k < nums[rightIndex] * (rightIndex - leftIndex + 1) {
                k -= nums[leftIndex]
                leftIndex += 1
            }
            
            // 이제 만족할 때까지 길이를 구했으니, 길이를 업데이트한다.
            result = max(result, rightIndex - leftIndex + 1)
        }
        
        return result
    }
}