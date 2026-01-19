function rob(nums: number[]): number {
    if (nums.length == 1) {
        return nums[0];
    };

    nums[1] = Math.max(nums[0], nums[1])

    if (nums.length > 2) {
        for (let i = 2; i < nums.length; i++) {
            nums[i] = Math.max((nums[i] + nums[i - 2]), nums[i - 1]);
        };
    };

    return nums[nums.length - 1];
};