# SQL Note
Note for SQL practice

## LeetCode SQL
[LeetCode SQL Problems](https://github.com/kamyu104/LeetCode-Solutions#sql)

|  #  | Title           |  Solution       | Difficulty    |
|-----|---------------- | --------------- | --------------- |
0175 | [Combine Two Tables](https://leetcode.com/problems/combine-two-tables/) | [MySQL](./LeetCode/combine-two-tables.sql) | Easy         |
0176 | [Second Highest Salary](https://leetcode.com/problems/second-highest-salary/) | [MySQL](./LeetCode/second-highest-salary.sql) | Easy         |
0177 | [Nth Highest Salary](https://leetcode.com/problems/nth-highest-salary/) | [Set Method](./LeetCode/nth-highest-salary-1.sql)/ [Window Function](./LeetCode/nth-highest-salary-2.sql)| Medium        |
0178 | [Rank Scores](https://leetcode.com/problems/rank-scores/) | [MySQL](./LeetCode/rank-scores.sql) | Medium         |
0180 | [Consecutive Numbers](https://leetcode.com/problems/consecutive-numbers/) | [MySQL](./LeetCode/consecutive-numbers.sql) | Medium         |

### Notes
1. Thinking about when should use 'DISTICT' in SELECT satement
2. `SELECT () AS ...` Should be used one more time outsied the main SELECT when 'null' is needed to output
3. Set Method
4. Window Fuction - [link](https://mode.com/sql-tutorial/sql-window-functions/)
    
    `SUM(...)/COUNT(...)/AVG(...)/ROW_NUMBER()/RANK()/DENSE_RANK()/NTILE(n)/LAG(... , n)/LEAD(... , n)
    OVER (PARTITION BY ... ORDER BY ...)`
    
- RANK() would give the identical rows a rank of 2, then skip ranks 3 and 4, so the next result would be 5
- DENSE_RANK() would still give all the identical rows a rank of 2, but the following row would be 3—no ranks would be skipped.
- NTILE(*# of buckets*) : NTILE(4) quartile, NTILE(100) percentile
- LAG/LEAD(): LAG or LEAD to create columns that pull values from other rows—all you need to do is enter which column to pull from and how many rows away you'd like to do the pull. LAG pulls from previous rows and LEAD pulls from following rows