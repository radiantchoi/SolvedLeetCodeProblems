function isValid(s: string): boolean {
    let stack: string[] = [];

    for (const letter of s) {
        if (stack.length > 0) {
            const top = stack[stack.length - 1];

            if (top === "(" && letter === ")") {
                stack.pop();
            } else if (top === "{" && letter === "}") {
                stack.pop();
            } else if (top === "[" && letter === "]") {
                stack.pop();
            } else {
                stack.push(letter);
            }
        } else {
            stack.push(letter);
        }
    }

    return stack.length === 0;
};