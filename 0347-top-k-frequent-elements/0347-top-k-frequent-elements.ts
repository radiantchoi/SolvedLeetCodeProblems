function topKFrequent(nums: number[], k: number): number[] {
    let occurences = new Map<number, number>();

    for (let i = 0; i < nums.length; i++) {
        const current = nums[i];
        const occurence = occurences.get(current) || 0;

        occurences.set(current, occurence + 1); 
    }

    const result = Array.from(occurences.entries()).sort((a, b) => {
        return b[1] - a[1];
    });

    return result.slice(0, k).map(pair => pair[0]);
};