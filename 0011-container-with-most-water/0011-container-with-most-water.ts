function maxArea(height: number[]): number {
    let result = 0;
    let left = 0;
    let right = height.length - 1;

    while (left < right) {
        const leftPillar = height[left];
        const rightPillar = height[right];
        const area = (right - left) * Math.min(leftPillar, rightPillar);

        result = Math.max(result, area);

        if (leftPillar > rightPillar) {
            right--;
        } else {
            left++;
        }
    }

    return result;
};